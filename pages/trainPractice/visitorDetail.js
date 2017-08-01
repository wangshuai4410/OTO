define(function(require){
	require("css!../../assets/style/base").load();	
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var Server = require('../../assets/server');
	var userData = null;
	var page = 0;
	var recordItem;

	var Model = function(){
		this.callParent();
		var that = this;
		this.records = justep.Bind.observableArray([]);
		this.user = justep.Bind.observableArray([]);
		this.sexType = function(){
			return 1;
		}
		this.gotDetail = function(){
			console.log(this);
			recordItem = this;
			that.recordDetail()
		}
	};
	
	Model.prototype.modelLoad = function(event){
		
	}
	
//	加载数据
	Model.prototype.loadData = function () {
		var that = this;
		userData = Server.getCurUser();
		this.user.pop();
		this.user.push(userData);
		
		var records = Server.getRecords({
			eventKind: 42,
			vid: page++
		}).then(function(data){
			data.dataList.forEach(function(n, i){
				that.records.push(n);
			});
		});
	}
	
//	开始练习
	Model.prototype.goToLearn = function(){
		var url = "$UI/OTO/pages/trainPractice/psyShow.w";
		justep.Shell.showPage(url);
	}
//	获取当前用户数据
	Model.prototype.goUserInfo = function (){
		var url = "$UI/OTO/pages/userInfo/userInfo.w";
		justep.Shell.showPage(url);
	};
//	去列表详情
	Model.prototype.recordDetail = function(evt){
		var url = "$UI/OTO/pages/trainPractice/relaxFeedback.w";
		justep.Shell.showPage(url, recordItem);
	}
	return Model;
});