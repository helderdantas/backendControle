import { Router } from 'express';
import subSetorController from '../controllers/SubSetorController';
// importar o middlewares de login
import loginRequired from '../middlewares/loginRequired';

const router = new Router();

// Rota para criar um novo subSetor no banco de dados
router.post('/criarSubSetor', subSetorController.store);

// Rota para alterar o campo ativo de true para false  do subSetor, pelo id
router.put('/updateCampoAtivoSubSetor/:id', loginRequired, subSetorController.updateCampoAtivoSubSetor);

// Rota para atualizar o campo telefone do subSetor, pelo id
router.put('/updateTelefoneSubSetor/:id', loginRequired, subSetorController.updateTelefoneSubSetor);

// Rota para listar todos os subSetores(ativos e finalizados) do banco de dados
router.get('/listarTodosSubSetores', subSetorController.index);

// Rota para listar todos subSetores ativos
router.get('/listarSubSetoresAtivos', subSetorController.listarSubSetoresAtivo);

// Rota para deletar subSetor do banco de dados
router.delete('/deletarSubSetor/:id', loginRequired, subSetorController.deletarSubSetor);

export default router;
