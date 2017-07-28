define(function(require){
	require("css!../../assets/style/base").load();
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function(){
		this.callParent();
	};
	
	Model.prototype.goTest = function(type){
		url = "$UI/OTO/pages/userInfo/testView.w";
		justep.Shell.showPage(url);
	}

	return Model;
});