/* eslint-disable no-empty-function */
const bcryptjs = require('bcryptjs');
// para criar a seed admin digite no terminal o comando:
// npx sequelize seed:generate --name criar-usuario-administrador
// depois de configura os dados do usuario admin digite o comando para crialo-lo no banco:
// npx sequelize db:seed:all
/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up(queryInterface) {
    await queryInterface.bulkInsert(
      'users',
      [
        {
          nome: 'admin',
          email: 'admin@gmail.com',
          cpf: '67049311391',
          password_hash: await bcryptjs.hash('123456', 8),
          telefone: '9999999',
          created_at: new Date(),
          updated_at: new Date(),
        },
      ],

      {},
    );
  },

  async down() {

  },
};
