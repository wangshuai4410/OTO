<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" class="main13" component="$UI/system/components/justep/window/window"
  design="device:mobile;" xid="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:241px;left:673px;"
    onLoad="modelLoad" onParamsReceive="modelParamsReceive" onunLoad="modelUnLoad"/>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel1"> 
    <div class="x-panel-top" xid="top1"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" title="放松训练"
        class="x-titlebar app-title-ctner"> 
        <div class="x-titlebar-left"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon"
            icon="icon-chevron-left" xid="backBtn" bind-click="goBack"> 
            <i class="icon-chevron-left"/>  
            <span>返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title">放松训练</div>  
        <div class="x-titlebar-right reverse"/> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content2"> 
      <div component="$UI/system/components/justep/smartContainer/smartContainer"
        class="x-smartcontainer" xid="smartContainer1"> 
        <div class="ratio-section"> 
          <div class="inner-content"> 
            <img src="$UI/xlzl/img/VR_BG.jpg" alt="" xid="liveImage" bind-click="openPageClick"
              class="tb-img1" pagename="./detail.w" style="background-color:transparent;width:100%;height:200px;"/> 
          </div> 
        </div>  
        <div class="main_padding"> 
          <div class="inner-content main_padding"> 
            <div xid="div1" style="height:300px;" class="center-block"> 
              <div xid="skinInfoDiv" align="left" style="position:relative;left:5px;top:-5px;height:30px;"> 
                <span xid="skinInfoSpan" class="text-black" bind-text="skinInfo"/>
              </div>  
              <div xid="nullAlertDiv2" style="display:none;position:relative;height:0px;width:100%;top:100px;"
                class="text-alert-null">没有数据信息，请正确佩戴皮肤电心率设备</div>  
              <div xid="wave2" id="echart" style="width:100%;height:300px;position: static;"
                class="main"/> 
            </div> 
          </div> 
        </div> 
      </div>  
      <a component="$UI/system/components/justep/button/button" class="btn btn-default button block"
        label="button" xid="button1" bind-click="goToNext"> 
        <i xid="i1"/>  
        <span xid="span1" bind-text="button"/> 
      </a> 
    </div> 
  </div> 
</div>
