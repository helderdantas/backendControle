import Sequelize, { Model } from 'sequelize';

// classe criar subsetor para interagir com o banco de dados
export default class Subsetor extends Model {
  static init(sequelize) {
    super.init({
      ativo: Sequelize.BOOLEAN,
      nome: Sequelize.STRING,
      nomesetor: Sequelize.STRING,
      telefone: Sequelize.INTEGER,
    }, {
      sequelize,
    });
  }
}
