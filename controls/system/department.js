let mysql = require('mysql');
let db = require('../../configs/db');
let pool = mysql.createPool(db);

let sql = require('../../sql/sql');
let moment = require('moment');
let bcrypt = require('bcryptjs');
let func = require('../../sql/func');

const crypto = require("crypto");

var nodemailer = require("nodemailer");

let logger = require('../../configs/logger.js');

let {departmentData} = require('./_data');

module.exports = {

    getList(req, res) {
        let param = req.body;
        let page = param.offset;
        let limit = param.limit;
        let condition = param.condition;
        let data = departmentData;
        let _conditionArr = [];
        let _arr = [];
        if (condition.name) {
            _conditionArr = data.rows.filter(item => {
                if (item.name === condition.name) {
                    return item;
                }
            })
        } else {
            _conditionArr = data.rows
        }

        let from = (page - 1) * 20;
        
        for (let i = from; i < from + limit; i++) {
            _conditionArr[i] && _arr.push(_conditionArr[i])
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
        return;
    },

    searchList(req, res) {
        var keyword = req.body.keyword;
        pool.query(`select * from users where user_name like "%${keyword}%" or mail like "%${keyword}%" and id != 1`, function(err, rows){
            if(err){
                res.json({code: 500, msg: 'fail', data: err});
            }else{
                res.json({code: 200, msg: 'ok', data: rows});
            }
        })
    }

};