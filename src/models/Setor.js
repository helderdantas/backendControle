import Sequelize, { Model } from 'sequelize';

// classe criar setor para interagir com o banco de dados
export default class Setor extends Model {
  static init(sequelize) {
    super.init({
      ativo: Sequelize.BOOLEAN,
      nome: Sequelize.STRING,
      telefone: Sequelize.STRING,
    }, {
      sequelize,
    });
  }
}
