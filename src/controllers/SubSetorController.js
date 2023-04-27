import SubSetor from '../models/SubSetor';

class SubSetorController {
  // Método criar subSetor
  async store(req, res) {
    try {
      const {
        ativo, nome, nomesetor, telefone,
      } = req.body;
      const subSetor = await SubSetor.create({
        ativo, nome, nomesetor, telefone,
      });
      res.status(200).json(`subSetor ${subSetor.nome} criado com sucesso.`);
    } catch (error) {
      res.status(400).json({ error });
    }
  }

  // Método para alterar o campo ativo de true false do subSetores, pelo id
  async updateCampoAtivoSubSetor(req, res) {
    try {
      const { id } = req.params;
      const ativo = false;
      await SubSetor.update({ ativo }, { where: { id } });
      res.status(200).json('subSetor atualizado com sucesso.');
    } catch (error) {
      res.status(400).json({ error });
    }
  }

  // Lista todos os SubSetores do banco de dados
  async index(req, res) {
    try {
      const subSetores = await SubSetor.findAll({ order: [['id', 'ASC']] }); // OU 'DESC' - DESCRECENTE
      if (!subSetores) {
        res.status(401).json('Não há nenhum subSetor cadastrado');
      }
      res.status(200).json(subSetores);
    } catch (error) {
      res.status(400).json({ error });
    }
  }

  // Lista os subSetores do banco de dados com o campo ativo = true
  async listarSubSetoresAtivo(req, res) {
    try {
      console.log('cheguei na rota');
      const subSetores = await SubSetor.findAll({
        where: { ativo: true }, // atributos
        order: [['nome', 'ASC']], // literal 'id', ordem 'DESC'
      });
      // OU 'ASC PARE ORDEM CRESCENTE
      res.status(200).json(subSetores);
    } catch (error) {
      res.status(400).json({ error });
    }
  }

  // Método para deletar subSetor
  async deletarSubSetor(req, res) {
    try {
      const { id } = req.params;
      const subSetor = await SubSetor.findOne({ where: { id } });
      if (!subSetor) {
        res.status(401).json('subSetor não encontrado');
      } else {
        await SubSetor.destroy({ where: { id } });
        res.status(200).json('subSetor deletado com sucesso');
      }
    } catch (error) {
      res.status(400).json({ error });
    }
  }

  // Método para atualizar o telefone do subSetor pelo id
  async updateTelefoneSubSetor(req, res) {
    try {
      const { id } = req.params;
      const { telefone } = req.body;
      await SubSetor.update({ telefone }, { where: { id } });
      res.status(200).json('Telefone do subSetor atualizado com sucesso.');
    } catch (error) {
      res.status(400).json({ error });
    }
  }
}
export default new SubSetorController();
