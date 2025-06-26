// app/server.js

const express = require('express');
const app = express();
const PORT = 3000;

// ルートURL ("/") にアクセスがあったら "Hello, Docker World!" と表示する
app.get('/', (req, res) => {
  res.send('Hello, Docker World! Your app is running!');
});

app.listen(PORT, () => {
  console.log(`Server is running on http://localhost:${PORT}`);
});