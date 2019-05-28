//生成访问日志文件
let fs = require('fs');

let express = require('express');
let bodyParser = require('body-parser');
let path = require('path');
let session = require('express-session');
let router = require('./routes/router');

let port = process.env.PORT || 8899;
let app = express();

//设置静态资源文件目录
app.use(express.static('./frontend'));
app.use(express.static('./log'));
app.use(express.static('./download'));

app.use(bodyParser.urlencoded({extended: true}));
app.use(bodyParser.json());

app.use(session({
    secret: 'globalegrow',
    cookie: {maxAge: 3600000},
    resave: false,
    saveUninitialized: false,
}));

// 允许跨域请求 必须写在 app.use(router)之前，否则无效
app.all('*', function (req, res, next) {
    res.header('Access-Control-Allow-Origin', '*');
    res.header('Access-Control-Allow-Headers', 'Content-Type, Content-Length, Authorization, Accept, X-Requested-With , yourHeaderFeild');
    res.header('Access-Control-Allow-Methods', 'PUT, POST, GET, DELETE, OPTIONS');

    if (req.method == 'OPTIONS') {
        res.send(200);
        // 让options请求快速返回
    } else {
        next();
    }
});

app.use(router);

//避免因http缓存而返回304
app.disable('etag');

let server = require('http').createServer(app);
let io = require('socket.io').listen(server); //引入socket.io模块并绑定到服务器
//socket部分
io.on('connection', function (socket) {
    console.log('socket connected....')
    //接收并处理客户端发送的foo事件
    socket.on('foo', function (data) {
        //将消息输出到控制台
        console.log(data);
    })
});

server.listen(port, () => {
    console.log(`接口服务已成功启动，端口: ${port}`);
});