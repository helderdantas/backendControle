#!/bin/sh

echo "Starting get ready!!!"
npx sequelize db:migrate
npx sequelize db:seed:all
yarn start

