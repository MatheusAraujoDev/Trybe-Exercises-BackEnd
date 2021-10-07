const express = require('express');
const bodyParser = require('body-parser');
const cors = require('cors');
const axios = require('axios');
const { isValidToken } = require('./middleware/validation');
const PORT = 3000;
const ENDPOINTEXTERNALAPI = 'https://api.coindesk.com/v1/bpi/currentprice/BTC.json';

const userRouter = require('./routers/userRouter');
const PORT = 3000;

const app = express();
app.use(cors());
app.use(bodyParser.json());

// Exercício 1
app.use('/user', userRouter);

// Exercício 2
app.get(
  '/btc',
  isValidToken,
  async (_req, res) => {
    const result = await axios.get(ENDPOINTEXTERNALAPI);

    res.status(200).json(result.data);
  }
);

// Exercício 3
app.use('/posts', postRouter);

app.use('*', (_req, _res, next) => next({ statusCode: 404, message: 'Opsss router not found' }));
app.use(errors.routerNotFound);

// Exercício 4
const app = express();
app.use(cors());
app.use(bodyParser.json());

app.use('/teams', teamRouter);

app.listen(PORT, () => console.log('Run server http://localhost:3000'));
