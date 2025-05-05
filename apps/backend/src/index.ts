import express from 'express';

const app = express();
const port = 4000;

app.get('/', (_req, res) => {
  res.send('Hello from Express backend!');
});

app.listen(port, () => {
  console.log(`Server listening on http://localhost:${port}`);
});
