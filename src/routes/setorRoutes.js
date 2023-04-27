import { Router } from 'express';
import setorController from '../controllers/SetorController';
// importar o middlewares de login
import loginRequired from '../middlewares/loginRequired';

const router = new Router();

// Rota para criar um novo Setores no banco de dados
console.log('entrei na rota');
router.post('/criarSetor', loginRequired, setorController.store);

// Rota para alterar o campo ativo de true para false  do setor, pelo id
router.put('/updateCampoAtivoSetor/:id', loginRequired, setorController.updateCampoAtivoSetor);

// Rota para atualizar o campo telefone do setor, pelo id
router.put('/updateTelefoneSetor/:id', loginRequired, setorController.updateTelefoneSetor);

// Rota para listar todos os setores(ativos e finalizados) do banco de dados
router.get('/listarTodosSetores', loginRequired, setorController.index);

// Rota para listar todos setores ativos
router.get('/listarSetoresAtivos', loginRequired, setorController.listarSetoresAtivo);

// Rota para deletar setor do banco de dados
router.delete('/deletarSetor/:id', loginRequired, setorController.deletarSetor);

export default router;
