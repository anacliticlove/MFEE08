var express = require('express');
var router = express.Router();
var mysql = require("mysql");
var conn = mysql.createConnection({
  host: "127.0.0.1",
  user: "root",
  password: "",
  database: "mfee08",
});



/* GET users listing. */
router.get('/', function(req, res, next) {
  res.send('respond with a resource');
});
router.get("/shopcart", function (req, res, next) {
  res.render("shopcart", {
    title:"trip",
    tripPrice: "300",
    tripName: "台中",
  });})
router.get("/shoppay", function (req, res, next) {
  res.render("shoppay", {
    title:"trip",
    tripPrice: "300",
    tripName: "台中",
  });})
  router.post("/shopcart", function (req, res, next) {
    res.render("shopcart", {
      title:"trip",
      tripPrice: "300",
      tripName: "台中",
    });})

  router.get('/login', function (req, res, next) {
    // res.send('respond with a resource');
    res.render('login', { passWord: "" });
  });

  
  

  router.post('/login', function (req, res, next) {

    conn.query("SELECT * FROM memberlist"   , function (err, result, fields) {
         if (err) throw err;
    const idList = result.map(item => Object.values(item)[4]);
    const passWord = result.map(item => Object.values(item)[2]);
    if  (idList.includes(req.body.txtUserName) && 
    idList.indexOf(req.body.txtUserName) == passWord.indexOf(req.body.txtPassword) ) {
       req.session.userName=req.body.txtUserName;
       if (req.query.backUrl) {
        res.redirect(req.query.backUrl);
      } else  {
       res.redirect('/');}
      } else {
        res.render("login", { passWord: req.body.txtPassword });
        }
   });
   });



   router.get('/register', function (req, res, next) {
    // res.send('respond with a resource');
    if( req.session.userName ==="Guest" ){      
  
      res.render('register', { passWord: "" });
      
    }else{
  
  res.redirect('/');
  }});


  
  router.post('/register', function (req, res, next) {

    conn.query("SELECT * FROM  memberlist"   , function (err, result, fields) {
         if (err) throw err;
         const idList = result.map(item => Object.values(item)[4]);
        if (  req.body.txtUserName === ""  ) {
          res.render('register', { passWord: "" });
           }
           else if (  idList.includes(req.body.txtUserName ) ){
         res.render('register', { passWord: "" });
          }else{
               conn.query(
              "insert into memberlist set memberAccount=?  ,memberPassword = ?, memberTel = ?   ",
              [
                req.body. txtDotphone,
                req.body.txtPassword,
                req.body.txtUserName,
               
               ]
            );
             req.session.userName= req.body.txtUserName;

             if (req.query.backUrl) {

              res.redirect(req.query.backUrl);
            }else {
            res.redirect('/');}
        }
       });
    });


    router.get('/logout', function (req, res, next) {
      // res.send('respond with a resource');
      req.session.userName = "Guest";
      res.redirect('/');
    });




module.exports = router;
