const express = require('express');
const { Pool } = require('pg');

const app = express();
const pool = new Pool({
  user: 'dbuser',
  host: process.env.DB_HOST,
  database: 'sampledb',
  password: 'secretpassword',
  port: process.env.DB_PORT,
});

app.get('/data', async (req, res) => {
  const result = await pool.query('SELECT * FROM data_table;');
  res.json(result.rows);
});

app.get('/data/:id', async (req, res) => {
  const result = await pool.query('SELECT * FROM data_table WHERE id = $1;', [parseInt(req.params.id)]);
  res.json(result.rows);
});

app.get('/average', async (req, res) => {
  const result = await pool.query('SELECT AVG(number) as average FROM data_table;');
  res.json(result.rows[0]);
});

app.listen(3000, () => {
  console.log('Server running on http://localhost:3000');
});
