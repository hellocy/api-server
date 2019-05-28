let express = require('express');
let user = require('../controls/user');
let menu = require('../controls/menu');
let customer = require('../controls/rpForecast/customer');
let logistics = require('../controls/rpForecast/logistics');
let department = require('../controls/system/department');
let role = require('../controls/system/role');
let api = require('../api');
let upload = require('../utils/upload');
let router = express.Router();

// user
router.post(api.getUserInfo, user.getUserInfo);

// 系统管理-事业部相关
router.post(api.systemMmanage.department.getList, department.getList);

// 系统管理-角色相关
router.post(api.systemMmanage.role.getList, role.getList);
router.post(api.systemMmanage.role.addRole, role.addRole);
router.post(api.systemMmanage.role.deleteRole, role.deleteRole);
router.post(api.systemMmanage.role.updateRole, role.updateRole);
router.post(api.systemMmanage.role.getRoleMenu, role.getRoleMenu);
router.post(api.systemMmanage.role.getRoleDetail, role.getRoleDetail);
router.post(api.systemMmanage.role.roleAuthUpdate, role.roleAuthUpdate);

// 退件预报-客户退件
router.post(api.getRpCustomerList, customer.getList);

// 退件预报-物流退件
router.post(api.returnPro.logistics.getList, logistics.getList);
router.post(api.returnPro.logistics.getkSkuDetail, logistics.getkSkuDetail);
router.post(api.returnPro.logistics.getTraceInfo, logistics.getTraceInfo);

// router.post(api.placeSubjectImage, upload.single('image'),  place.subjectImage);

//查看系统内在占用的接口
// router.get(api.getOsInfo, robot.getOsInfo);

module.exports = router;