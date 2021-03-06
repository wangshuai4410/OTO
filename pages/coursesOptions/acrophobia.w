<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;"
  xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" onLoad="modelLoad"
    onParamsReceive="modelParamsReceive" style="top:8px;left:271px;height:auto;" onActive="modelLoad" onInactive="modelUnload" onunLoad="modelUnload"/>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel1"> 
    <div class="x-panel-top" xid="top1"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" title="恐高症"
        class="x-titlebar app-title-ctner"> 
        <div class="x-titlebar-left"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon"
            icon="icon-chevron-left" xid="backBtn" bind-click="goBack"> 
            <i class="icon-chevron-left"/>  
            <span>关闭</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title"><![CDATA[恐高症]]></div>  
        <div class="x-titlebar-right reverse"/> 
      </div> 
    </div>  
    <div xid="div7" class="b-psy-one" bind-click="goBindVR"> 
      <div xid="div8" class="b-psy-oneA" id="unbinda" style="display: none;">
        <img src="$UI/OTO/assets/img/no-vr.png" alt="" xid="image1"/>  
        <span xid="span3">头盔未连接</span> 
      </div>  
      <div xid="div8" class="b-psy-oneA" id="binda" style="display: none;"> 
        <img src="$UI/OTO/assets/img/vr.png" alt="" xid="image1"/>  
        <span xid="span3">头盔已连接</span> 
      </div> 
    </div>  
    <div class="x-panel-content  x-scroll-view" xid="content1" _xid="C79F18A26610000120B4115050501F1E"
      style="bottom: 0px;top:98px;"> 
      <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView"
        xid="scrollView1"> 
        <div class="x-scroll-content" xid="div2"> 
          <div xid="div4" class="b-exam-one"> 
            <img src="$UI/OTO/assets/img/breath_1.jpg" alt="" xid="image2"
              class="b-exam-oneB"/>  
            <form name="acropOpt" id="acropOpt"> 
              <div xid="div5" class="b-breath-oneA"> 
                <div component="$UI/system/components/bootstrap/tabs/tabs"
                  class="b-exam-top b-breath-BG" xid="tabs1"> 
                  <ul class="nav nav-tabs clearfix b-breath-two tab-title-three"
                    xid="ul3"> 
                    <li class="active" xid="li8"> 
                      <a class="tab-btn" content="tabContent1" xid="tabItem1"> 
                        <span xid="span5"><![CDATA[场景选择]]></span> 
                      </a> 
                    </li>  
                    <li role="presentation" xid="li9"> 
                      <a class="tab-btn" content="tabContent2" xid="tabItem2"> 
                        <span xid="span6"><![CDATA[性别]]></span> 
                      </a> 
                    </li>  
                    <li role="presentation" xid="li9"> 
                      <a class="tab-btn" content="tabContent3" xid="tabItem3"> 
                        <span xid="span7"><![CDATA[天气]]></span> 
                      </a> 
                    </li> 
                  </ul>  
                  <div class="tab-content" xid="div1"> 
                    <div class="tab-pane active" xid="tabContent1"> 
                      <ul xid="ul2" class="b-breath-thr"> 
                        <li xid="li6" class="clearfix"> 
                          <div xid="div9" class="fl b-breath-thrA"> 
                            <span xid="span10"><![CDATA[摩天大楼]]></span> 
                          </div>  
                          <label xid="label2" class="fr b-breath-thrB b-demo-label"><![CDATA[]]>  
                            <input type="radio" value="1" checked="checked" name="sceneType"
                              xid="radio1" class="b-demo-radio"/>  
                            <span xid="span1" class="b-demo-radioInput"/> 
                          </label> 
                        </li>  
                        <li xid="li5" class="clearfix"> 
                          <div xid="div10" class="fl b-breath-thrA"> 
                            <span xid="span4"><![CDATA[高空栈道]]></span> 
                          </div>  
                          <label xid="label3" class="fr b-breath-thrB b-demo-label"> 
                            <input type="radio" value="2" name="sceneType" xid="radio3"
                              class="b-demo-radio"/>  
                            <span xid="span2" class="b-demo-radioInput"/> 
                          </label> 
                        </li> 
                      </ul> 
                    </div>  
                    <div class="tab-pane" xid="tabContent2"> 
                      <ul xid="ul2" class="b-breath-thr"> 
                        <li xid="li6" class="clearfix"> 
                          <div xid="div9" class="fl b-breath-thrA"> 
                            <span xid="span10"><![CDATA[男]]></span> 
                          </div>  
                          <label xid="label4" class="fr b-breath-thrB b-demo-label"> 
                            <input type="radio" value="1" checked="checked" name="sex"
                              xid="radio4" class="b-demo-radio"/>  
                            <span xid="span8" class="b-demo-radioInput"/> 
                          </label> 
                        </li>  
                        <li xid="li5" class="clearfix"> 
                          <div xid="div10" class="fl b-breath-thrA"> 
                            <span xid="span4"><![CDATA[女]]></span> 
                          </div>  
                          <label xid="label5" class="fr b-breath-thrB b-demo-label"> 
                            <input type="radio" value="0" name="sex" xid="radio5"
                              class="b-demo-radio"/>  
                            <span xid="span9" class="b-demo-radioInput"/> 
                          </label> 
                        </li> 
                      </ul> 
                    </div>  
                    <div class="tab-pane" xid="tabContent3"> 
                      <ul xid="ul2" class="b-breath-thr"> 
                        <li xid="li6" class="clearfix"> 
                          <div xid="div9" class="fl b-breath-thrA"> 
                            <span xid="span10"><![CDATA[晴天]]></span> 
                          </div>  
                          <label xid="label6" class="fr b-breath-thrB b-demo-label"> 
                            <input type="radio" value="1" checked="checked" name="weather"
                              xid="radio6" class="b-demo-radio"/>  
                            <span xid="span11" class="b-demo-radioInput"/> 
                          </label> 
                        </li>  
                        <li xid="li5" class="clearfix"> 
                          <div xid="div10" class="fl b-breath-thrA"> 
                            <span xid="span4"><![CDATA[雷雨]]></span> 
                          </div>  
                          <label xid="label7" class="fr b-breath-thrB b-demo-label"> 
                            <input type="radio" value="2" name="weather" xid="radio7"
                              class="b-demo-radio"/>  
                            <span xid="span12" class="b-demo-radioInput"/> 
                          </label> 
                        </li> 
                      </ul> 
                    </div> 
                  </div> 
                </div>  
                <div xid="div10"> 
                  <div xid="div12" class="b-exam-four clearfix"> 
                    <div xid="div11" class="b-exam-fourA fl"> 
                      <!-- <span xid="span12"><![CDATA[放松练习场景选择]]></span>  
                <img src="$UI/OTO/assets/img/exam_2.jpg" alt="" xid="image4"/>  -->  
                      <select component="$UI/system/components/justep/select/select"
                        class="form-control" xid="select2" name="sceneId" id="senceOption"> 
                        <option value="-1" selected="true">放松练习场景选择</option>	
                        <option value="1">日本和屋</option>  
                        <option value="2">海边沙滩</option>  
                        <option value="3">皑皑雪山</option> 
                      </select> 
                    </div>  
                    <div xid="div19" class="fr checkboxTwo"> 
                      <input type="checkbox" value="1" name="isOpen" xid="checkbox2"
                        checked="checked" bind-click="switchSence" id="checkboxTwoInput"/>  
                      <label xid="label1" for="checkboxTwoInput"><![CDATA[]]></label> 
                    </div> 
                  </div> 
                </div> 
              </div> 
            </form> 
          </div>  
          <div xid="div13" class="b-exam-five"> 
            <img src="$UI/OTO/assets/img/exam_3.png" alt="" xid="image10"/>  
            <span xid="span13">请佩戴好生物电设备</span> 
          </div>  
          <div xid="div14" class="clearfix b-user-thr"> 
            <a component="$UI/system/components/justep/button/button" class="btn btn-default b-user-thrButton"
              label="开始练习" xid="button1" bind-click="beginStudy"> 
              <i xid="i2"/>  
              <span xid="span14">开始练习</span> 
            </a> 
          </div>  
          <!-- 模态框（Modal） -->  
          <div class="modal fade" id="acropModal" tabindex="-1" role="dialog"
            aria-labelledby="myModalLabel" aria-hidden="true"> 
            <div class="modal-dialog"> 
              <div class="modal-content"> 
                <div class="modal-body"> 
                  <h4>跳过放松训练将会使皮肤电数据的分析缺少必要的参考依据，最后的反馈记录将无法显示皮肤电数据。</h4>  
                  <p class="tac">是否继续跳过？</p> 
                </div>  
                <div class="modal-footer"> 
                  <button type="button" class="btn btn-primary" bind-click="userCancle">返回开启</button>  
                  <button type="button" class="btn btn-primary" bind-click="userOk">继续跳过</button> 
                </div> 
              </div>  
              <!-- /.modal-content --> 
            </div>  
            <!-- /.modal --> 
          </div> 
        </div> 
      </div> 
    </div> 
  </div> 
</div>
