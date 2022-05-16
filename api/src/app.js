// Arquivo: app.js
// Descrição: arquivo responsável por toda a configuração da aplicação.
// Data: 13/05/2022
// Autor: Carlos Leão

const express = require('express');
const cors = require('cors');

const app = express();

// ==> Rotas da API:
const index = require('./routes/index');
const tb01Route = require('./routes/tb01.routes');

app.use(express.urlencoded({ extended: true }));
app.use(express.json());
app.use(express.json({ type: 'application/vnd.api+json' }));
app.use(cors());

app.use(index);
app.use('/api/', tb01Route);

module.exports = app;