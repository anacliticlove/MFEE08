var express = require("express");
var router = express.Router();
var queryString = require("querystring");
var mysql = require("mysql");
var http = require ('http');
var url = require ('url');
/* GET home page. */
var conn = mysql.createConnection({
  host: "127.0.0.1",
  user: "root",
  password: "",
  database: "mfee08",
});
router.get('/', function(req, res, next) {
  // console.log(req.session.userName);
  res.render('index', { 
    userName: req.session.userName
  });
});
router.get("/guide", function (req, res, next) {
  res.render("guide_list", {
    userName: req.session.userName,
    title: "guide",
    tripPrice: "300",
    tripName: "台中",
  });
});
router.get("/trip", function (req, res, next) {
  res.render("guide_list", {
    userName: req.session.userName,
    title: "trip",
    tripPrice: "300",
    tripName: "台中",
  });
});
router.get("/guide/guide_detail", function (req, res, next) {
  res.render("guide_detail", {
    userName: req.session.userName,
    title: "trip",
    tripPrice: "300",
    tripName: "台中",
  });
});
router.get("/trip/location_detail", function (req, res, next) {
  conn.query("select * from tripList", "", function (err, rows) {
    if (err) {
      console.log(JSON.stringify(err));
      return;
    }   
    var y = req.url.replace("/trip/location_detail?id=","")
    console.log(y);
    if(y==="/trip/location_detail"){
     y=0;
    }
    console.log(y);
    res.render("location_detail", {
      userName: req.session.userName,
      title:rows[y],
      tripPrice: "300",
      tripName: "台中",
    });
  });
});

module.exports = router;
