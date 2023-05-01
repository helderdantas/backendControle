import Controle from '../models/Controle';

const Op = require('sequelize');

class HomeController {
  // store -> criar o controle no banco de dados
  async store(req, res) {
    try {
      /* eslint max-len: ["error", { "code": 250}] */
      const {
        setor, subsetor, ilha, baia, cputombo, cpunumeroserie, monitor1tombo, monitor1numeroserie, monitor2tombo, monitor2numeroserie, impressora, telefone, observacao,
      } = req.body;
      const novoControle = await Controle.create({
        setor, subsetor, ilha, baia, cputombo, cpunumeroserie, monitor1tombo, monitor1numeroserie, monitor2tombo, monitor2numeroserie, impressora, telefone, observacao,
      });

      return res.json(novoControle);
    } catch (error) {
      return res.status(400).json(
        {
          errors: error.errors.map((err) => err.message),
        },
      );
    }
  }

  // index -> lista todos os controles do banco de dados
  async index(req, res) {
    try {
      console.log('entrei');
      // eslint-disable-next-line max-len
      const controle = await Controle.findAll({ attributes: ['id', 'setor', 'subsetor', 'ilha', 'baia', 'cputombo', 'cpunumeroserie', 'monitor1tombo', 'monitor1numeroserie', 'monitor2tombo', 'monitor2numeroserie', 'impressora', 'telefone', 'observacao'] });
      console.log('entrei2');
      console.log(controle);
      return res.json(controle);
    } catch (error) {
      return res.json(null);
    }
  }

  // show -> busca um contorle pelo id
  async show(req, res) {
    try {
      if (req.params) {
        const { id } = req.params;
        const controle = await Controle.findByPk(id);
        const {
          setor, subsetor, ilha, baia, cputombo, cpunumeroserie, monitor1tombo, monitor1numeroserie, monitor2tombo, monitor2numeroserie, impressora, telefone, observacao,
        } = controle;
        return res.json({
          setor, subsetor, ilha, baia, cputombo, cpunumeroserie, monitor1tombo, monitor1numeroserie, monitor2tombo, monitor2numeroserie, impressora, telefone, observacao,
        });
      }
      const { nome } = req.body;
      const controle = await Controle.findAll({ where: { setor: nome } });
      const {
        setor, subsetor, ilha, baia, cputombo, cpunumeroserie, monitor1tombo, monitor1numeroserie, monitor2tombo, monitor2numeroserie, impressora, telefone, observacao,
      } = controle;
      return res.json({
        setor, subsetor, ilha, baia, cputombo, cpunumeroserie, monitor1tombo, monitor1numeroserie, monitor2tombo, monitor2numeroserie, impressora, telefone, observacao,
      });
    } catch (error) {
      return res.json(null);
    }
  }

  // filtrarPorSetor-> busca um contorle por setor
  async filtrarPorSetor(req, res) {
    try {
      const { setor } = req.params;
      console.log(setor);
      const controles = await Controle.findAll({ where: { setor } });
      return res.json(controles);
    } catch (error) {
      return res.json(null);
    }
  }

  // filtrarPorSubSetor -> busca um contorle por subSetor
  async filtrarPorSubSetor(req, res) {
    try {
      const { subsetor } = req.params;
      console.log(subsetor);
      const controles = await Controle.findAll({ where: { subsetor } });
      return res.json(controles);
    } catch (error) {
      return res.json(null);
    }
  }

  // filtrarPorCpu -> busca um contorle por cpu
  async filtrarPorCpuTombo(req, res) {
    try {
      const { cputombo } = req.params;
      console.log(cputombo);
      const controles = await Controle.findAll({ where: { cputombo } });
      console.log('entre 3');
      console.log(controles);
      return res.json(controles);
    } catch (error) {
      return res.json(null);
    }
  }

  // filtrarPorCpuNumeroSerie -> busca um contorle por cpuNumeroSerie
  async filtrarPorCpuNumeroSerie(req, res) {
    try {
      const { cpunumeroserie } = req.params;
      console.log(cpunumeroserie);
      const controles = await Controle.findAll({ where: { cpunumeroserie } });
      console.log('entre 3');
      console.log(controles);
      return res.json(controles);
    } catch (error) {
      return res.json(null);
    }
  }

  // filtrarPorMonitor1 -> busca um contorle por monitor1
  async filtrarPorMonitor1Tombo(req, res) {
    try {
      const { monitor1tombo } = req.params;
      const controles = await Controle.findAll({ where: { monitor1tombo } });
      return res.json(controles);
    } catch (error) {
      return res.json(null);
    }
  }

  // filtrarPorMonitor1NumeroSerie-> busca um contorle por monitor1NumeroSerie
  async filtrarPorMonitor1NumeroSerie(req, res) {
    try {
      const { monitor1numeroserie } = req.params;
      const controles = await Controle.findAll({ where: { monitor1numeroserie } });
      return res.json(controles);
    } catch (error) {
      return res.json(null);
    }
  }

  // filtrarPorMonitor2NumeroSerie -> busca um contorle por monitor2NumeroSerie
  async filtrarPorMonitor2NumeroSerie(req, res) {
    try {
      const { monitor2numeroserie } = req.params;
      const controles = await Controle.findAll({ where: { monitor2numeroserie } });
      return res.json(controles);
    } catch (error) {
      return res.json(null);
    }
  }

  // filtrarPorMonitor2 -> busca um contorle por monitor2
  async filtrarPorMonitor2Tombo(req, res) {
    try {
      const { monitor2tombo } = req.params;
      const controles = await Controle.findAll({ where: { monitor2tombo } });
      return res.json(controles);
    } catch (error) {
      return res.json(null);
    }
  }

  // filtrarPorImpressora -> busca um contorle por impressora
  async filtrarPorImpressora(req, res) {
    try {
      const { impressora } = req.params;
      const controles = await Controle.findAll({ where: { impressora } });
      return res.json(controles);
    } catch (error) {
      return res.json(null);
    }
  }

  // filtrarPorImpressora -> busca um contorle por impressora
  async filtrarPorObservacao(req, res) {
    try {
      console.log('entrei na rota observacao');

      const { valor } = req.params;
      console.log(valor);
      const controles = await Controle.findAll({
        where: {
          observacao: {
            [Op.Op.like]: `%${valor}%`,
          },

        },
      });
      return res.json(controles);
    } catch (error) {
      return res.json(null);
    }
  }

  // update -> atualiza os dados de um controle
  async updateControleId(req, res) {
    try {
      const { id } = req.params;
      if (!id) {
        return res.status(400).json({
          erros: ['Id não enviado'],
        });
      }
      const controle = await Controle.findByPk(id);
      if (!controle) {
        return res.status(400).json({
          erros: ['Controle não existe'],
        });
      }
      const {
        setor, subsetor, ilha, baia, cputombo, cpunumeroserie, monitor1tombo, monitor1numeroserie, monitor2tombo, monitor2numeroserie, impressora, telefone, observacao,
      } = req.body;

      const novosDados = await Controle.update({
        setor, subsetor, ilha, baia, cputombo, cpunumeroserie, monitor1tombo, monitor1numeroserie, monitor2tombo, monitor2numeroserie, impressora, telefone, observacao,
      }, { where: { id } });
      return res.json(`Alteração realizada com sucesso ${novosDados}`);
    } catch (error) {
      return res.status(400).json(
        {
          errors: error.errors.map((err) => err.message),
        },
      );
    }
  }

  // deleteControleId -> apaga o controle pelo id(funcao administrador)
  async deleteControleId(req, res) {
    try {
      const { id } = req.params;
      if (!id) {
        return res.status(400).json({
          erros: ['Id não enviado'],
        });
      }
      const controle = await Controle.findByPk(id);
      if (!controle) {
        return res.status(400).json({
          erros: ['Controle não existe'],
        });
      }
      await controle.destroy();
      console.log(controle);
      return res.json(controle);
    } catch (error) {
      return res.status(400).json(
        {
          errors: error.errors.map((err) => err.message),
        },
      );
    }
  }
}

export default new HomeController();
