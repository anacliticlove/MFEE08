var express = require("express");
var router = express.Router();
var mysql = require("mysql");
app = express()
/* GET home page. */
router.get("/", function (req, res, next) {
  res.render("index", { title: "Express" });
});

router.get("/guide", function (req, res, next) {
  res.render("guide_list", {
    title:"21",
    tripPrice: "300",
    tripName: "台中",
  });})
router.get("/trip", function (req, res, next) {
  res.render("guide_list", {
    title:"21",
    tripPrice: "300",
    tripName: "台中",
  });})





module.exports = router;
