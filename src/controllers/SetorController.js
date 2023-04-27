import Setor from '../models/Setor';

class SetorController {
  // Método criar setor
  async store(req, res) {
    try {
      /* eslint max-len: ["error", { "code": 250}] */
      const { ativo, nome, telefone } = req.body;
      const setor = await Setor.create({ ativo, nome, telefone });
      res.status(200).json(`setor criado com sucesso.${setor.nome}`);
    } catch (error) {
      res.status(400).json({ error });
    }
  }

  // Método para alterar o campo ativo de true false do setores, pelo id
  async updateCampoAtivoSetor(req, res) {
    try {
      const { id } = req.params;
      const ativo = false;
      await Setor.update({ ativo }, { where: { id } });
      res.status(200).json('setor atualizado com sucesso.');
    } catch (error) {
      res.status(400).json({ error });
    }
  }

  // Lista todos os Setores do banco de dados
  async index(req, res) {
    try {
      const setores = await Setor.findAll({ order: [['id', 'ASC']] }); // OU 'DESC' - DESCRECENTE
      if (!setores) {
        res.status(401).json('Não há nenhum setor cadastrado');
      }
      res.status(200).json(setores);
    } catch (error) {
      res.status(400).json({ error });
    }
  }

  // Lista os setores do banco de dados com o campo ativo = true
  async listarSetoresAtivo(req, res) {
    try {
      const setores = await Setor.findAll({
        where: { ativo: true }, // atributos
        order: [['nome', 'ASC']], // literal 'id', ordem 'DESC'
      }); // OU 'ASC PARE ORDEM CRESCENTE

      res.status(200).json(setores);
    } catch (error) {
      res.status(400).json({ error });
    }
  }

  // Método para deletar setor
  async deletarSetor(req, res) {
    try {
      const { id } = req.params;
      const setor = await Setor.findOne({ where: { id } });
      if (!setor) {
        res.status(401).json('setor não encontrado');
      } else {
        await Setor.destroy({ where: { id } });
        res.status(200).json('setor deletado com sucesso');
      }
    } catch (error) {
      res.status(400).json({ error });
    }
  }

  // Método para atualizar o telefone do setor pelo id
  async updateTelefoneSetor(req, res) {
    try {
      const { id } = req.params;
      const { telefone } = req.body;
      await Setor.update({ telefone }, { where: { id } });
      res.status(200).json('Telefone do setor atualizado com sucesso.');
    } catch (error) {
      res.status(400).json({ error });
    }
  }
}
export default new SetorController();
