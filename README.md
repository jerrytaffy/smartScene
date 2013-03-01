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
 * 使用”terminal”打开 smartscene的server目录 “smartscene/server”
 * 运行 node app.js 
 * 查看你server的ip
 * 打开client目录，用你自己证书编译一个到你iphone上面
 * 运行后修改目标链接ip地址
 * 按connect即可
 
## 修改显示区域
 * 打开smartscene/server/routes/index.js
 * 修改第 40 行 sceneShotAction(536, 446, 1136, 640);
参数顺序分别是x,y,width,height

## 温馨提示
* 针对小屏幕设计时候无法预览整体效果，增加了”手动模式” 。打开此模式后，server将不再对屏幕进行截图，你只需要新增photoshop一个保存action，保存jpg替代server/public/images/scene.jpg 即可。此模式兼容windows，也等于让没有liveview的windows设计师得到一个即时预览方法，希望你们喜欢。

本人英文水平不太好，文档暂无英文说明，英文好的朋友可帮忙翻译一下。感谢～

如需联系我
mail: jerry@jerry-chan.com


## 更新日志

* 2013.03.01
> 增加ios客户端icon
> 停止运行时自动锁机

* 2013.01.25
> 增加了PhotoShop Action文件，假如你的SmartScene路径跟我一致“/srv/SmartScene/server/app.js” 那么你不需修改就可以直接使用了。巧用PhotoShop的Action和手动模式，有助于你在小屏幕的设计。

* 2013.01.23

> SmartScene针对小屏幕设计时候无法预览整体效果，增加了”手动模式”。不但解决了小屏幕设计iPhone5和iPad3+的苦恼，还解决windows没有liveview的短板。嗯，对的。这个模式是支持Windows的。希望各位设计狮可以喜欢～～ 