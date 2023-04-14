import Sequelize from 'sequelize';
import databaseConfig from '../config/database';
import Controle from '../models/Controle';
import User from '../models/User';

const models = [Controle, User];

const connection = new Sequelize(databaseConfig);

models.forEach((model) => model.init(connection));
