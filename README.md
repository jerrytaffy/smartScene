smartScene
==========

开源的IOS设计辅助工具。因为一直在用的LiveView一直不肯支持iPhone5，导致设计的时候总是不爽。所以抽了点时间出来，用了一个BC的方法，写了个简陋山寨版的出来，与君共享。有需要的朋友，有需要修改的朋友请自己起筷吧。

本小工具Server端基于Node进行开发，并且只针对运行于Mac平台。对于window下面的设计师抱歉了，请自己改写一个吧。

## 所需运行环境

* Node.js
http://nodejs.org/

* Express
http://expressjs.com/

* Swig
http://paularmstrong.github.com/swig/

## 使用步骤
 1) 使用”terminal”打开 smartscene的server目录 “smartscene/server”
 2) 运行 node app.js 
 3) 查看你server的ip
 4) 打开client目录，用你自己证书编译一个到你iphone上面
 5) 运行后修改目标链接ip地址
 6) 按connect即可
 
 ## 修改显示区域
 1) 打开smartscene/server/routes/index.js
 2) 修改第 40 行 sceneShotAction(536, 446, 1136, 640);
参数顺序分别是x,y,width,height

如需讨论可链接我
mail: jerry@jerry-chan.com