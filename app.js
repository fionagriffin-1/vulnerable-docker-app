const express = require('express');
const app = express();
const port = 3000;

app.get('/', (req, res) => {
  const name = req.query.name || 'Guest';
  res.send(`Hello, ${name}`); // 🚨 Reflected XSS if unsanitized input
});

app.listen(port, () => {
  console.log(`App running on http://localhost:${port}`);
});

