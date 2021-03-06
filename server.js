const express=require('express');
const static=require('express-static');
const cookieParser=require('cookie-parser');
const cookieSession=require('cookie-session');
const bodyParser=require('body-parser');
const multer=require('multer');
const consolidate=require('consolidate');
const mysql=require('mysql');
const common = require('./libs/common');

//连接池
const db=mysql.createPool({host: 'localhost', user: 'root', password: '123456', database: 'blog'});

let server = express();
server.listen(8080);

//1.解析 cookie
server.use(cookieParser('qwduiadsdhjahdsuuasidhuaasuidh'));

//2.使用session
let arr = [];
for (let i = 0; i < 1000000; i++) {
  arr.push('keys_' + Math.random());
}
server.use(cookieSession({name: 'sess_id', keys: arr, maxAge: 20*3600*1000}));

//3.post 数据
server.use(bodyParser.urlencoded({extended: false}));
server.use(multer({dest: './www/upload'}).any());

//4.配置模板引擎
//输出什么东西
server.set('view engine', 'html');

//模板文件放在哪儿
server.set('views', './template');

//哪种模板引擎
server.engine('html', consolidate.ejs);

//5.接收用户请求
server.get('/', (req, res, next) => {
  //查询 banner 数据
  db.query("SELECT * FROM banner_table", (err, data) => {
    if (err) {
      res.status(500).send('database error').end();
    } else {
      res.banners = data;
      next();
    }
  });
});
server.get('/', (req, res, next) => {
  //查询文章列表
  db.query('SELECT ID,title,summary FROM article_table', (err, data) => {
    if (err) {
      res.status(500).send('database error').end();
    } else {
      res.articles = data;
      next();
    }
  });
});
server.get('/', (req, res) => {
  res.render('index.ejs', {banners: res.banners, articles: res.articles});
});

server.get('/article', (req, res) => {
  if (req.query.id) {
    if (req.query.act == 'like') {
      db.query(`UPDATE article_table SET n_like=n_like+1 WHERE ID=${req.query.id}`, (err, data) => {
        if (err) {
          res.status(500).send('database error').end();
        } else {
          //显示文章
          db.query(`SELECT * FROM article_table WHERE ID=${req.query.id}`, (err, data) => {
            if (err) {
              res.status(500).send('database error').end();
            } else {
              if (data.length == 0) {
                res.status(404).send('页面不存在').end();
              } else {
                let articleData = data[0];
                articleData.sDate = common.timedate(articleData.post_time);
                articleData.content = articleData.content.replace(/^/gm, '<p>').replace(/$/gm, '</p>');
                res.render('conText.ejs', {article_data: articleData});
              }
            }
          });
        }
      });
    } else {
      //显示文章
      db.query(`SELECT * FROM article_table WHERE ID=${req.query.id}`, (err, data) => {
        if (err) {
          res.status(500).send('database error').end();
        } else {
          if (data.length == 0) {
            res.status(404).send('页面不存在').end();
          } else {
            let articleData = data[0];
            articleData.sDate = common.timedate(articleData.post_time);
            articleData.content = articleData.content.replace(/^/gm, '<p>').replace(/$/gm, '</p>');
            res.render('conText.ejs', {article_data: articleData});
          }
        }
      });
    }
  } else {
    res.status(404).send('页面不存在').end();
  }
});

//6.static 数据
server.use(static('./www'));
