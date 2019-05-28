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
const customerListData = path.join(__dirname, '/data/customerListData.json');


module.exports = {

    getList(req, res) {
        let {page, limit, condition} = req.body;
        let _conditionArr = [];
        let _arr = [];

        new Promise((resolve, rejecte) => {
            fs.readFile(customerListData, function (err, data) {
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
                    'rows': _arr
                }
            });
        });
    }

};