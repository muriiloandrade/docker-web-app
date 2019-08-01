const express = require('express');

//Constantes
const PORT = process.env.PORT || 8080;
const HOST = process.env.HOST || '0.0.0.0';

//App
const app = express();

//Rotas
app.get('/', (req, res) => {
  res.send('Hello world!');
  res.end();
});

app.listen(PORT, HOST);
console.log(`Servidor ouvindo em http://${HOST}:${PORT}`);
