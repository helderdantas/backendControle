import dotenv from 'dotenv';
import cors from 'cors';

dotenv.config();

import './src/database';

import express from 'express';
import homeRoutes from './src/routes/homeRoutes';
import userRoutes from './src/routes/userRoutes';
import tokenRoutes from './src/routes/tokenRoutes';
import setorRoutes from './src/routes/setorRoutes';
import subSetorRoutes from './src/routes/subSetorRoutes';

class App {
  constructor() {
    this.app = express();
    this.middleware();
    this.routes();
  }

  middleware() {
    this.app.use(express.urlencoded({ extended: true }));
    this.app.use(express.json());
    this.app.use(cors());
  }

  routes() {
    this.app.use('/', homeRoutes);
    this.app.use('/users/', userRoutes);
    this.app.use('/tokens/', tokenRoutes);
    this.app.use('/setor/', setorRoutes);
    this.app.use('/subSetor/', subSetorRoutes);
    this.app.use(cors());
  }
}

export default new App().app;
