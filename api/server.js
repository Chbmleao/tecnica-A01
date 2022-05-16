// Arquivo: server.js 
// Descrição: arquivo responsável por toda a configuração e execução da aplicação
// Data: 13/05/2022
// Autor: Carlos Leão

const app = require('./src/app');

const port = process.env.PORT || 3000;

app.listen(port, () => {
  console.log('Aplicação executando na porta ', port);
});