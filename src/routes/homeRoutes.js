import { Router } from 'express';
import homeController from '../controllers/HomeController';
// importar o middlewares de login
import loginRequired from '../middlewares/loginRequired';

const router = new Router();

// Rota para criar um novo controle no banco de dados
router.post('/criarControle', loginRequired, homeController.store);

// Lista todos os controles do banco de dados
router.get('/listarControles', loginRequired, homeController.index);

// Lista um controle pelo id
router.get('/listarControle/:id', homeController.show);

// Lista um controles por setor
router.get('/filtrarPorSetor/:setor', homeController.filtrarPorSetor);

// Lista um controles por subSetor
router.get('/filtrarPorSubSetor/:subsetor', homeController.filtrarPorSubSetor);

// Lista um controles por cpu
router.get('/filtrarPorCpu/:cpu', homeController.filtrarPorCpu);

// Lista um controles por cpuNumeroSerie
router.get('/filtrarPorCpuNumeroSerie/:cpuNumeroSerie', homeController.filtrarPorCpuNumeroSerie);

// Lista um controles por monitor1
router.get('/filtrarPorMonitor1/:monitor1', homeController.filtrarPorMonitor1);

// Lista um controles por monitor1NumeroSerie
router.get('/filtrarPorMonitor1NumeroSerie/:monitor1NumeroSerie', homeController.filtrarPorMonitor1NumeroSerie);

// Lista um controles por monitor2
router.get('/filtrarPorMonitor2/:monitor2', homeController.filtrarPorMonitor2);

// Lista um controles por monitor2NumeroSerie
router.get('/filtrarPorMonitor2/:monitor2NumeroSerie', homeController.filtrarPorMonitor2NumeroSerie);

// Lista um controles por impressora
router.get('/filtrarPorImpressora/:impressora', homeController.filtrarPorImpressora);

// Rota para atualizar um controle pelo id
router.put('/atualizarControle/:id', loginRequired, homeController.updateControleId);

// Rota para deletar um controle pelo id
router.delete('/deletarControle/:id', loginRequired, homeController.deleteControleId);

export default router;
