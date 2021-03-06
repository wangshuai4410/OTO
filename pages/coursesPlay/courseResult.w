<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;"
  xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="left:18px;top:83px;height:244px;"
    onParamsReceive="modelParamsReceive" onLoad="modelLoad" onActive="enterPage" onunLoad="modelUnLoad"
    onInactive="modelUnLoad"/>  
  <div component="$UI/system/components/justep/panel/panel" id="courseRes" class="x-panel x-full"
    xid="panel1"> 
    <div class="x-panel-top" xid="top1"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" title="练习记录"
        class="x-titlebar app-title-ctner"> 
        <div class="x-titlebar-left"> 
          <a component="$UI/system/components/justep/button/button" label=""
            class="btn btn-link btn-only-icon" icon="icon-chevron-left" bind-click="goBack"
            xid="backBtn"> 
            <i class="icon-chevron-left"/>  
            <span/> 
          </a> 
        </div>  
        <div class="x-titlebar-title"><![CDATA[练习记录]]></div>  
        <div class="x-titlebar-right reverse"/> 
      </div> 
    </div>  
    <div class="x-panel-content x-scroll-view" xid="content1" _xid="C79E5912BD4000011A295AE07D72182D"
      style="bottom: 0px;"> 
      <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView"
        xid="scrollView1" style="background-color:transparent;"> 
        <div class="x-scroll-content b-course-top" xid="div2"> 
          <!-- 顶部用户卡片  -->  
          <div class="symbol-card card_user" style="height:110px;" bind-foreach="{ data: user, as: 'user' }"> 
            <div class="media" xid="media1"> 
              <div class="media-left avator-ctner" xid="mediaLeft1"> 
                <div class="avator"> 
                  <img class="media-object" bind-attr="{src: 'http://pic.adai-tech.com/img'+user.face}"
                    alt="" xid="image2"/> 
                </div>  
                <div class="sex" bind-css="{'boy': user.sex == 0, 'girl': user.sex == 1}"/> 
              </div>  
              <div class="media-body" xid="mediaBody1"> 
                <ul xid="ul1" class="b-relax-oneR" bind-foreach="{ data: user, as: 'user' }"> 
                  <li xid="li1" class="user_name" bind-text="user.name"/>  
                  <li xid="li2" class="user_info"> 
                    <span bind-text="user.sexTxt"/>  
                    <span bind-text="user.age+'岁'"/> 
                  </li> 
                </ul> 
              </div> 
            </div> 
          </div>  
          <!-- 顶部用户卡片 end -->  
          <div class="main-container" style="top: 100px;"> 
            <div xid="div7" class="title_bar"> 
              <span xid="span1">练习详情</span> 
            </div>  
            <ul xid="ul2" class="b-course-two clearfix new_listItem" style="width: 100%;"> 
              <li xid="li4" bind-text="curDate"/>  
              <li xid="li5" bind-text="title"/>  
              <li xid="li6" bind-text="duration"/> 
            </ul>  
            <form name="relaxRes" id="relaxRes"> 
              <ul xid="ul3" class="b-relax-thr"> 
                <!-- 皮肤电数据 -->  
                <div component="$UI/system/components/bootstrap/accordion/accordion"
                  id="skinDataRes" tabbed="true" style="display: none;"> 
                  <div component="$UI/system/components/bootstrap/panel/panel"
                    xid="panel2" class="panel panel-default"> 
                    <div xid="heading1" style="background-color:transparent;"
                      class="panel-heading"> 
                      <li xid="li8" class="clearfix"> 
                        <div xid="div13" class="pull-left b-relax-thrA"> 
                          <img src="$UI/OTO/assets/img/relax_2.png" alt=""
                            xid="image3"/>  
                          <span xid="span3">皮肤电数据</span> 
                        </div> 
                      </li> 
                    </div>  
                    <div class="panel-collapse collapse" xid="div1"> 
                      <div class="panel-body" xid="div3"> 
                        <div xid="div6"> 
                          <div xid="div1" style="height:300px; width: 100%;"
                            class="center-block"> 
                            <div xid="skinInfoDiv" align="left" style="position:relative;left:5px;top:-15px;"> 
                              <span xid="skinInfoSpan" class="text-black"/>  
                              <div xid="wave2" id="echartres" style="height:300px;position: static;display: block; width: 80vw"
                                class="main"/> 
                            </div> 
                          </div>  
                          <input component="$UI/system/components/justep/input/input"
                            class="form-control" name="baseLine" xid="input1" id="baseLine"
                            style="display: none;"/> 
                        </div> 
                      </div> 
                    </div> 
                  </div> 
                </div>  
                <!-- 考试结果 -->  
                <div component="$UI/system/components/bootstrap/accordion/accordion"
                  class="panel-group" id="examRes" style="display: none;"> 
                  <div class="panel panel-default" component="$UI/system/components/bootstrap/panel/panel"
                    xid="panel5"> 
                    <div class="panel-heading" xid="heading4" bind-click="fetchExam"> 
                      <li xid="li7" class="clearfix"> 
                        <div xid="div10" class="pull-left b-relax-thrA"> 
                          <img src="$UI/OTO/assets/img/relax_2.png" alt=""
                            xid="image2"/>  
                          <span xid="span4"><![CDATA[考试结果]]></span> 
                        </div> 
                      </li> 
                    </div>  
                    <div class="panel-collapse collapse" xid="div4"> 
                      <div class="panel-body" xid="div5"> 
                        <h5>考试科目：
                          <span bind-text="subject"/> 
                        </h5>  
                        <p>得分：
                          <span bind-text="score"/>/
                          <span bind-text="totalScore"/> 
                        </p>  
                        <dl class="eaxm_list" bind-foreach="{data: answerList, as: 'item'}"> 
                          <dt bind-text="($index()+1) + '. ' + item.title"/>  
                          <dd bind-css="{'selected': item.selected == 1, 'answer': item.answer == 1}"> 
                            <span class="item-idx">A.</span>  
                            <span bind-text="item.option1"/> 
                          </dd>  
                          <dd bind-css="{'selected': item.selected == 2, 'answer': item.answer == 2}"> 
                            <span class="item-idx">B.</span>  
                            <span bind-text="item.option2"/> 
                          </dd>  
                          <dd bind-css="{'selected': item.selected == 3, 'answer': item.answer == 3}"> 
                            <span class="item-idx">C.</span>  
                            <span bind-text="item.option3"/> 
                          </dd>  
                          <dd bind-css="{'selected': item.selected == 4, 'answer': item.answer == 4}"> 
                            <span class="item-idx">D.</span>  
                            <span bind-text="item.option4"/> 
                          </dd> 
                        </dl> 
                      </div> 
                    </div> 
                  </div> 
                </div>  
                <!-- 语音记录 -->  
                <div component="$UI/system/components/bootstrap/accordion/accordion"
                  class="panel-group b-relax-border" id="voiceRes" style="display: none;"> 
                  <div class="panel panel-default" component="$UI/system/components/bootstrap/panel/panel"
                    xid="panel3"> 
                    <div class="panel-heading" xid="heading2" bind-click="fetchVoice"> 
                      <li xid="li7" class="clearfix"> 
                        <div xid="div10" class="pull-left b-relax-thrA"> 
                          <img src="$UI/OTO/assets/img/relax_2.png" alt=""
                            xid="image2"/>  
                          <span xid="span4"><![CDATA[语音记录]]></span> 
                        </div> 
                      </li> 
                    </div>  
                    <div class="panel-collapse collapse" xid="div8"> 
                      <div class="panel-body" xid="div9"> 
                        <textarea cols="5" name="voice" rows="5" id="voiceTxt" xid="textarea2"
                          class="b-user-fourB" readonly="readonly"/> 
                      </div> 
                    </div> 
                  </div> 
                </div>  
                <!-- 咨询记录 -->  
                <div component="$UI/system/components/bootstrap/accordion/accordion"
                  class="panel-group b-relax-border" id="consultRes" style="display: none;"> 
                  <div class="panel panel-default" component="$UI/system/components/bootstrap/panel/panel"
                    xid="panel3"> 
                    <div class="panel-heading" xid="heading2"> 
                      <li xid="li7" class="clearfix"> 
                        <div xid="div10" class="pull-left b-relax-thrA"> 
                          <img src="$UI/OTO/assets/img/relax_2.png" alt=""
                            xid="image2"/>  
                          <span xid="span4"><![CDATA[咨询记录]]></span> 
                        </div> 
                      </li> 
                    </div>  
                    <div class="panel-collapse collapse" xid="div8"> 
                      <div class="panel-body" xid="div9"> 
                        <textarea cols="5" id="consultInpt" name="diagnose" rows="5"
                          xid="textarea2" class="b-user-fourB"/> 
                      </div> 
                    </div> 
                  </div> 
                </div>  
                <!-- 自评量表 -->  
                <div class="panel-group panel panel-default" id="sheetRes"
                  bind-click="goTest" style="display: none;"> 
                  <div class="panel-heading" xid="heading3"> 
                    <li xid="li9" class="clearfix"> 
                      <div xid="div14" class="pull-left b-relax-thrA"> 
                        <img src="$UI/OTO/assets/img/relax_2.png" alt="" xid="image4"/>  
                        <span xid="span6"><![CDATA[自评量表]]></span> 
                      </div>  
                      <input type="text" name="answer" id="answer" style="display: none;"/> 
                    </li> 
                  </div> 
                </div> 
              </ul> 
            </form>  
            <div xid="div14" class="clearfix b-user-thr"> 
              <a component="$UI/system/components/justep/button/button" class="btn btn-default b-user-thrButton"
                label="保存" xid="button1" bind-click="saveData"> 
                <i xid="i2"/>  
                <span xid="span14">保存</span> 
              </a> 
            </div> 
          </div> 
        </div> 
      </div> 
    </div> 
  </div> 
</div>
