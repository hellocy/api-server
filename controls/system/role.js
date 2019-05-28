let mysql = require('mysql');
let db = require('../../configs/db');
let pool = mysql.createPool(db);
const path = require("path")
const fs = require("fs")
const sql = require('../../sql/sql');
const moment = require('moment');
const bcrypt = require('bcryptjs');
const func = require('../../sql/func');
const crypto = require("crypto");
const nodemailer = require("nodemailer");
const logger = require('../../configs/logger.js');
const roleDataJsonFile = path.join(__dirname, '/data/roleListData.json');
const roleMenuDataFile = path.join(__dirname, '/data/roleMenuData.json');
const roleDetailDataFile = path.join(__dirname, '/data/roleDedailData.json');


module.exports = {

    getList(req, res) {
        let param = req.body;
        let page = param.offset;
        let limit = param.limit;
        let condition = param.condition;
        let _conditionArr = [];
        let _arr = [];

        new Promise((resolve, rejecte) => {
            fs.readFile(roleDataJsonFile, function (err, data) {
                if (err) {
                    rejecte(err);
                }
                resolve(JSON.parse(data.toString()));
            });
        }).then((data) => {
            if (condition.roleName) {
                _conditionArr = data.filter(item => {
                    if (item.roleName === condition.roleName) {
                        return item;
                    }
                })
            } else {
                _conditionArr = data
            }

            let from = (page - 1) * 20;

            for (let i = from; i < from + limit; i++) {
                _conditionArr[i] && _arr.unshift(_conditionArr[i])
            }
            res.json({
                "code": 0,
                "success": true,
                "message": "success",
                "level": "DEBUG",
                "curtime": new Date().getTime(),
                "data": {
                    'total': _conditionArr.length,
                    'rows': _arr
                }
            });
        });
    },
    
    // 在写入角色数据的同时，要添加对应的角色权限数据，意味着同时要修改两个文件，且有先后顺序 
    addRole(req, res) {
        let {roleName, remark} = req.body;
        new Promise((resolve, rejecte) => {
            fs.readFile(roleDataJsonFile, function (err, data) {
                if (err) {
                    rejecte(err);
                }
                // data为Buffer类型，先转成字节字符串，再转成对象
                resolve(JSON.parse(data.toString()));
            });
        }).then((data) => {
            return new Promise((resolve, reject) => {
                let newId = data.length;
                data.push({
                    id: newId,
                    roleName: roleName,
                    status: 1,
                    remark: remark,
                    operateMap: {
                        'sys:role:delete': "删除",
                        'sys:role:edit': "编辑",
                        'sys:role:menu:list': "编辑角色权限"
                    },
                    createId: "4",
                    createName: "chenyi",
                    updateId: "0",
                    updateName: "",
                    code: "ADMIN"
                })

                fs.writeFile(roleDataJsonFile, JSON.stringify(data), (err) => {
                    if (err) {
                        reject(err);
                    } else {
                        console.log('新角色数据写入成功, 返回的ID为：' + newId)
                        resolve(newId)
                    }
                });
            })
        }, (err) => {
            res.json({
                "code": 900000001,
                "success": false,
                "message": "保存失败，信息如下：" + err,
                "level": "DEBUG",
                "curtime": new Date().getTime(),
                "data": {}
            });
        }).then((newId) => {
            new Promise((resolve, rejecte) => {
                fs.readFile(roleDetailDataFile, function (err, data) {
                    if (err) {
                        rejecte(err);
                    }
                    // data为Buffer类型，先转成字节字符串，再转成对象
                    resolve(JSON.parse(data.toString()));
                });
            }).then((data) => {
                data.unshift({
                    id: newId,
                    menuIds: [],
                })

                fs.writeFile(roleDetailDataFile, JSON.stringify(data), (err) => {
                    if (err) {
                        res.json({
                            "code": 900000001,
                            "success": false,
                            "message": "保存失败，信息如下：" + err,
                            "level": "DEBUG",
                            "curtime": new Date().getTime(),
                            "data": {}
                        });
                    } else {
                        res.json({
                            "code": 0,
                            "success": true,
                            "message": "保存成功！",
                            "level": "DEBUG",
                            "curtime": new Date().getTime(),
                            "data": {}
                        });
                    }
                });
            })
        });
    },
    
    // 删除角色数据的时候，要先删除对应的角色权限数据，不可以直接删掉角色数据，否则将导致角色权限数据的冗余
    deleteRole(req, res) {
        let {ids} = req.body;        
        new Promise((resolve, rejecte) => {
            fs.readFile(roleDetailDataFile, function (err, data) {
                if (err) {
                    rejecte(err);
                }
                resolve(JSON.parse(data.toString()));
            });
        }).then((data) => {
            return new Promise((resolve, rejecte) => {
                for (let i = 0; i < ids.length; i++) {
                    data.splice(data.findIndex(item => item.id === ids[i]), 1);
                }
                fs.writeFile(roleDetailDataFile, JSON.stringify(data), (err) => {
                    if (err) {
                        rejecte(err);
                    }
                    resolve(ids);
                });
            })
        }).then((ids) => {
            new Promise((resolve, rejecte) => {
                fs.readFile(roleDataJsonFile, function (err, data) {
                    if (err) {
                        rejecte(err);
                    }
                    resolve(JSON.parse(data.toString()));
                });
            }).then((data) => {
                for (let i = 0; i < ids.length; i++) {
                    data.splice(data.findIndex(item => item.id === ids[i]), 1);
                }
                fs.writeFile(roleDataJsonFile, JSON.stringify(data), (err) => {
                    if (err) {
                        res.json({
                            "code": 900000001,
                            "success": false,
                            "message": "删除失败，信息如下：" + err,
                            "level": "DEBUG",
                            "curtime": new Date().getTime(),
                            "data": {}
                        });
                    }
                    res.json({
                        "code": 0,
                        "success": true,
                        "message": "删除成功！",
                        "level": "DEBUG",
                        "curtime": new Date().getTime(),
                        "data": {}
                    });
                });
            })
        }, (err) => {
            res.json({
                "code": 900000001,
                "success": false,
                "message": "删除失败，信息如下：" + err,
                "level": "DEBUG",
                "curtime": new Date().getTime(),
                "data": {}
            });
        });
    },
    
    getRoleMenu(req, res) {
        new Promise((resolve, rejecte) => {
            fs.readFile(roleMenuDataFile, function (err, data) {
                if (err) {
                    rejecte(err);
                }
                // data为Buffer类型，先转成字节字符串，再转成对象
                resolve(JSON.parse(data.toString()));
            });
        }).then((data) => {
            res.json({
                "code": 0,
                "success": true,
                "message": "角色菜单数据获取成功！",
                "level": "DEBUG",
                "curtime": new Date().getTime(),
                "data": {
                    menuList: data
                }
            });
        }, (err) => {
            res.json({
                "code": 900000001,
                "success": false,
                "message": "获取角色菜单数据失败，信息如下：" + err,
                "level": "DEBUG",
                "curtime": new Date().getTime(),
                "data": {}
            });
        });
    },

    getRoleDetail(req, res) {
        let {id} = req.body;

        new Promise((resolve, rejecte) => {
            fs.readFile(roleDetailDataFile, function (err, data) {
                if (err) {
                    rejecte(err);
                }
                // data为Buffer类型，先转成字节字符串，再转成对象
                resolve(JSON.parse(data.toString()));
            });
        }).then((data) => {
            let _data = data.filter(item => item.id === id)
            res.json({
               "code": 0,
               "success": true,
               "message": "获取成功！",
               "level": "DEBUG",
               "curtime": new Date().getTime(),
               "data": {
                   menuIds: _data[0].menuIds
               }
            });
        }, (err) => {
            res.json({
                "code": 900000001,
                "success": false,
                "message": "获取失败，信息如下：" + err,
                "level": "DEBUG",
                "curtime": new Date().getTime(),
                "data": {}
            });
        });
    },

    updateRole(req, res) {
        let {id, roleName, remark} = req.body;        
        new Promise((resolve, rejecte) => {
            fs.readFile(roleDataJsonFile, function (err, data) {
                if (err) {
                    rejecte(err);
                }
                // data为Buffer类型，先转成字节字符串，再转成对象
                resolve(JSON.parse(data.toString()));
            });
        }).then((data) => {
            for (let i = 0; i < data.length; i++) {
                if (data[i].id === id) {
                    data[i].roleName = roleName;
                    data[i].remark = remark;
                    break;
                }
            }
            fs.writeFile(roleDataJsonFile, JSON.stringify(data), (err) => {
                if (err) {
                    res.json({
                        "code": 900000001,
                        "success": false,
                        "message": "更新失败，信息如下：" + err,
                        "level": "DEBUG",
                        "curtime": new Date().getTime(),
                        "data": {}
                    });
                }
                res.json({
                    "code": 0,
                    "success": true,
                    "message": "更新成功！",
                    "level": "DEBUG",
                    "curtime": new Date().getTime(),
                    "data": {}
                });
            });
        });
    },

    roleAuthUpdate(req, res) {
        let {
            roleId,
            menuIds
        } = req.body;
        new Promise((resolve, rejecte) => {
            fs.readFile(roleDetailDataFile, function (err, data) {
                if (err) {
                    rejecte(err);
                }
                // data为Buffer类型，先转成字节字符串，再转成对象
                resolve(JSON.parse(data.toString()));
            });
        }).then((data) => {
            for (let i = 0; i < data.length; i++) {
                if (data[i].id === roleId ) {
                    data[i].menuIds = menuIds;
                    break;
                }
            }
            fs.writeFile(roleDetailDataFile, JSON.stringify(data), (err) => {
                if (err) {
                    res.json({
                        "code": 900000001,
                        "success": false,
                        "message": "删除失败，信息如下：" + err,
                        "level": "DEBUG",
                        "curtime": new Date().getTime(),
                        "data": {}
                    });
                }
                res.json({
                    "code": 0,
                    "success": true,
                    "message": "删除成功！",
                    "level": "DEBUG",
                    "curtime": new Date().getTime(),
                    "data": {}
                });
            });
        });
    }

};