let path = '/';

module.exports = {
    // user
    getUserInfo: path + 'auth/ssologin',

    // menu
    menuList: path + 'sys/menu/nav',

    // 系统管理
    systemMmanage: {
        department: {
            getList: path + 'sys/department/list'
        },
        role: {
            getList: path + 'sys/role/list',
            addRole: path + 'sys/role/save',
            deleteRole: path + 'sys/role/delete',
            updateRole: path + 'sys/role/update',
            roleAuthUpdate: path + 'sys/role/menu/save', //角色的编辑
            getRoleMenu: path + 'sys/role/menuList', // 编辑角色权限时，先获取角色菜单,渲染菜单树
            getRoleDetail: path + 'sys/role/roleMenuEdit' //获取保存的角色菜单id
        },
        user: {
            getList: path + 'sys/user/list'
        }
    },

    returnPro: {
        customer: {},
        logistics: {
            getList: path + 'query/rp/logisticsInfo',
            getkSkuDetail: path + 'query/rp/customerInfo',
            getTraceInfo: path + 'tracking/web/trajectory'
        }
    },
    
    // 退件预报->客户退件->列表数据
    getRpCustomerList: path + 'api/subject/getlist',

    // 图片上传
    placeSubjectImage: path + 'place/subjectImage',

    goodsUploadImg: path + 'goods/upload-img',

    //下载
    app: path + 'getapp',
    getipa: path + 'getipa',
    
    getOsInfo: path + 'getOsInfo'

};