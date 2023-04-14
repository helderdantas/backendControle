# Define a imagem base
FROM node:18
RUN rm /bin/sh && ln -s /bin/bash /bin/sh

# Cria a pasta de trabalho dentro do contêiner
RUN mkdir /root/backend
WORKDIR /root/backend

# Copia o package.json e o package-lock.json para o contêiner
COPY package*.json /root/backend

# Instala as dependências
RUN npm install

# Copia o resto dos arquivos para o contêiner
COPY . /root/backend/

RUN apt-get -y update && apt-get -y install wget && apt-get -y install git


# Executa as migrações do Sequelize
RUN npx sequelize-cli db:migrate

# Expõe a porta 3030
EXPOSE 3004

# Inicia a aplicação
CMD [ "npm", "start" ]
