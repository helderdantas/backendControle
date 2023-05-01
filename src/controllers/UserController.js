import User from '../models/User';

const bcryptjs = require('bcryptjs');

class UserController {
  // store
  async store(req, res) {
    try {
      const novoUser = await User.create(req.body);
      const {
        nome, email, cpf, telefone,
      } = novoUser;

      return res.json({
        nome, email, cpf, telefone,
      });
    } catch (error) {
      return res.status(400).json(
        {
          errors: error.errors.map((err) => err.message),
        },
      );
    }
  }

  // index -> lista todos os usuarios do banco de dados
  async index(req, res) {
    try {
      const users = await User.findAll({ attributes: ['id', 'nome', 'email', 'cpf', 'telefone'] });
      // console.log('id', req.userId);
      // console.log('email', req.userEmail);
      return res.json(users);
    } catch (error) {
      return res.json(null);
    }
  }

  // show -> busca um usuário pelo id
  async show(req, res) {
    try {
      const { id } = req.params;
      const user = await User.findByPk(id);
      const { nome, email, telefone } = user;
      return res.json({ nome, email, telefone });
    } catch (error) {
      return res.json(null);
    }
  }

  // atualizarSenhaPorEmai -> atualiza a senha do usuario enviando seu email
  async atualizarSenhaPorEmail(req, res) {
    try {
      const { email, password } = req.body;
      const user = await User.findOne({ where: { email } });
      console.log('1');
      const { id } = user;
      console.log(id);
      console.log('1');
      const password_hash = await bcryptjs.hash(password, 8);
      console.log(password_hash);
      const dados = await user.update({ password_hash }, { where: { id } });
      console.log(dados);
      return res.json('Senha atualizada com sucesso');
    } catch (error) {
      return res.json(null);
    }
  }

  // proprio usuario atualiar seu dados
  async update(req, res) {
    try {
      const user = await User.findByPk(req.userId);
      if (!user) {
        return res.status(400).json({
          erros: ['Usuário não existe'],
        });
      }
      const novosDados = await user.update(req.body);
      return res.json(novosDados);
    } catch (error) {
      return res.status(400).json(
        {
          errors: error.errors.map((err) => err.message),
        },
      );
    }
  }

  // update -> atualiza os dados de um usuario
  async updateUsuarioId(req, res) {
    try {
      const { id } = req.params;
      if (!id) {
        return res.status(400).json({
          erros: ['Id não enviado'],
        });
      }
      const user = await User.findByPk(id);
      console.log(user);
      if (!user) {
        return res.status(400).json({
          erros: ['Usuário não existe'],
        });
      }
      const novosDados = await user.update(req.body);
      return res.json(novosDados);
    } catch (error) {
      return res.status(400).json(
        {
          errors: error.errors.map((err) => err.message),
        },
      );
    }
  }

  // delete -> o proprio usuario se deleta da base de dados
  async delete(req, res) {
    try {
      const user = await User.findByPk(req.userId);
      if (!user) {
        return res.status(400).json({
          erros: ['Usuário não existe'],
        });
      }
      await user.destroy();
      return res.json(user);
    } catch (error) {
      return res.status(400).json(
        {
          errors: error.errors.map((err) => err.message),
        },
      );
    }
  }

  // deleteUsuarioId -> apaga o usuario pelo id(funcao administrador)
  async deletarUserId(req, res) {
    try {
      const { id } = req.params;
      if (!id) {
        return res.status(400).json({
          erros: ['Id não enviado'],
        });
      }
      const user = await User.findByPk(id);
      if (!user) {
        return res.status(400).json({
          erros: ['Usuário não existe'],
        });
      }
      await user.destroy();
      return res.json(user);
    } catch (error) {
      return res.status(400).json(
        {
          errors: error.errors.map((err) => err.message),
        },
      );
    }
  }
}

export default new UserController();
