/** @type {import('sequelize-cli').Migration} */

module.exports = {
  async up(queryInterface, Sequelize) {
    const transaction = await queryInterface.sequelize.transaction();
    try {
      await queryInterface.addColumn(
        'controles',
        'cpunumeroserie',
        {

          type: Sequelize.STRING,
          allowNull: true,

        },
        { transaction },
      );

      await queryInterface.addColumn(
        'controles',
        'monitor1numeroserie',
        {

          type: Sequelize.STRING,
          allowNull: true,

        },
        { transaction },
      );

      await queryInterface.addColumn(
        'controles',
        'monitor2numeroserie',
        {

          type: Sequelize.STRING,
          allowNull: true,

        },
        { transaction },
      );

      await transaction.commit();
    } catch (err) {
      await transaction.rollback();
      throw err;
    }
  },

  async down(queryInterface) {
    const transaction = await queryInterface.sequelize.transaction();
    try {
      await queryInterface.removeColumn(
        'controle',
        'cpunumeroserie',
        { transaction },
      );
      await queryInterface.removeColumn(
        'controle',
        'monitor1numeroserie',
        { transaction },
      );
      await queryInterface.removeColumn(
        'controle',
        'monitor2numeroserie',
        { transaction },
      );

      await transaction.commit();
    } catch (err) {
      await transaction.rollback();
      throw err;
    }
  },
};
