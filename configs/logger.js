let winston = require('winston');
let moment = require('moment');

let logger = new (winston.Logger)({
    transports: [
        new (winston.transports.Console)(),
        new (winston.transports.File)({
            filename: './log/event.log',
            timestamp:function() {
	        	return moment().format('YYYY-MM-DD HH:mm:ss');
	      	},
            maxsize: 10485760,
            maxFiles: 10 })
    ]});

module.exports = logger;