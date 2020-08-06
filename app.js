var createError = require("http-errors");
var express = require("express");
var path = require("path");
var cookieParser = require("cookie-parser");
var logger = require("morgan");
var mysql = require("mysql");
var indexRouter = require("./routes/index");
var usersRouter = require("./routes/users");
var session = require('express-session');
const { response } = require("express");

var app = express();

//連接資料庫
var conn = mysql.createConnection({
  host: "127.0.0.1",
  user: "root",
  password: "",
  database: "mfee08",
});
// 取得會員資料  
app.get("/trip/tripList", function (request, response) {
  conn.query("select * from tripList", "", function (err, rows) {
    if (err) {
      console.log(JSON.stringify(err));
      return;
    }
    // console.log(JSON.stringify(rows));
    response.send(JSON.stringify(rows));
  });
});
app.get("/guide/memberList", function (request, response) {
  conn.query("SELECT * FROM memberlist", "", function (err, rows) {
    if (err) {
      console.log(JSON.stringify(err));
      return;
    }
    // console.log(JSON.stringify(rows));
    response.send(JSON.stringify(rows));
  });
});

//view engine setup
app.set("views", path.join(__dirname, "views"));
app.set("view engine", "ejs");

app.use(logger("dev"));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());

app.use(session({
  secret: 'gyug7g6fhv',
//   store: new FileStore({
//     path: __dirname+'/sessions'
// }),
  resave:true,
  saveUninitialized: false,
  // cookie: {
    // 	maxAge: 10 * 1000  // 有效期，单位是毫秒
	// }
}));
// 身分大綱 
app.use(function (req, res, next) {
  if (typeof req.session.userName === "undefined"  ) {
    req.session.userName = "Guest"
  } 
  next();
});


app.use(express.static(path.join(__dirname, "public")));

app.use("/", indexRouter);
app.use("/users", usersRouter);

// catch 404 and forward to error handler
app.use(function (req, res, next) {
  next(createError(404));
});

// error handler
app.use(function (err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get("env") === "development" ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render("error");
});






module.exports = app;
