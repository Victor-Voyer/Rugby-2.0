const express = require('express');

const router = express.Router();

// page d'accueil
router.get('/', (req, res) =>{
    res.render('index');
});

// page article
router.get('/top14', (req, res) =>{
    res.render('top14');
});

router.get('/proD2', (req, res) =>{
    res.render('proD2');
});

router.get('/XVdeFrance', (req, res) =>{
    res.render('XVdeFrance');
});


// on exporte le router 
module.exports = router;