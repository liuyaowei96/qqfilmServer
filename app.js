const express = require("express");
const session = require("express-session");
const cors = require("cors");
const mysql = require("mysql");
var pool = mysql.createPool({
  host: "127.0.0.1",
  user: "root",
  password: "",
  port: 3306,
  connectionLimit: 20,
  database: "film"
})

var server = express();
server.listen(6767);
server.use(cors({
  origin: ["http://127.0.0.1:8081", "http://localhost:8081", "http://localhost:8080"],
  credentials: true
}))

server.use(session({
  secret: "128位字符串",      //#安全字符串
  resave: true,              //#每次请求保存数据
  saveUninitialized: true    //#保存初始化数据
}));

server.use(express.static("public"));

server.get("/login", (req, res) => {
  //6.1:接收网页传递数据 用户名和密码
  var u = req.query.uname;
  var p = req.query.upwd;
  //6.2:创建sql
  var sql = "SELECT id FROM film_login";
  sql += " WHERE uname = ? AND upwd = md5(?)";
  //6.3:执行sql语句并且获取返回结果
  pool.query(sql, [u, p], (err, result) => {
    //6.4:判断登录是否成功
    if (err) throw err;
    //6.5:将结果返回网页
    if (result.length == 0) {
      res.send({ code: -1, msg: "用户名或密码有误" })
    } else {
      //获取当前登录用户id
      var id = result[0].id;
      //将用户id保存session对象中
      //uid是当前登录：用户的凭证
      req.session.uid = id;
      console.log(req.session);
      res.send({ code: 1, msg: "登录成功" });
    }
  })
});

//滑动文字
server.get("/slide_font", (req, res) => {
  var sql = "SELECT t_id,t_font FROM slide_font";
  pool.query(sql, (err, result) => {
    if (err) throw err;
    res.send(result);
  })
})

//电影表
server.get("/film_table", (req, res) => {
  var list =[];
  var sql = "SELECT film_id,film_uname,film_starring,film_director,film_date,film_country FROM film_table";
  var jqsql="SELECT t_font FROM slide_font";
  var dqsql="SELECT DISTINCT film_country FROM film_table";
  var yearsql="SELECT DISTINCT film_year FROM film_table";
  function getjq() {
    return new Promise(
      function (resolve, reject) {
        pool.query(jqsql, (err, result) => {
          if (err) throw err;
          list[0]=result;
          resolve()
        })
      }
    )
  }
  function getdq() {
    return new Promise(
      function (resolve, reject) {
        pool.query(dqsql, (err, result) => {
          if (err) throw err;
          list[1]=result;
          resolve()
        })
      }
    )
  }
  function getyear() {
    return new Promise(
      function (resolve, reject) {
        pool.query(yearsql, (err, result) => {
          if (err) throw err;
          list[2]=result;
          resolve()
        })
      }
    )
  }
  Promise.all([//数组中要求必须传入new Promise对象
      getjq(),//new Promise对象
      getdq(),//new Promise对象
      getyear()//new Promise对象  
    ])
    .then(()=>{
      console.log(list);
      res.send(list);
    })
})

//