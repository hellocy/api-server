let mysql = require('mysql');
let db = require('../configs/db');
let pool = mysql.createPool(db);

let sql = require('../sql/sql');
let moment = require('moment');
let bcrypt = require('bcryptjs');
let func = require('../sql/func');

const crypto = require("crypto");

var nodemailer = require("nodemailer");

let logger = require('../configs/logger.js');

module.exports = {

    getUserInfo(req, res) {
        let param = req.body;
        res.header("RMP-TOKEN", "5555555598464646");
        res.json({
            "code": 0,
            "success": true,
            "message": "success",
            "level": "DEBUG",
            "curtime": "1558495953288",
            "data": {
                "id": "4",
                "accessToken": '5555555598464646',
                "userName": "chenyi",
                "userNo": "645444",
                "userEnglishName": "",
                "name": "",
                "isAdmin": 0,
                "email": "",
                "departmentId": "2",
                "deparmentName": "",
                "phone": "",
                "menus": {
                    "menuList": [{
                        "id": 1,
                        "parentId": 0,
                        "url": "",
                        "perms": "",
                        "type": 0,
                        "icon": "fa fa-cog",
                        "orderNum": 0,
                        "createId": 0,
                        "createName": "",
                        "createTime": 0,
                        "updateId": 0,
                        "updateName": "",
                        "updateTime": 0,
                        "list": [{
                            "id": 2,
                            "parentId": 1,
                            "url": "/system/department_manage/list",
                            "perms": "",
                            "type": 1,
                            "icon": "fa fa-user",
                            "orderNum": 1,
                            "createId": 0,
                            "createName": "",
                            "createTime": 0,
                            "updateId": 0,
                            "updateName": "",
                            "updateTime": 0,
                            "name": "事业部管理"
                        }, {
                            "id": 3,
                            "parentId": 1,
                            "url": "/system/role_manage/list",
                            "perms": "",
                            "type": 1,
                            "icon": "fa fa-user-secret",
                            "orderNum": 2,
                            "createId": 0,
                            "createName": "",
                            "createTime": 0,
                            "updateId": 0,
                            "updateName": "",
                            "updateTime": 0,
                            "name": "角色管理"
                        }, {
                            "id": 4,
                            "parentId": 1,
                            "url": "/system/users_manage/list",
                            "perms": "",
                            "type": 1,
                            "icon": "fa fa-th-list",
                            "orderNum": 3,
                            "createId": 0,
                            "createName": "",
                            "createTime": 0,
                            "updateId": 0,
                            "updateName": "",
                            "updateTime": 0,
                            "name": "用户管理"
                        }],
                        "name": "系统管理"
                    }, {
                        "id": 27,
                        "parentId": 0,
                        "url": "/rp-forecast/customer/list",
                        "perms": "",
                        "type": 0,
                        "icon": "",
                        "orderNum": 0,
                        "createId": 0,
                        "createName": "",
                        "createTime": 0,
                        "updateId": 0,
                        "updateName": "",
                        "updateTime": 0,
                        "list": [{
                            "id": 28,
                            "parentId": 27,
                            "url": "/rp_forecast/lp/list",
                            "perms": "",
                            "type": 0,
                            "icon": "",
                            "orderNum": 0,
                            "createId": 0,
                            "createName": "",
                            "createTime": 0,
                            "updateId": 0,
                            "updateName": "",
                            "updateTime": 0,
                            "list": [{
                                "id": 37,
                                "parentId": 28,
                                "url": "",
                                "perms": "sys:customer:list",
                                "type": 2,
                                "icon": "",
                                "orderNum": 0,
                                "createId": 0,
                                "createName": "",
                                "createTime": 0,
                                "updateId": 0,
                                "updateName": "",
                                "updateTime": 0,
                                "name": "查询"
                            }, {
                                "id": 38,
                                "parentId": 28,
                                "url": "",
                                "perms": "sys:department:info",
                                "type": 2,
                                "icon": "",
                                "orderNum": 0,
                                "createId": 0,
                                "createName": "",
                                "createTime": 0,
                                "updateId": 0,
                                "updateName": "",
                                "updateTime": 0,
                                "name": "浏览"
                            }],
                            "name": "物流退件"
                        }, {
                            "id": 32,
                            "parentId": 27,
                            "url": "/rp_forecast/customer/list",
                            "perms": "",
                            "type": 1,
                            "icon": "",
                            "orderNum": 0,
                            "createId": 0,
                            "createName": "",
                            "createTime": 0,
                            "updateId": 0,
                            "updateName": "",
                            "updateTime": 0,
                            "name": "客户退件"
                        }],
                        "name": "退件预报"
                    }, {
                        "id": 29,
                        "parentId": 0,
                        "url": "",
                        "perms": "",
                        "type": 0,
                        "icon": "",
                        "orderNum": 0,
                        "createId": 0,
                        "createName": "",
                        "createTime": 0,
                        "updateId": 0,
                        "updateName": "",
                        "updateTime": 0,
                        "list": [{
                            "id": 30,
                            "parentId": 29,
                            "url": "/rule_setup/rp_rule/list",
                            "perms": "",
                            "type": 1,
                            "icon": "",
                            "orderNum": 0,
                            "createId": 0,
                            "createName": "",
                            "createTime": 0,
                            "updateId": 0,
                            "updateName": "",
                            "updateTime": 0,
                            "name": "退件匹配规则"
                        }, {
                            "id": 31,
                            "parentId": 29,
                            "url": "/rule_setup/track_rule/list",
                            "perms": "",
                            "type": 1,
                            "icon": "",
                            "orderNum": 0,
                            "createId": 0,
                            "createName": "",
                            "createTime": 0,
                            "updateId": 0,
                            "updateName": "",
                            "updateTime": 0,
                            "name": "跟件规则"
                        }],
                        "name": "规则设置"
                    }]
                },
                "roles": [{
                    "id": 1,
                    "roleName": "管理员",
                    "code": "ADMIN",
                    "status": 1,
                    "remark": "3333",
                    "createId": 0,
                    "createName": "",
                    "updateId": 0,
                    "updateName": "",
                    "locker": "",
                    "lockAt": "2019-05-14 17:12:46",
                    "isDelete": 0
                }],
                "permissions": ["sys:user:list", "sys:menu:role:info", "sys:role:save", "sys:department:info", "sys:role:menu:list", "sys:role:info", "sys:menu:list", "sys:role:menu:save", "sys:role:department:list", "sys:role:update", "sys:user:info", "sys:role:menu:undivide:list", "sys:customer:list", "sys:department:list", "sys:role:delete", "sys:user:update", "sys:role:list", "sys:menu:info", "sys:user:save", "sys:role:select", "sys:user:role:divide"],
                "departments": {
                    "department": {
                        "id": 2,
                        "parentId": 1,
                        "name": "第三方平台事业部",
                        "number": "",
                        "orderNum": 0,
                        "remark": "",
                        "isDelete": 0,
                        "createId": 0,
                        "createName": "",
                        "createTime": 1558428515,
                        "updateId": 0,
                        "updateName": "",
                        "updateTime": 1510043677,
                        "code": "1119",
                        "parentCode": "11",
                        "affiliatedDepartment": "",
                        "grade": 2,
                        "enable": 1,
                        "open": false
                    }
                },
                "roleDepartments": [{
                    "roleId": 1,
                    "departments": [{
                        "departmentName": "战略研究部",
                        "departmentId": 1874
                    }, {
                        "departmentName": "融资管理部",
                        "departmentId": 1875
                    }]
                }]
            }
        });
        return;
    },

    searchUser (req, res) {
        var keyword = req.body.keyword;
        pool.query(`select * from users where user_name like "%${keyword}%" or mail like "%${keyword}%" and id != 1`, function(err, rows){
            if(err){
                res.json({code: 500, msg: 'fail', data: err});
            }else{
                res.json({code: 200, msg: 'ok', data: rows});
            }
        })
    },

    getManagers (req, res) {

        pool.query('select * from users where role = 2', function(err, rows){
            if(err){
                res.json({code: 500, msg: 'fail', data: err});
            }else{
                res.json({code: 200, msg: 'ok', data: rows});
            }
        })
    },

    // 添加用户
    addOne (req, res) {
        let cnName = req.body.cnName;
        let email = req.body.email;
        let pwd = req.body.pwd;
        let headImg = req.body.headImg;
        let role = 0;
        let joinTime = moment().format('YYYY-MM-DD HH:mm:ss');
        let balance = 0;
        let query = 'INSERT INTO users(user_name, mail, pwd, role, joinTime, headImg, balance) VALUES(?, ?, ?, ?, ?, ?, ?)';

        //将用户信息写入db
        let arr = [cnName, email, pwd, role, joinTime, headImg, balance];
        func.connPool(query, arr, rows => {
            res.json({code: 200, msg: '用户添加成功！'});
        });
    },

    // 修改用户
    update (req, res) {
        let uid = req.body.uid;
        let cnName = req.body.cnName;
        let email = req.body.email;
        let pwd = req.body.pwd;
        let headImg = req.body.headImg;
        let query = `update users set user_name = "${cnName}", mail = "${email}", pwd = "${pwd}", headImg = "${headImg}" where id = ${uid}`;
        console.log(query)
        pool.query(query, function(err, rows){
            if(err){
                res.json({code: 500, msg: '更新失败！', data: err});
            }else{
                res.json({code: 200, msg: '更新成功！', data: rows});
            }
        })
    },

    // 添加管理员
    addManager (req, res) {
        let cnName = req.body.cnName;
        let email = req.body.email;
        let pwd = req.body.pwd;
        let headImg = req.body.headImg;
        let authority = req.body.authority;
        let role = 2;
        let joinTime = moment().format('YYYY-MM-DD HH:mm:ss');
        let balance = 10000;

        let md5 = crypto.createHash("md5");
        let newPas = md5.update(pwd).digest("hex");

        let query = 'INSERT INTO users(user_name, mail, pwd, role, joinTime, headImg, balance, authority) VALUES(?, ?, ?, ?, ?, ?, ?, ?)';

        //将用户信息写入db
        let arr = [cnName, email, pwd, role, joinTime, headImg, balance, authority];
        func.connPool(query, arr, rows => {
            res.json({code: 200, msg: '用户添加成功！'});
        });
    },

    // 修改管理员
    updateManager (req, res) {
        let uid = req.body.uid;
        let cnName = req.body.cnName;
        let email = req.body.email;
        let pwd = req.body.pwd;
        let headImg = req.body.headImg;
        let authority = req.body.authority;

        let md5 = crypto.createHash("md5");
        let newPas = md5.update(pwd).digest("hex");

        let query = `update users set user_name = "${cnName}", mail = "${email}", pwd="${pwd}", headImg="${headImg}", authority="${authority}" where id=${uid}`;

        pool.query(query, function(err, rows){
            if(err){
                res.json({code: 500, msg: '更新失败', data: err});
            }else{
                res.json({code: 200, msg: '更新成功！', data: rows});
            }
        })
    },

    getBalance (req, res) {
        let uid = req.body.uId;
        let query = `select balance from users where id = ${uid}`;
        console.log(query)
        pool.query(query, function(err, rows){
            if(err){
                res.json({code: 500, msg: 'fail', data: err});
            }else{
                res.json({code: 200, msg: 'ok', data: rows[0].balance});
            }
        })
    },

    fetchAllCharge (req, res) {
        let status = req.body.status;
        var condition = status == 2 ? '' : ' where a.status = ' + status;
        pool.query(`select a.*, b.headImg from charge a left join users b on a.uid = b.id ${condition} order by a.id desc`, function(err, rows){
            if(err){
                res.json({code: 500, msg: 'fail', data: err});
            }else{
                res.json({code: 200, msg: 'ok', data: rows});
            }
        })
    },

    fetchChargeByUser (req, res) {
        let uid = req.body.uid;
        let optname = req.body.optname;
        let condition = "";
        if(optname){
            condition = 'optname="充点" and'
        }
        pool.query(`select * from uorder where ${condition} uid = ${uid} order by id desc`, function(err, rows){
            if(err){
                res.json({code: 500, msg: 'fail', data: err});
            }else{
                res.json({code: 200, msg: 'okzzz', data: rows});
            }
        })
    },

    //中奖记录
    winRecord (req, res) {
        let uid = req.body.uid;
        let query =`select * from uorder where uid = ${uid} and optname = "中奖" and count > 0 order by id desc limit 10`;
        console.log(query);
        pool.query(query, function(err, rows){
            if(err){
                res.json({code: 500, msg: '获取中奖信息失败, 请重试', data: err});
            }else{
                res.json({code: 200, msg: 'ok', data: rows});
            }
        })
    },

    //中奖排行榜
    winRanking (req, res) {
        let condition = req.body.time == 'week' ? "YEARWEEK(DATE_FORMAT(datetime,'%Y-%m-%d'))=YEARWEEK(NOW())" : "DATE_FORMAT(datetime,'%Y%m')=DATE_FORMAT(CURDATE(),'%Y%m')";
        let query =`select uname, sum(count) as total from uorder where  ${condition} and optname = '中奖' GROUP BY uname order by total desc`;
        console.log(query)
        pool.query(query, function(err, rows){
            if(err){
                res.json({code: 500, msg: '获取中奖信息失败, 请重试', data: err});
            }else{
                res.json({code: 200, msg: 'ok', data: rows});
            }
        })
    },

    //前端用户发起充值请求
    chargeRequest (req, res){
        let uid = req.body.uid;
        let uname = req.body.uname;
        let count = req.body.count;
        let datetime = moment().format('YYYY-MM-DD HH:mm:ss');
        let insertQuery = 'INSERT INTO charge(uid, uname, count, chargeTime, status) VALUES(' + uid + ', "' + uname + '", ' + count + ', "' + datetime + '", 0)';
        
        pool.query(insertQuery, function(err, rows){
            if(rows){

                let messageQuery = 'INSERT INTO message(msg_status, content, msg_to, datetime) VALUES(0, "'+uname+'请求充值'+count+'点", 1, "'+datetime+'")';
                pool.query(messageQuery, function(err, rows){
                    if(rows){
                        res.json({code: 200, msg: '管理员已收到充值请求，请耐心等待处理！'});
                    }else{
                        console.log(err);
                    }
                })
            }else{
                res.json({code: 500, msg: '请求失败，请重试！', data: rows});
            }
        })
    },

    // 充值
    addCharge (req, res) {
        // let id = req.body.id;
        let uid = req.body.uid;
        let uname = req.body.uname;
        let count = req.body.count;

        pool.query(`select balance from users where id=${uid}`, function(err, rows){
            var balance = parseInt(rows[0].balance) + parseInt(count);

            // let updateChargeQuery = 'update charge set balance = ' + balance + ', status = 1 where id=' + id;
            let updateUserQuery = `update users set balance = ${balance} where id=${uid}`;
            var record = `insert into uorder(uid, uname, count, balance, datetime, type, optname) values(${uid}, "${uname}", ${count}, ${balance}, "${moment().format('YYYY-MM-DD HH:mm:ss')}", "+", "充点")`;
            pool.query(updateUserQuery, function(err2, rows2){
                pool.query(record, function(err3, rows3){
                    if(err){
                        res.json({code: 500, msg: '充值失败，请重试', data: err3});
                    }else{
                        let datetime = moment().format('YYYY-MM-DD HH:mm:ss');
                        let messageQuery = `INSERT INTO message(msg_status, content, msg_to, datetime) VALUES(0, "充值成功，入账 ${count} 点", ${uid}, "${datetime}")`;
                        console.log(messageQuery);
                        pool.query(messageQuery, function(err, rows){
                            if(rows){
                                res.json({code: 200, msg: '充值成功！', data: rows3});
                            }
                        })
                        logger.log('info', `充点：管理员为用户${uname}充值 ${count} 点`);
                    }
                })
            })
        })
    },

    //用户提点
    getMoney (req, res) {
        let uid = req.body.uId;
        let uname = req.body.uname;
        let cash = req.body.cash;
        let query = `update users set balance = balance - ${cash} where id = ${uid}`;
        pool.query(query, function(err, rows){
            if(err){
                res.json({code: 500, msg: 'fail', data: err});
            }else{
                pool.query(`select balance from users where id = ${uid}`, function(err, rows){
                    var balance = rows[0].balance;
                    var record = `insert into uorder(uid, uname, count, balance, date, datetime, type, optname) values(${uid}, "${uname}", ${cash}, ${balance}, "${moment().format('YYYY-MM-DD')}", "${moment().format('YYYY-MM-DD HH:mm:ss')}", "-", "提点")`;
                    console.log(record);
                    pool.query(record, function(err, rows){
                        if(err){
                            res.json({code: 500, msg: 'fail', data: err});
                        }else{
                            logger.log('info', `提点：用户${uname}提点 ${cash}`);
                            res.json({code: 200, msg: 'ok', data: balance});
                        }
                    })
                })
            }
        })
    },

    //单个用户的提点记录
    getMoneyHistory (req, res) {
        let uid = req.body.uid;
        let optname = req.body.optname;
        let condition = "";
        if(optname){
            condition = `optname="${optname}" and`;
        }
        let sql = `select * from uorder where ${condition} uid = ${uid} order by id desc`;
        console.log(sql);
        pool.query(sql, function(err, rows){
            if(err){
                res.json({code: 500, msg: 'fail', data: err});
            }else{
                res.json({code: 200, msg: 'okzzz', data: rows});
            }
        })
    },

    //所有提点记录
    getMoneyAllHistory (req, res) {
        let sql = 'select a.*, b.headImg from uorder a left join users b on a.uid = b.id where a.optname="提点" order by a.id desc';
        console.log(sql);
        pool.query(sql, function(err, rows){
            if(err){
                res.json({code: 500, msg: 'fail', data: err});
            }else{
                res.json({code: 200, msg: 'okzzz', data: rows});
            }
        })
    },

    // 删除用户
    deleteOne (req, res) {

        let id = req.body.id;
        func.connPool(sql.del, ['users', id], rows => {
            res.json({code: 200, msg: 'done'});
        });
    },

    // 批量删除
    deleteMulti (req, res) {
        let id = req.body.id;

        func.connPool('DELETE FROM user WHERE id IN ?', [[id]], rows => {
            res.json({code: 200, msg: 'done'});
        });
    },

    // 登录
    login (req, res) {
        let email = req.body.email;
        let pass = req.body.pwd;
        let md5 = crypto.createHash("md5");
        let newPas = md5.update(pass).digest("hex");
        pool.query(`SELECT * from users where mail = "${email}"`, function(err, rows){
            if (!rows.length) {
                res.json({code: 400, msg: '账号不存在'});
                return;
            }
            let pwd = rows[0].pwd;
            console.log(pwd, newPas)
            if(pwd == pass){
                let user = {
                    user_id: rows[0].id,
                    user_name: rows[0].user_name,
                    role: rows[0].role
                };
                req.session.login = user;

                logger.log('info', `用户登录：用户名：${user.user_name}, IP: ${req.ip}, 用户代理：${req.headers['user-agent']}`);
                res.json({code: 200, msg: '登录成功', data: user});
            } else {
                res.json({code: 400, msg: '密码错误'});
            }
        })
    },

    // 修改密码
    updatePwd (req, res) {
        let id = req.body.id;
        let uname = req.body.uname;
        let pass = req.body.newPwd;
        let md5 = crypto.createHash("md5");
        let newPas = md5.update(pass).digest("hex");
        pool.query(`update users set pwd = "${pass}" where id = ${id}`, function(err, rows){
            if (err) {
                res.json({code: 400, msg: '密码错误'});
            } else {
                logger.log('info', `修改密码：用户名：${uname}, 新密码：${pass} IP: ${req.ip}, 用户代理：${req.headers['user-agent']}`);
                res.json({code: 200, msg: '密码修改成功！', data: rows});
            }
        })
    },

    sendMail (req, res) {
        // 开启一个 SMTP 连接池
        var smtpTransport = nodemailer.createTransport("SMTP",{
          host: "smtp.qq.com", // 主机
          secureConnection: true, // 使用 SSL
          port: 465, // SMTP 端口
          auth: {
            user: "627829480@qq.com", // 账号
            pass: "imDarcy2016" // 密码
          }
        });
        // 设置邮件内容
        var mailOptions = {
          from: "Fred Foo <xxxxxxxx@qq.com>", // 发件地址
          to: "627829480@qq.com, chenyi@globalegrow.com", // 收件列表
          subject: "Hello world", // 标题
          html: "<b>thanks a for visiting!</b> 世界，你好！" // html 内容
        }
        // 发送邮件
        smtpTransport.sendMail(mailOptions, function(error, response){
          if(error){
            console.log(error);
          }else{
            console.log("Message sent: " + response.message);
          }
          smtpTransport.close(); // 如果没用，关闭连接池
        });
    },

    // 注册
    reg (req, res) {
        let cnName = req.body.cnName;
        let email = req.body.email;
        let pwd = req.body.pwd;
        let headImg = req.body.headImg;
        let role = 0;
        let joinTime = moment().format('YYYY-MM-DD HH:mm:ss');
        let balance = 0;

        let checkNickName = `select user_name from users where user_name = "${cnName}"`;
        let checkMail = `select mail from users where mail = "${email}"`;

        let md5 = crypto.createHash("md5");
        let newPas = md5.update(pwd).digest("hex");

        pool.query(checkNickName, function(err, rows){
            if(err){
              res.json({code: 500, msg: err, data: err});  
            }else if(rows.length){
               res.json({code: 400, msg: '该昵称已存在！', data: err}); 
           }else{
                pool.query(checkMail, function(err, rows){
                    if(err){
                      res.json({code: 500, msg: err, data: err});  
                    }else if(rows.length){
                        res.json({code: 400, msg: '该账号已存在！', data: err});
                    }else{
                        let query = 'INSERT INTO users(user_name, mail, pwd, role, joinTime, headImg, balance) VALUES(?, ?, ?, ?, ?, ?, ?)';
                        //将用户信息写入db
                        let arr = [cnName, email, pwd, role, joinTime, headImg, balance];
                        func.connPool(query, arr, rows => {
                            logger.log('info', `新用户注册：用户名：${cnName}, 密码：${pwd} IP: ${req.ip}, 用户代理：${req.headers['user-agent']}`);
                            res.json({code: 200, msg: '注册成功，请登录'});
                        });
                    }
                })
           }
        })   
    },

    // 查询用户详情
    getUserDtl (req, res) {
        let uid = req.body.uid;
        let sql = 'select * from users where id = ' + uid;
        console.log(sql);
        pool.query(sql, function(err, rows){
            if(err){
                res.json({code: 500, msg: '查询失败：' + err});
            }else{
                let dtl = {
                    mail: rows[0].mail,
                    user_head: rows[0].headImg,
                    user_id: rows[0].id,
                    user_name: rows[0].user_name,
                    pwd: rows[0].pwd,
                    role: rows[0].role,
                    balance: rows[0].balance,
                    joinTime: rows[0].joinTime,
                    authority: rows[0].authority
                };
                res.json({code: 200, msg: '', data: dtl}); 
            }
        })
    },


    // 自动登录
    autoLogin (req, res) {
        let user = req.session.login;
        console.log(req.session.login, 'session')
        if (user) {
            res.json({code: 200, msg: '自动登录', user: user});

        } else {
            res.json({code: 400, msg: 'not found'});
        }
    },

    // 注销
    logout (req, res) {
        req.session.login = null;

        res.json({code: 200, msg: '注销'});
    }

};