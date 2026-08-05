const express = require('express');
const cors = require('cors');
const sqlite3 = require('sqlite3').verbose();

const app = express();
const PORT = 3333;

app.use(cors());
app.use(express.json());


const db = new sqlite3.Database('./database.sqlite', (err) => {
  if (err) {
    console.error('Error opening database', err.message);
  } else {
    console.log('Connected to the SQLite database.');

    db.run(`CREATE TABLE IF NOT EXISTS todos (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      title TEXT NOT NULL,
      is_completed BOOLEAN DEFAULT 0
    )`);
  }
});




app.get('/api/todos', (req, res) => {
  const sql = 'SELECT * FROM todos ORDER BY id DESC';
  db.all(sql, [], (err, rows) => {
    if (err) {
      return res.status(500).json({ error: err.message });
    }
  
    const todos = rows.map(row => ({
      ...row,
      is_completed: Boolean(row.is_completed)
    }));
    res.json(todos);
  });
});

// POST /api/todos - เพิ่ม Todo ใหม่
app.post('/api/todos', (req, res) => {
  const { title } = req.body;
  if (!title) {
    return res.status(400).json({ error: 'Title is required' });
  }

  const sql = 'INSERT INTO todos (title, is_completed) VALUES (?, 0)';
  db.run(sql, [title], function(err) {
    if (err) {
      return res.status(500).json({ error: err.message });
    }
   
    res.status(201).json({
      id: this.lastID,
      title: title,
      is_completed: false
    });
  });
});


app.put('/api/todos/:id', (req, res) => {
  const { id } = req.params;
  const { title, is_completed } = req.body;

  db.get('SELECT * FROM todos WHERE id = ?', [id], (err, row) => {
    if (err) return res.status(500).json({ error: err.message });
    if (!row) return res.status(404).json({ error: 'Todo not found' });

    const newTitle = title !== undefined ? title : row.title;
    const newStatus = is_completed !== undefined ? (is_completed ? 1 : 0) : row.is_completed;

    const sql = 'UPDATE todos SET title = ?, is_completed = ? WHERE id = ?';
    db.run(sql, [newTitle, newStatus, id], function(err) {
      if (err) return res.status(500).json({ error: err.message });
      res.json({
        id: Number(id),
        title: newTitle,
        is_completed: Boolean(newStatus)
      });
    });
  });
});


app.delete('/api/todos/:id', (req, res) => {
  const { id } = req.params;
  const sql = 'DELETE FROM todos WHERE id = ?';
  db.run(sql, [id], function(err) {
    if (err) {
      return res.status(500).json({ error: err.message });
    }
    res.json({ message: 'Deleted successfully', id: Number(id) });
  });
});

app.listen(PORT, () => {
  console.log(`Server is running on http://localhost:${PORT}`);
});
