/** @type {import('sequelize-cli').Migration} */

const sequelize = require('sequelize');

module.exports = {
  async up(queryInterface, Sequelize) {
    await queryInterface.sequelize.query('CREATE SEQUENCE id_seq_controles start 1 increment 1');

    await queryInterface.createTable('controles', {
      id: {
        type: Sequelize.INTEGER,
        allowNull: false,
        autoIcrement: true,
        primaryKey: true,
        defaultValue: sequelize.Sequelize.literal("nextval('id_seq_controles')"),
      },
      setor: {
        type: Sequelize.STRING,
        allowNull: false,
      },
      subsetor: {
        type: Sequelize.STRING,
        allowNull: false,
      },
      ilha: {
        type: Sequelize.STRING,
        allowNull: false,
      },
      baia: {
        type: Sequelize.STRING,
        allowNull: false,
      },
      cputombo: {
        type: Sequelize.STRING,
        allowNull: false,
      },
      cpunumeroserie: {
        type: Sequelize.STRING,
        allowNull: false,
      },
      monitor1tombo: {
        type: Sequelize.STRING,
        allowNull: false,
      },
      monitor1numeroserie: {
        type: Sequelize.STRING,
        allowNull: false,
      },
      monitor2tombo: {
        type: Sequelize.STRING,
        allowNull: false,
      },
      monitor2numeroserie: {
        type: Sequelize.STRING,
        allowNull: false,
      },
      impressora: {
        type: Sequelize.STRING,
        allowNull: false,
      },
      observacao: {
        type: Sequelize.STRING,
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

  async down(queryInterface) {
    await queryInterface.sequelize.query('DROP SEQUENCE id_seq_controles');
    await queryInterface.dropTable('controles');
  },
};
