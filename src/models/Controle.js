import Sequelize, { Model } from 'sequelize';

export default class Controle extends Model {
  static init(sequelize) {
    super.init({
      setor: Sequelize.STRING,
      subsetor: Sequelize.STRING,
      ilha: Sequelize.STRING,
      baia: Sequelize.STRING,
      cputombo: Sequelize.STRING,
      cpunumeroserie: Sequelize.STRING,
      monitor1tombo: Sequelize.STRING,
      monitor1numeroserie: Sequelize.STRING,
      monitor2tombo: Sequelize.STRING,
      monitor2numeroserie: Sequelize.STRING,
      impressora: Sequelize.STRING,
      telefone: Sequelize.STRING,
      observacao: Sequelize.STRING,

    }, {
      sequelize,
    });
  }
}
