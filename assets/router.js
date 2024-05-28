const express = require('express');

const router = express.Router();

// page d'accueil
router.get('/', (req, res) =>{
    res.render('index');
});

// page article



// on exporte le router 
module.exports = router;