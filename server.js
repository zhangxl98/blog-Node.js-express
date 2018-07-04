const express=require('express');
const static=require('express-static');
const cookieParser=require('cookie-parser');
const cookieSession=require('cookie-session');
const bodyParser=require('body-parser');
const multer=require('multer');
const consolidate=require('consolidate');
const mysql=require('mysql');

let server = express();
server.listen(8080);

//1.解析 cookie
server.use(cookieParser('qwduiadsdhjahdsuuasidhuaasuidh'));

//2.使用session
let arr = [];
for (var i = 0; i < 1000000; i++) {
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

//接收用户请求
server.get('/', (req, res) => {
  res.render('index.ejs')
});

//5.static 数据
server.use(static('./www'));
