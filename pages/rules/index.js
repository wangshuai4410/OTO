define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var ShellImpl = require('$UI/system/lib/portal/shellImpl');
//	var Config = require('../config/config.js');
//	console.log(COnfig);

	var Model = function() {
		this.callParent();
		
		
		//创建Shell实例
		window.shell=new ShellImpl(this, {
			contentsXid : 'pages', //ShellImpl关联的contents, 即page的显示区域
			pageMappings: {
				main: {
					url: require.toUrl("./main.w")
				},
				
				p2: {
					url: require.toUrl("./interactive/page2.w")
				},
				
				rules: {
					url: require.toUrl("./rules/index.w")
				}
				
			}
		});
	};
//	打开：justep.Shell.showPage(“main”);
//	关闭：this.close();
//	返回上一页：justep.Shell.closePage();
	Model.prototype.modelLoad = function(event) {
//		Config.show();
//		判断是否登录
		var login = false;
		
//		设置显示页面
		justep.Shell.showPage("main");
	};
	
	return Model;
});