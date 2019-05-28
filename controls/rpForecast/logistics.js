const mysql = require('mysql');
const db = require('../../configs/db');
const pool = mysql.createPool(db);
const path = require("path")
const fs = require("fs")
const sql = require('../../sql/sql');
const moment = require('moment');
const bcrypt = require('bcryptjs');
const func = require('../../sql/func');
const crypto = require("crypto");
const nodemailer = require("nodemailer");
const logger = require('../../configs/logger.js');
const logisticsListData = path.join(__dirname, '/data/logisticsListData.json');
const skuDetailData = path.join(__dirname, '/data/skuDetailData.json');
const traceInfoData = path.join(__dirname, '/data/traceInfoData.json');

console.log(logisticsListData, 333)

module.exports = {

    getList(req, res) {
        let {offset, limit, condition} = req.body;
        let _conditionArr = [];
        let _arr = [];

        new Promise((resolve, rejecte) => {
            fs.readFile(logisticsListData, function (err, data) {
                if (err) {
                    rejecte(err);
                }
                resolve(JSON.parse(data.toString()));
            });
        }).then((data) => {
            // let _obj = {};
            // for (let i in condition) {
            //     if (condition[i]) {
            //         _obj[i] = condition[i];
            //     }
            // }
            // if (Object.keys(_obj).length > 0) {
                // _conditionArr = data.filter(item => {
                //     // for (let i in _obj) {
                //     //     if (item[i])
                //     // }
                //     if (item.logisticsNum === condition.logisticsNum) {
                //         return item;
                //     }
                // })
            // } else {
                _conditionArr = data
            // }
            let from = (offset - 1) * 20;

            for (let i = from; i < from + limit; i++) {
                _conditionArr[i] && _arr.unshift(_conditionArr[i])
            }
            // console.log(offset, from, _arr)
            res.json({
                "code": 900000403,
                "success": true,
                "message": "success",
                "level": "DEBUG",
                "curtime": new Date().getTime(),
                "data": {
                    'total': _conditionArr.length,
                    'list': _arr
                }
            });
        });
    },

    getkSkuDetail(req, res) {
        let {id} = req.body;
        new Promise((resolve, rejecte) => {
            fs.readFile(skuDetailData, function (err, data) {
                if (err) {
                    rejecte(err);
                }
                resolve(JSON.parse(data.toString()));
            });
        }).then((data) => {
            // if (condition.roleName) {
            //     _conditionArr = data.filter(item => {
            //         if (item.roleName === condition.roleName) {
            //             return item;
            //         }
            //     })
            // } else {
                _conditionArr = data
            // }

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
                    'list': _arr
                }
            });
        });
    },

    getTraceInfo(req, res) {
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
    }

};