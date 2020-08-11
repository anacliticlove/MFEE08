var express = require("express");
var router = express.Router();
var mysql = require("mysql");
var bodyParser = require("body-parser");
const { urlencoded } = require("body-parser");
const e = require("express");
var urlencodeParser = bodyParser.urlencoded();
// 連接mysql
var conn = mysql.createConnection({
  host: "127.0.0.1",
  user: "root",
  password: "",
  database: "mfee08",
});

/* GET users listing. */
// 購物車
router.get("/shopcart", function isLoggedIn (req, res, next) 
{

    if (req.session.userName !== "Guest") {
      res.render("shopcart", {
        userId: req.session.userId,
        userName: req.session.userName,
        title: "trip",
      });
    } else {
      res.redirect("/users/login");
    }          
});
// 結帳頁面
router.get("/shoppay", function (req, res, next) {
  res.render("shoppay", {
    userId: req.session.userId,
    userName: req.session.userName,
  });
});
// 登入頁面
router.get("/login", function (req, res, next) {
  // res.send('respond with a resource');
  res.render("login", { passWord: "" });
});
// 註冊頁面
router.get("/register", function (req, res, next) {
  // res.send('respond with a resource');
  if (req.session.userName === "Guest") {
    res.render("register", { passWord: "" });
  } else {
    res.redirect("/");
  }
});
//登出
router.get("/logout", function (req, res, next) {
  // res.send('respond with a resource');
  req.session.userName = "Guest";
  res.redirect("/");
});
//會員中心_個人資料
router.get('/member', function (req, res, next) {
  conn.query("SELECT * FROM memberlist"   , function (err, result, fields) {
    if (err) throw err;
    let phidList = result.map(item => Object.values(item)[4]);//手機
    let ph= phidList.indexOf(req.session.userName);
    if (req.session.userName === "Guest") {
      res.render("login", { passWord: req.body.txtPassword });
      return;
    } else{
      res.render("member", {
        userName: req.session.userName,
        UserName:phidList[ph],
      });
     
    }
  });
})

/* POST users listing. */
// 回傳登入資料
router.post("/login", function (req, res, next) {
  conn.query("SELECT * FROM memberlist", function (err, result, fields) {
    if (err) throw err;
    // const memberId = result.map((item) => Object.values(item)[0]);
    const idList = result.map((item) => Object.values(item)[4]);
    const passWord = result.map((item) => Object.values(item)[2]);
    if (
      idList.includes(req.body.txtUserName) &&
      idList.indexOf(req.body.txtUserName) ==
        passWord.indexOf(req.body.txtPassword)
    ) {
      req.session.userId = passWord.indexOf(req.body.txtPassword)+1;
      req.session.userName = req.body.txtUserName;
      //回前一頁的頁面
      if (req.query.backUrl) {
        res.redirect(req.query.backUrl);
      } else {
        res.redirect("/");
      }
    } else {
      res.render("login", { passWord: req.body.txtPassword });
    }
  });
});
// 回傳註冊資料
router.post("/register", function (req, res, next) {
  conn.query("SELECT * FROM  memberlist", function (err, result, fields) {
    if (err) throw err;
    const idList = result.map((item) => Object.values(item)[4]);
    if (req.body.txtUserName === "") {
      res.render("register", { passWord: "" });
    } else if (idList.includes(req.body.txtUserName)) {
      res.render("register", { passWord: "" });
    } else {
      conn.query(
        "insert into memberlist set memberAccount=?  ,memberPassword = ?, memberTel = ?   ",
        [req.body.txtDotphone, req.body.txtPassword, req.body.txtUserName]
      );
      req.session.userName = req.body.txtUserName;

      if (req.query.backUrl) {
        res.redirect(req.query.backUrl);
      } else {
        res.redirect("/");
      }
    }
  });
});

module.exports = router;
