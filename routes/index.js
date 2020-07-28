var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'Express' });
});
router.get('/guide', function(req, res, next) {
  res.render('guide_list', { title: 'Express' });
});

module.exports = router;
