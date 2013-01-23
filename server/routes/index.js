
/**
 * SmartScene Server
 * @author JerryChan @ Smartcocoa
 */

var template = require('swig');
var express = require('express');
var exec = require('child_process').exec;

var app = express();
var root = __dirname + '/../';
var tmpl = template.compileFile(root + 'views/index.html');

var publicPath = root + 'public/';
var fileName = 'scene.jpg';


var sceneShotAction = function(_x, _y, _w, _h) {
    console.log('publicPath:' + publicPath);
    var saveFileName = publicPath + 'images/' + fileName;
    exec('screencapture -R' + _x + ',' + _y + ',' + _w + ',' + _h + ' -tjpg ' + saveFileName);
};

var staticIndex = function(req, res) {
    var tplData = {};
    tplData.title = 'Smart Scene';
    tplData.mode = 'static';
    tplData.image = '/images/' + fileName;
    var html = tmpl.render(tplData);
    console.log('html:' + html);
    res.send(html);
};

var index = function(req, res) {
    var tplData = {};
    tplData.title = 'Smart Scene';
    tplData.mode = 'normal';
    tplData.image = '/' + fileName;
    var html = tmpl.render(tplData);
    console.log('html:' + html);
    res.send(html);
};

var scene = function(_req, _res) {
    console.log('scene shot...');

    // 这里设置你需要屏幕截图的区域
    // sceneShotAction(786, 196, 640, 1136);
    sceneShotAction(536, 446, 1136, 640);

    _res.redirect('/images/' + fileName);
    return;
};

exports.index = index;
exports.staticIndex = staticIndex;
exports.scene = scene;
