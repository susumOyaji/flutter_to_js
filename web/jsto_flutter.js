const express = require('express');
const app = express();

app.get('/data', (req, res) => {
  const data = [
    { id: 1, name: 'Item 1' },
    { id: 2, name: 'Item 2' },
    { id: 3, name: 'Item 3' },
  ];
  res.json(data);
});

app.listen(3000, () => {
  console.log('Server started on port 3000');
});
