const express = require('express');

const app = express();
const port = 3100;

app.set('view engine', 'ejs');
app.set('views', __dirname + '/assets/views');

app.use(express.static('assets'));

app.get('/', (req, res) =>{
    res.render('index')
})

app.listen(port, () =>{
    console.log(`Server listening on port ${port}`);
});