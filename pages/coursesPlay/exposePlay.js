define(function(require) {
	require("css!../../assets/style/base").load();
	require("../../assets/echart/dist/echarts-all");
	require("../../assets/js/AppUtils");
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var allData = require("../../assets/js/loadData");
	var Server = require('../../assets/server');
	var url;
	window.courseModel = null;
	
	var anisArray = [];
	var anisJson = {};
	var self = null;
	var liveTimer = null;	// 控制图片刷新
	var loadControlAniTimer = null;
	var durationArray = [1,3,5,10];
	var durationDelay = 600;
	
	var Model = function() {
		this.callParent();
		this.title = justep.Bind.observable('');
		this.button = justep.Bind.observable('');
		
//		皮肤电
		this.skinInfo =  justep.Bind.observable("");
		
		this.data_controller_name1 = justep.Bind.observable('');
		this.data_controller_name2 = justep.Bind.observable('');
		this.data_controller_name3 = justep.Bind.observable('');
		this.data_controller_name4 = justep.Bind.observable('');
		this.data_controller_name5 = justep.Bind.observable('');
		this.data_controller_name6 = justep.Bind.observable('');
		this.data_controller_name7 = justep.Bind.observable('');
		this.data_controller_name8 = justep.Bind.observable('');
		this.data_controller_name9 = justep.Bind.observable('');
		
		anisJson = {
		c1:this.data_controller_name1, 
		c2:this.data_controller_name2,
		c3:this.data_controller_name3,
		c4:this.data_controller_name4,
		c5:this.data_controller_name5,
		c6:this.data_controller_name6,
		c7:this.data_controller_name7,
		c8:this.data_controller_name8,
		c9:this.data_controller_name9
		};
	};
	
	Model.prototype.modelLoad = function(event){
		self = this;
		window.skinFeelStart = true;
		window.skinController.startSkinGather();	
		//初始化图表
		this.initEchart();
	};
	
	Model.prototype.goToSave = function(){
		//停止发送Live请求
		if (liveTimer != null) {
			clearInterval(liveTimer);
			liveTimer = null;
		}
		
		if (loadControlAniTimer != null) {
			clearInterval(loadControlAniTimer);
			loadControlAniTimer = null;
		}
		
		this.saveSkinData('skin');
		var that = this;
		Server.stopCourse({
				eventKind: 40,
				lid: courseModel.lid
			}).then(function(data){
				url = '$UI/OTO/pages/coursesPlay/courseResult.w';
				courseModel.result = {};
				for(var i in data){
					if(1 !== 'ret'){
						courseModel.result[i] = data[i];
					}
				}
				that.modelUnLoad();
				justep.Shell.showPage(url, courseModel);
			});
		window.skinController.stopSkinGather();
		window.skinFeelStart = false;
		window.skinController.stopSkinGather();
	}
	
	//	获取当前页面的皮肤电数据
	Model.prototype.saveSkinData = function(name){
		Server.skinData(name, window.skinArraylist);
	}
	
	Model.prototype.modelParamsReceive = function(event){
		if (!event.hasOwnProperty("params")) {
			console.log("no params");
			justep.Shell.closePage();
			return;
		}
		
		self = this;
		
//		获取参数
		var params = event.params;
		courseModel = params;
		this.title.set(params.title);
		this.button.set(params.button);
		url = params.next;
		
//		var duration = params.duration;
		
//		durationDelay = durationArray[duration - 1];
//		if (durationDelay > 0 && durationDelay < 15) {
//			durationDelay = durationDelay * 60;
//			
//			setTimeout(function() {
//				self.goToSave();
//			}, durationDelay * 1000);
//		}
		
		//得到直播图片
		var liveImage = self.getElementByXid("liveImage");
		
		//清理以前的直播Timer
		if (liveTimer != null && liveTimer != undefined) {
			clearInterval(liveTimer);
		}
		
		//开始直播请求
		liveTimer = setInterval(function() {
			if (liveImage.complete == true) {
				console.log("get live image");
				liveImage.src = window.picture + "/live/get?id=" + courseModel.lid + "&time=" + (new Date()).getTime();
			}
		}, 200);
		
		this.getActions();
	}
	
// from zhiyong
	
//		动作列表相关的操作
	Model.prototype.getActions = function(){
		console.log(courseModel.page);
		
		//除去 面试、汇报、公众演讲 动作列表是死的
		if( courseModel.page === 'interview' || courseModel.page === 'speech' || courseModel.page === 'public' ){
			
			//动作列表相关的操作
			$('#asyncActions').show();
			$('#staticActions').hide();
			
			for (var i = 1; i <= 9; i++) {
				var btn = self.getElementByXid("selectSocialButton" + i);
				if (btn == null) continue;
				btn.style.display = "none";
			}
			
			if (loadControlAniTimer != null && loadControlAniTimer != undefined) {
				clearInterval(loadControlAniTimer);
			}
			
			console.log("exposePlay getActions");
			
			loadControlAniTimer = setInterval(function() {
				console.log("exposePlay get_controller_ani_list");
				
				Server.getActions({
					action: 'get_controller_ani_list',
					uid : window.uid
				}).then(function(data){
					if (data == null || data.anis == null || data.anis == "") {
						console.log("get_controller_ani_list data is null");
						return;
					}
					
					anisArray = data.anis.split(',');
					if (anisArray.length == 0) {
						console.log("get_controller_ani_list anisArray is null");
						return;
					}
					
					console.log("controller_ani_list length"+anisArray.length + " anis:" + data.anis);
					
					//清理Timer
					clearInterval(loadControlAniTimer);
					
					for (var i = 0; i < anisArray.length; i++) {
						if (i >= 9) {
							continue;
						}
						
						var btn = self.getElementByXid("selectSocialButton" + (i + 1));
						if (btn == null) continue;
						btn.style.display = "";
						
						anisJson["c" + (i + 1)].set(anisArray[i]);
//						self.getElementByXid("c" + (i + 1)).style.display = "";
					}
					$('#asyncActions').show();
					$('#staticActions').hide();
	
					//justep.Util.hint("controller anis:" + anisArray.length, {"position" : "bottom"});
				});
			}, 2000);
		}else{
			$('#staticActions').show();
			$('#staticActions > div').hide();
			$('#staticActions > #'+courseModel.page).show();
			$('#asyncActions').hide();
		}
	};
	
	Model.prototype.startclick = function(event) {

		window.skinFeelStart = true;

	}

	Model.prototype.andclick = function(event) {

		window.skinArraylist = {};
		window.skinFeelStart = true;

	}

	Model.prototype.endclick = function(event) {

		window.skinFeelStart = flase;

	}

	Model.prototype.button3Click = function(event) {

	};

	Model.prototype.openPageClick = function(event) {

	};

	Model.prototype.modelUnLoad = function(event) {
		if (liveTimer != null) {
			clearInterval(liveTimer);
			liveTimer = null;
		}
		
		if (loadControlAniTimer != null) {
			clearInterval(loadControlAniTimer);
			loadControlAniTimer = null;
		}
	};

	function control(me, index) {
		var val = index + ",0,0,0,0";
		
		console.log("control:" + index);
		
		var params = {
			device : window.device,
			eventKind : 22,
			value : val,
			uid : window.uid,
			session : window.session
		};
		$.getJSON(AppUtils.getUrl("app/order?action=app_order"), params, function(data) {
			console.log("control:" + data.msg);
		});
	}
	;

	Model.prototype.controller1Click = function(event) {
		control(this, 1);
	};

	Model.prototype.controller2Click = function(event) {
		control(this, 2);
	};

	Model.prototype.controller3Click = function(event) {
		control(this, 3);
	};

	Model.prototype.controller4Click = function(event) {
		control(this, 4);
	};

	Model.prototype.controller5Click = function(event) {
		control(this, 5);
	};

	Model.prototype.controller6Click = function(event) {
		control(this, 6);
	};

	Model.prototype.controller7Click = function(event) {
		control(this, 7);
	};

	Model.prototype.controller8Click = function(event) {
		control(this, 8);
	};

	Model.prototype.controller9Click = function(event) {
		control(this, 9);
	};
	Model.prototype.controller10Click = function(event) {
		control(this, 10);
	};
	
	Model.prototype.initEchart = function(){		
		myChartClock = echarts.init($('#echartExpose')[0]);
		window.options.series.length = 1;
//		window.options.yAxis[0].max = 10;
		options.series[0].data = [];
		myChartClock.setOption(options, true);
	};
	
//	动态更新图表方法
	updateEchart = (function(){
		var len = 0,
			displayData = [];
		return function(flag){
			if(flag){
				len = 0;
				displayData = [];
			}
			var nLen = window.skinArraylist.length;
			for(var i = len; i < nLen; i++ ){
				displayData.push([window.skinTimeList[i]||+new Date(), window.skinArraylist[i]]);
			}
			len = nLen;
//			保留展示的100条数据
			var show = 100;
			var resLen = displayData.length;
			if(resLen <= show){
				options.series[0].data = displayData.slice(0, resLen);
			}else{
				options.series[0].data = displayData.slice(resLen-show, resLen);
			}
			try{
				window.myChartClock.setOption(options);
			}catch(e){
				console.log(e);
			}
		}
	})();
	
	Model.prototype.goBack = function(event){
		//停止发送Live请求
		if (liveTimer != null) {
			clearInterval(liveTimer);
			liveTimer = null;
		}
		
		if (loadControlAniTimer != null) {
			clearInterval(loadControlAniTimer);
			loadControlAniTimer = null;
		}
		this.close();
	};
	
	return Model;
});