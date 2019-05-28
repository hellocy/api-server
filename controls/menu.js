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

    fetchAll (req, res) {
        let param = req.body;
        res.json({
                "code": 0,
                "success": true,
                "message": "success",
                "level": "DEBUG",
                "curtime": "1557972695423",
                "data": [{
                    "menuList": [{
                        "id": "1",
                        "parentId": "0",
                        "url": "",
                        "perms": "",
                        "type": 0,
                        "icon": "fa fa-cog",
                        "orderNum": 0,
                        "createId": "0",
                        "createName": "",
                        "createTime": 0,
                        "updateId": "0",
                        "updateName": "",
                        "updateTime": 0,
                        "list": [{
                                "id": "2",
                                "parentId": "1",
                                "url": "rmp/sys/user.html",
                                "perms": "",
                                "type": 1,
                                "icon": "fa fa-user",
                                "orderNum": 1,
                                "createId": "0",
                                "createName": "",
                                "createTime": 0,
                                "updateId": "0",
                                "updateName": "",
                                "updateTime": 0,
                                "name": "管理员列表"
                            },
                            {
                                "id": "3",
                                "parentId": "1",
                                "url": "/system/role_manage/list",
                                "perms": "",
                                "type": 1,
                                "icon": "fa fa-user-secret",
                                "orderNum": 2,
                                "createId": "0",
                                "createName": "",
                                "createTime": 0,
                                "updateId": "0",
                                "updateName": "",
                                "updateTime": 0,
                                "name": "角色管理"
                            },
                            {
                                "id": "4",
                                "parentId": "1",
                                "url": "rmp/sys/menu.html",
                                "perms": "",
                                "type": 1,
                                "icon": "fa fa-th-list",
                                "orderNum": 3,
                                "createId": "0",
                                "createName": "",
                                "createTime": 0,
                                "updateId": "0",
                                "updateName": "",
                                "updateTime": 0,
                                "name": "菜单管理"
                            }
                        ],
                        "name": "系统管理"
                    }],
                    "permissions": [
                        "sys:user:info",
                        "sys:user:list",
                        "sys:user:update",
                        "sys:user:save",
                        "sys:role:select"
                    ]
                }]
        });
    }
};