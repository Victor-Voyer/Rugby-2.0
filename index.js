const express = require('express');

const app = express();
const port = process.env.PORT || 3100;

const router = require('./assets/router')

app.set('view engine', 'ejs');
app.set('views', __dirname + '/assets/views');

app.use(express.static('public'));

app.use(router);

app.listen(port, () =>{
    console.log(`Server listening on port ${port}`);
});