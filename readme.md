前后端分离开发时，可用此node项目, 模拟后台api接口

运行步骤：

运行 node i 命令，安装依赖
server.js中的服务端口默认为8899，如果冲突，要先修改
运行 npm start 命令，启动服务
浏览器输入http://localhost:8899,测试页面是否常打开
以上各步骤正常，则服务已正常开启。

接口模拟如下：

在./api.js中，根据项目模块，定义所有api接口
在controls目录下，定义各业务模块的接口方法
在路由./routes/router.js文件中，定义接口与方法的关联
其中，对数据的CURD操作，可以用文件（JSON）模拟，也可以本地搭建测试数据库，这两种方式，本项目中都有相应的方法。数据库（mysql）的配置在configs目录下，文件操作在./controls/rpForeCast/logistics.js文件中有实例。

待优化点：

可以将数据的定义提取出来，单独划分为Modal层。现在跟control层混在一起的
接口的规范尚未在些项目中体现出来，可以集成进来，作为相对完整的项目模板