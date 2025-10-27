const express = require('express');
const app = express();
const PORT = process.env.PORT || 8080;

app.get('/', (req, res) => {
    res.send('Hello Jenkins! Node.js app is running in Docker.');
});

app.listen(PORT, () => {
    console.log(`Server running on port ${PORT}`);
});
