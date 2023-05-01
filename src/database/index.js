import Sequelize from 'sequelize';
import databaseConfig from '../config/database';
import Controle from '../models/Controle';
import User from '../models/User';
import Setor from '../models/Setor';
import SubSetor from '../models/SubSetor';

const models = [Controle, User, Setor, SubSetor];

const connection = new Sequelize(databaseConfig);

models.forEach((model) => model.init(connection));
