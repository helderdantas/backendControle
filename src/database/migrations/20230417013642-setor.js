/** @type {import('sequelize-cli').Migration} */
const sequelize = require('sequelize');

module.exports = {
  async up(queryInterface, Sequelize) {
    await queryInterface.sequelize.query('CREATE SEQUENCE id_seq_setores start 1 increment 1');

    await queryInterface.createTable('setors', {
      id: {
        type: Sequelize.INTEGER,
        allowNull: false,
        autoIcrement: true,
        primaryKey: true,
        defaultValue: sequelize.Sequelize.literal("nextval('id_seq_setores')"), // PARA CRIAR A SEQUENCIA DE ID NO BANCO POSTGRES
      },
      ativo: {
        type: Sequelize.BOOLEAN,
        allowNull: false,
      },
      nome: {
        type: Sequelize.STRING,
        allowNull: false,
      },
      telefone: {
        type: Sequelize.INTEGER,
        allowNull: false,
      },
      created_at: {
        type: Sequelize.DATE,
        allowNull: false,
      },
      updated_at: {
        type: Sequelize.DATE,
        allowNull: false,
      },
    });
  },
  /* eslint max-len: ["error", { "code": 250}] */
  async down(queryInterface) {
    await queryInterface.sequelize.query('DROP SEQUENCE id_seq_setores');
    await queryInterface.dropTable('setors');
  },
};
