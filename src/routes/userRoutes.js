import { Router } from 'express';
import userController from '../controllers/UserController';

// importar o middlewares de login
import loginRequired from '../middlewares/loginRequired';

const router = new Router();

router.post('/', userController.store);

// nao deveria existir
// router.get('/', loginRequired, userController.index); // lista usuarios
router.get('/obterTodosUsers', loginRequired, userController.index); // lista usuarios
router.get('/obterUmUser/:id', userController.show); // lista usuario
router.put('/atualizarSenhaPorEmail', userController.atualizarSenhaPorEmail); // lista usuario por email

// rota para o usuario atualizar so seus dados
router.put('/', loginRequired, userController.update);
// router.delete('/', userController.delete);

// rotas para o administrador
router.put('/atualizarUser/:id', userController.updateUsuarioId); // atualiza os dados de um usuario
router.delete('/deletarUser/:id', userController.deletarUserId); // deleta um usuario
// router.delete('deletarUser/:id', userController.deleteUserId); // deleta um usuario
export default router;

/*
metodos para os controlles
index -> lista todos os usuários -> GET
store/create -> cria novo usuário -> POST
delete -> apara um usuário -> DELETE
show -> mostra um usuáiro -> GET
update -> atualiza um usuário -> PATCH ou PUT
*/
