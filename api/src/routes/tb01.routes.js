// @ts-nocheck
// Arquivo: src/routes/tb01.routes.js
// Descrição: arquivo responsável pelas rotas da api relacionado a classe 'TB01'.
// Data: 13/05/2022
// Autor Carlos Leão

const router = require('express-promise-router')();
const tb01Controller = require('../controllers/tb01.controller');
 
// ==> Definindo as rotas do CRUD - 'TB01':

// ==> Rota responsável por listar os dez 'TB01' mais recentes: (GET): localhost:3000/api/tb01
router.get('/tb01', tb01Controller.listRecentsTB01);
 
module.exports = router;