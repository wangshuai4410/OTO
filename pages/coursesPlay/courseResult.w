<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;"
  xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="left:18px;top:83px;height:244px;"
    onParamsReceive="modelParamsReceive" onLoad="modelLoad"/>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
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
        <div class="x-scroll-content" xid="div2"> 
          <!-- 顶部用户卡片  -->  
          <div class="symbol-card card_user" style="height:110px;" bind-foreach="{ data: user, as: 'user' }"> 
            <div class="media" xid="media1"> 
              <div class="media-left avator-ctner" xid="mediaLeft1"> 
                <div class="avator"> 
                  <img class="media-object" src="$UI/OTO/assets/img/user_boy.jpg"
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
            <div xid="div6" class="title_bar"> 
              <span xid="span5"><![CDATA[练习详情]]></span> 
            </div>  
            <ul xid="ul2" class="b-relax-two clearfix new_listItem" style="width: 100%;"> 
              <li xid="li4"><![CDATA[20170403]]></li>  
              <li xid="li5"><![CDATA[ 深呼吸放松练习 ]]></li>  
              <li xid="li6"><![CDATA[5分钟]]></li> 
            </ul>  
            <form name="relaxRes" id="relaxRes"> 
              <ul xid="ul3" class="b-relax-thr"> 
                <!-- <li bind-foreach="{data:listView, as: 'viewItem'}"> 
                  <div component="$UI/system/components/bootstrap/accordion/accordion"
                    xid="accordion1" tabbed="true"> 
                    <div component="$UI/system/components/bootstrap/panel/panel"
                      xid="panel2" class="panel panel-default"> 
                      <div xid="heading1" style="background-color:transparent;"
                        class="panel-heading"> 
                        <li xid="li8" class="clearfix"> 
                          <div xid="div13" class="pull-left b-relax-thrA"> 
                            <img src="$UI/OTO/assets/img/relax_2.jpg" alt=""
                              xid="image3"/>  
                            <span xid="span3" bind-text="viewItem.title"/>
                          </div> 
                        </li> 
                      </div>  
                      <div class="panel-collapse collapse" xid="div1"> 
                        <div class="panel-body" xid="div3"> 
                          <div xid="div6"> 
                            <input component="$UI/system/components/justep/input/input"
                              class="form-control" name="baseLine" xid="input1" value="1,2,0.5,1.2"/> 
                          </div> 
                        </div> 
                      </div> 
                    </div> 
                  </div> 
                </li> -->  
                <div component="$UI/system/components/bootstrap/accordion/accordion"
                  class="panel-group" xid="accordion2"> 
                  <div class="panel panel-default" component="$UI/system/components/bootstrap/panel/panel"
                    xid="panel3"> 
                    <div class="panel-heading" xid="heading2"> 
                      <li xid="li7" class="clearfix"> 
                        <div xid="div10" class="pull-left b-relax-thrA"> 
                          <img src="$UI/OTO/assets/img/relax_2.jpg" alt=""
                            xid="image2"/>  
                          <span xid="span4"><![CDATA[咨询记录]]></span> 
                        </div> 
                      </li> 
                    </div>  
                    <div class="panel-collapse collapse" xid="div8"> 
                      <div class="panel-body" xid="div9"> 
                        <textarea component="$UI/system/components/justep/textarea/textarea"
                          class="form-control" name="diagnose" xid="textarea1"/> 
                      </div> 
                    </div> 
                  </div> 
                </div>  
                <!-- <div component="$UI/system/components/bootstrap/accordion/accordion"
                class="panel-group" xid="accordion3"> 
                <div class="panel panel-default" component="$UI/system/components/bootstrap/panel/panel"
                  xid="panel4"> 
                  <div class="panel-heading" xid="heading3"> 
                    <li xid="li9" class="clearfix"> 
                      <div xid="div14" class="pull-left b-relax-thrA"> 
                        <img src="$UI/OTO/assets/img/relax_2.jpg" alt="" xid="image4"/>  
                        <span xid="span6"><![CDATA[自评量表]]></span> 
                      </div> 
                    </li> 
                  </div>  
                  <div class="panel-collapse collapse" xid="div11"> 
                    <div class="panel-body" xid="div12"> 
                      <span xid="span5"><![CDATA[3333333333333]]></span> 
                    </div> 
                  </div> 
                </div> 
              </div>  --> 
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