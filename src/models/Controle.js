import Sequelize, { Model } from 'sequelize';

export default class Controle extends Model {
  static init(sequelize) {
    super.init({
      setor: Sequelize.STRING,
      subsetor: Sequelize.STRING,
      ilha: Sequelize.STRING,
      cpu: Sequelize.STRING,
      cpunumeroserie: Sequelize.STRING,
      monitor1: Sequelize.STRING,
      monitor1numeroserie: Sequelize.STRING,
      monitor2: Sequelize.STRING,
      monitor2numeroserie: Sequelize.STRING,
      impressora: Sequelize.STRING,
      telefone: Sequelize.STRING,
      observacao: Sequelize.STRING,

    }, {
      sequelize,
    });
  }
}
