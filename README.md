# 流马-低代码测试平台
## 一、项目概述

流马是一款低代码自动化测试平台，旨在采用最简单的架构统一支持API/WebUI/AppUI的自动化测试。平台采用低代码设计模式，将传统测试脚本以配置化实现，从而让代码能力稍弱的用户快速上手自动化测试。同时平台也支持通过简单的代码编写实现自定义组件，使用户可以灵活实现自己的需求。

本项目分为平台端和引擎端，采用分布式执行设计，可以将测试执行的节点(即引擎)注册在任意环境的任意一台机器上，从而突破资源及网络限制。同时，通过将引擎启动在本地PC上，方便用户快速调试测试用例，实时查看执行过程，带来传统脚本编写一致的便捷。

项目体验地址: [演示环境](http://demo.liumatest.cn)，用户名密码: demo/123456

官网地址: [流马官网](http://www.liumatest.cn)

社区地址: [流马社区](http://www.liumatest.cn/community)

如果本项目对您有帮助，请给我们一个Star，您的支持是我们前进的动力。

## 二、功能介绍

![system](https://user-images.githubusercontent.com/96771570/221833391-9d35308a-3f90-47c7-9e9d-e62fc1201f18.png)

1. API测试
```
(1) 支持单接口测试和链路测试。
(2) 支持接口统一管理，支持postman/swagger导入。
(3) 支持一键生成字段校验的接口健壮性用例。
(4) 支持全局变量、关联、断言、内置函数、自定义函数。
(5) 支持前后置脚本、失败继续、超时时间、等待/条件/循环等逻辑控制器。
(6) 支持环境与用例解耦，多种方式匹配域名，让一套用例可以在多个环境上执行。
```

2. WebUI测试
```
(1) 支持关键字驱动，零代码编写用例。
(2) 支持UI元素统一管理，Excel模板批量导入。
(3) 支持自定义关键字，封装公共的操作步骤，提升用例可读性。
(4) 支持本地引擎执行，实时查看执行过程。
(5) 支持与API用例在同一用例集合顺序执行。
```

3. AppUI测试
```
(1) 支持WebUI同等用例编写和执行能力
(2) 支持安卓和苹果系统
(3) 支持持真机管理、投屏和在线操作
(4) 支持控件元素在线获取，一键保存元素
(5) 支持实时查看执行过程
```

更多功能及详细请参考: [用户手册](https://docs.qq.com/doc/p/1e36932d41b40df896c1627a004068df9a28fc3f)


## 三、开发环境

环境依赖: nodejs 14、java 1.8、mysql 8

IDE推荐: vue使用VSCode、java使用IDEA

1. 前端启动
```
# 切换目录
cd Liuma-platform/LiuMa-frontend

# 安装依赖
npm install

# 启动项目
npm run dev
```

2. 后端启动
```
Step1: IDEA打开目录 Liuma-platform/LiuMa-backend

Step2: maven安装依赖

Step3: 新建数据库名: liuma

Step4: 配置application.properties数据库连接

Step5: 配置七牛云存储截图 也可以将云存储开关关闭使用服务器存储

Step6: 配置邮箱服务 支持163/qq等各类邮箱的smtp协议 默认关闭邮件通知

Step7: 启动LiuMaApplication文件
```

3. 验证启动成功

项目启动后，默认会新建两个用户: 系统管理员LMadmin/Liuma@123456、演示项目的项目管理员demo/123456

使用上述初始用户登录平台，登录成功，即表示项目启动成功

4. 第三方服务

（一）七牛云存储

主要用于存放UI测试执行截图，不配置不影响平台运行
```
Step1: 注册七牛云账号，开通空间存储服务

Step2: 创建存储空间bucket，获取ak/sk信息，同时获取加速域名和上传域名

Step3: 配置文件打开云存储开关，将以上信息填写在文件~/application.properties对应位置
```
（二）邮件服务

主要用于计划执行完成后的结果通知，不配置不影响平台运行，下面以163邮箱为例
```
Step1: 登录163邮箱，在设置中开启SMTP服务，保存秘钥token

Step2: 获取邮箱SMTP服务地址: smtp.163.com、邮箱地址、秘钥token

Step3: 配置文件打开邮件服务开关，将以上信息填写在文件~/application.properties对应位置
```


## 四、容器部署

容器部署请参考: [部署手册](https://docs.qq.com/doc/p/c989fa8bf467eca1a1e0fa59b32ceab017407168)


## 五、关于我们

流马秉持着帮助中小企业的测试团队快速建立自动化体系的目标，将会不断迭代并吸取用户的建议，欢迎大家给我们提出宝贵的意见。

如需学习平台开发相关内容或在线交流，可关注个人微信公众号【流马测试】

![qr](https://user-images.githubusercontent.com/96771570/161195670-3868f409-ed49-431f-8650-185e3e179679.png)

