<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>一元零食购</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="一元,零食,购物">
	<meta http-equiv="description" content="零食特卖">
	<meta name="author" content="WXLin" />
	<link type="text/css" rel="stylesheet" href="css/font-awesome.min.css" />
    <link type="text/css" rel="stylesheet" href="css/luara.left.css"/>
    <link type="text/css" rel="stylesheet" href="css/main.css" />
  </head>
  
  <body>
    <!--布局容器-->
        <div id="content">
            <!--头部标签-->
            <div id="header">
                <div id="header-nav">
                    <ul>
                        <li id="gologin"><a href="login.jsp">登录</a></li>
                        <li id="goregister"><a href="register.jsp">注册</a></li>
                        <li id="isLogin" style="display:none" >欢迎您！ ${User.userName}</li>
                        <li><a href="info.jsp">我的订单</a></li>
                        <li><a href="cart.jsp">购物车</a></li>
                        <li id="gomanage"><a href="javascript:void(0)">商品管理</a></li>
                    </ul>
                </div>
                <div class="nav-nextli">
                    <ul>
                        <li><a href="#">零食</a></li>
                        <li><a href="#">甜点</a></li>
                        <li><a href="#">饮料</a></li>
                        <li><a href="#">酒水</a></li>
                        <li><a href="#">冲饮</a></li>
                    </ul>
                </div>
                <div id="header-search">
                    <a href="index.jsp"><div id="header-logo"></div></a>
                    <div id="search">
                        <i class="fa fa-search"></i>
                        <input class="search" type="text" placeholder="一元购" />
                        <button class="search-btn" type="submit">搜索</button>
                    </div>
                </div>
            </div>
            <!--主体标签-->
            <div id="page">
                <div id="section">
                    <div id=nav>
                        <ul>
                            <li><i class="fa fa-th-large nav-icon"></i><span>进口零食/果干/坚果</span><i class="fa fa-angle-right angle-right" ></i></li>
                            <li><i class="fa fa-ship nav-icon"></i><span>进口饼干/糕点</span><i class="fa fa-angle-right angle-right" ></i></li>
                            <li><i class="fa fa-certificate nav-icon"></i><span>进口糖果/巧克力</span><i class="fa fa-angle-right angle-right" ></i></li>
                            <li><i class="fa fa-square nav-icon"></i><span>进口牛奶/奶粉</span><i class="fa fa-angle-right angle-right" ></i></li>
                            <li><i class="fa fa-glass nav-icon"></i><span>进口酒/饮料/水</span><i class="fa fa-angle-right angle-right" ></i></li>
                            <li><i class="fa fa-coffee nav-icon"></i><span>进口冲饮/咖啡/茶</span><i class="fa fa-angle-right angle-right" ></i></li>
                        </ul>
                    </div>
                    <div id="nav-page"></div>
                    <div id="main">
                        <ul>
                            <li><img src="images/main-ad1.png" alt="ad1" /></li>
                            <li><img src="images/main-ad2.png" alt="ad2" /></li>
                            <li><img src="images/main-ad3.png" alt="ad3" /></li>
                            <li><img src="images/main-ad4.png" alt="ad4" /></li>
                            <li><img src="images/main-ad5.png" alt="ad5" /></li>
                            <li><img src="images/main-ad6.png" alt="ad6" /></li>
                            <li><img src="images/main-ad7.png" alt="ad7" /></li>
                        </ul>
                        <ol>
                            <li></li>
                            <li></li>
                            <li></li>
                            <li></li>
                            <li></li>
                            <li></li>
                            <li></li>
                        </ol>
                    </div>
                    <div id="sider">
                        <h2>我的购物车</h2>
                        <i class="fa fa-shopping-cart"></i>
                        <button class="btn" type="button">打开购物车</button>
                    </div>
                </div>
                <div id="wares">
                	<div class="onware">
                        <div class="closeware"><i class="fa fa-times"></i></div>
                        <div id="commodity">
                            <div id="commodity-img">
                                <img id="ware-img" src="images/snacks/CgQCslNUvumAIQkIAAMUZ63sQDw67401_230-230.jpg" />
                            </div>
                            <div id="information">
                                <input id="ware-Id" type="hidden" value="1" />
                                <h4 id="ware-info">原味海苔冬萌功 PAPATONK 虾片</h4>
                                <h3 id="ware-price">¥11.9</h3>
                                <p>支持货到付款</p>
                                <p>送货至XXX 现货</p>
                                <p>17:30前完成订单，预计一天送达</p>
                                <div class="wares-ware-btn">
                                    <div class="ware-btn">
                                        <input class="ware-num" type="text" readonly="true" value="1" />
                                        <input class="ware-add" type="button" value="∧" />
                                        <input class="ware-minus" type="button" value="∨" />
                                    </div>
                                    <button id="add-ware-cart" class="ware-cart" type="button">加入购物车</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="wares-kind">
                        <div class="wares-head">进口·零食/果干/坚果</div>
                        <div class="wares-main">
                            <div class="thisware thismouseover">
                                <div class="thisware-head">
                                    <h2>买一送一！</h2>
                                    <h3>原味海苔冬萌功</h3>
                                    <p>PAPATONK 虾片</p>
                                    <img src="images/snacks/CgQCslNUvumAIQkIAAMUZ63sQDw67401_230-230.jpg" />
                                </div>
                            </div>
                            <div class="thisware thismouseover">
                                <img class="thisimg" src="images/snacks/ChEi2lilbqCAaqaqAAEdLSdd-Vw420_230-380.jpg" />
                                <div class="thisimg-mes">
                                    <div><p>35%含虾量印尼虾片</p></div>
                                </div>
                            </div>
                            <div class="thisware">
                                <div class="thisware-part b thismouseover">
                                    <h3>进口椰子片</h3>
                                    <p>Kernes原味</p>
                                    <img src="images/snacks/ChEi3FiZu9CAYJChAACnPO83nbQ02800_388x260.jpg" />
                                </div>
                                <div class="thisware-part thismouseover">
                                    <h3>99减30</h3>
                                    <p>进口特惠 包邮正好</p>
                                    <img src="images/snacks/ChEi2liwDK-AFVUtAAA6pLBGx4o32800.jpg" />
                                </div>
                            </div>
                            <div class="thisware thismouseover">
                                <h3>春天花花零食会</h3>
                                <p>美味零嘴 买1送1</p>
                                <img src="images/snacks/ChEi2FiwCVSAMZ1YAAB1u_1Js4s33900.jpg" alt="春天花花零食会" />
                            </div>
                            <div class="thisware">
                                <div class="thisware-part b thismouseover">
                                    <h3>进口芒果干</h3>
                                    <p>TATA榙榙</p>
                                    <img src="images/snacks/ChEi11h0Rh2AXuovAABnko69bKw54100_388x260.jpg" />
                                </div>
                                <div class="thisware-part thismouseover">
                                    <h3>摩悦 红苹果干 </h3>
                                    <p>香港进口</p>
                                    <img src="images/snacks/ChEi21iZvBGACBXdAAB55Oue-C435200_388x260.jpg" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="wares-kind">
                        <div class="wares-head">进口·饼干/糕点</div>
                        <div class="wares-main">
                            <div class="thisware thismouseover">
                                <div class="thisware-head">
                                    <h2>热门商品！</h2>
                                    <h3>白色恋人</h3>
                                    <p>白巧克力夹心味饼干</p>
                                    <img src="images/cooky/ChEi1VeIUEeAZSs7AASl8GC8jdU02301_230-230.jpg" />
                                </div>
                            </div>
                            <div class="thisware thismouseover">
                                <img class="thisimg" src="images/cooky/ChEwoFhQ60mANNSjAAB_i8I9NHA44200_230-380.jpg" />
                                <div class="thisimg-mes">
                                    <div><p>都灵人节日蛋糕</p></div>
                                </div>
                            </div>
                            <div class="thisware">
                                <div class="thisware-part b thismouseover">
                                    <h3>曲奇饼干</h3>
                                    <p>蓝罐 丹麦进口</p>
                                    <img src="images/cooky/ChEwoVhuFBCAfpZrAAWmeJ4tKpI12500_230-230.jpg" />
                                </div>
                                <div class="thisware-part thismouseover">
                                    <h3>99减30</h3>
                                    <p>好丽友 布朗尼巧克力蛋糕</p>
                                    <img src="images/cooky/ChEbu1cGB_aAdd7qAAM7dGLl7d815401_280-280.jpg" />
                                </div>
                            </div>
                            <div class="thisware thismouseover">
                                <h3>自然素材</h3>
                                <p>美味黑罐糖饼干</p>
                                <img src="images/cooky/c5561258532b9f36YY_230-230.jpg" />
                            </div>
                            <div class="thisware">
                                <div class="thisware-part b thismouseover">
                                    <h3>聪明小熊</h3>
                                    <p>四味奶油曲奇</p>
                                    <img src="images/cooky/ChEi11hD43SAKCKwAAgTJY5aAcc74200_230-230.jpg" />
                                </div>
                                <div class="thisware-part thismouseover">
                                    <h3>好丽友 布朗尼蛋糕 </h3>
                                    <p>韩国进口</p>
                                    <img src="images/cooky/ChEbvFeYgmCAKA6FAAMZJ-XCCBY47601_280-280.jpg" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="wares-kind">
                        <div class="wares-head">进口·糖果/巧克力</div>
                        <div class="wares-main">
                            <div class="thisware thismouseover">
                                <div class="thisware-head">
                                    <h2>特享优惠！</h2>
                                    <h3>瑞士莲80%黑巧克力</h3>
                                    <p>德国进口</p>
                                    <img src="images/candy/ChEbu1cwOKeAAsJMAAMJ4lukYhg62901_230-230.jpg" />
                                </div>
                            </div>
                            <div class="thisware thismouseover">
                                <img class="thisimg" src="images/candy/ChEi3FhgpvSAF-TTAAB-S3i7Qw813900_230-380.jpg" />
                                <div class="thisimg-mes">
                                    <div><p>六种口味 随你挑选</p></div>
                                </div>
                            </div>
                            <div class="thisware">
                                <div class="thisware-part b thismouseover">
                                    <h3>罗伊斯生巧克力</h3>
                                    <p>ROYCE原味</p>
                                    <img src="images/candy/ChEwoFhH3naAM_AMAAbcL8VO8wY73801_230-230.jpg" />
                                </div>
                                <div class="thisware-part thismouseover">
                                    <h3>费列罗 榛果威化巧克力</h3>
                                    <p>Ferrero 3粒装</p>
                                    <img src="images/candy/ChEi21hFQ7iAfj-hAAO4Xz25Dfg28001_230-230.jpg" />
                                </div>
                            </div>
                            <div class="thisware thismouseover">
                                <h3>脆雪柔椰蓉扁桃仁糖果酥球</h3>
                                <p>Raffarllo 拉斐尔 酥质糖果</p>
                                <img src="images/candy/ChEi3FhE2LSAINCsAAVuRhwhm1E73501_230-230.jpg" />
                            </div>
                            <div class="thisware">
                                <div class="thisware-part b thismouseover">
                                    <h3>麦提沙</h3>
                                    <p>牛奶巧克力 360g</p>
                                    <img src="images/candy/ChEi3FZEXAmAfySVAAOskVFaRNA05701_230-230.jpg" />
                                </div>
                                <div class="thisware-part thismouseover">
                                    <h3>罗伊斯生巧克力</h3>
                                    <p>ROYCE 抹茶味</p>
                                    <img src="images/candy/ChEi1VhH2N-ACfNYAAaEPwPRoFc30101_230-230.jpg" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="wares-kind">
                        <div class="wares-head">进口·牛奶/奶粉</div>
                        <div class="wares-main">
                            <div class="thisware thismouseover">
                                <div class="thisware-head">
                                    <h2>新西兰原装进口！</h2>
                                    <h3>Nouriz/纽瑞滋</h3>
                                    <p>全脂奶粉 1kg/袋</p>
                                    <img src="images/milk/ChEi2lXJkFKAf15uAAKlq-9Uh4M56901_230-230.jpg" />
                                </div>
                            </div>
                            <div class="thisware thismouseover">
                                <img class="thisimg" src="images/milk/ChEi3FcVhvuAVx8VAABKyXQ8r1Y20000_230-380.jpg" />
                                <div class="thisimg-mes">
                                    <div><p>清晨一杯 活力一整天</p></div>
                                </div>
                            </div>
                            <div class="thisware">
                                <div class="thisware-part b thismouseover">
                                    <h3>纽仕兰全脂牛奶</h3>
                                    <p>Thelan 250ML*24盒</p>
                                    <img src="images/milk/ChEiBlf4oBGAEJzDAAUKlBg79J868201_230-230.jpg" />
                                </div>
                                <div class="thisware-part thismouseover">
                                    <h3>德运全脂奶粉</h3>
                                    <p>devondate 澳洲进口</p>
                                    <img src="images/milk/ChEi21etTI2AdVrhAANCdJzBHwg00500_230-230.webp.jpg" />
                                </div>
                            </div>
                            <div class="thisware thismouseover">
                                <h3>Theland/纽仕兰</h3>
                                <p>3.5g全脂纯牛奶</p>
                                <img src="images/milk/ChEi1Ff4nVmAVIYJAAQV36sftbg70101_230-230.jpg" />
                            </div>
                            <div class="thisware">
                                <div class="thisware-part b thismouseover">
                                    <h3>纽仕兰 脱脂奶粉</h3>
                                    <p>1kg/袋牧场直供调制乳粉</p>
                                    <img src="images/milk/ChEi2lf4mISAN2LmAAQPE88lYQ429301_230-230.jpg" />
                                </div>
                                <div class="thisware-part thismouseover">
                                    <h3>爱氏晨曦 全脂牛奶</h3>
                                    <p>Aria 200ml*24盒</p>
                                    <img src="images/milk/CgQI0FaMtCOATQ3NAAFD4Qh8Dqk73800_230-230.jpg" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="wares-kind">
                        <div class="wares-head">进口·酒/饮料/水</div>
                        <div class="wares-main">
                            <div class="thisware thismouseover">
                                <div class="thisware-head">
                                    <h2>满68元减5元！</h2>
                                    <h3>地扪 西梅汁</h3>
                                    <p>Del Monte 946ml 美国进口</p>
                                    <img src="images/wine/ChEi21eJpEqALiYPAAMfem81TTg38700_230-230.jpg" />
                                </div>
                            </div>
                            <div class="thisware thismouseover">
                                <img class="thisimg" src="images/wine/ChEi2Fhu6dmASY37AAEpyToNi8I11400_230-380.png" />
                                <div class="thisimg-mes">
                                    <div><p>UMF15+麦卢卡</p></div>
                                </div>
                            </div>
                            <div class="thisware">
                                <div class="thisware-part b thismouseover">
                                    <h3>依云 天然矿泉水</h3>
                                    <p>Evian 法国进口 330ml*12</p>
                                    <img src="images/wine/ChEwolgRcYiAYoz8AAKZ8jMdi6k85301_230-230.jpg" />
                                </div>
                                <div class="thisware-part thismouseover">
                                    <h3>满2件7.5折</h3>
                                    <p>TORRES 西班牙桃乐丝原瓶进口</p>
                                    <img src="images/wine/ChEi1VbrWxGAe_uqAACmlwoC8Mg88200_230-230.jpg" />
                                </div>
                            </div>
                            <div class="thisware thismouseover">
                                <h3>加州乐事 红酒进口</h3>
                                <p>好酒 大瓶喝 3升装</p>
                                <img src="images/wine/ChEi2lg-ZhiAVNu9AAJ5IehJyqs51500_230-230.webp.jpg" />
                            </div>
                            <div class="thisware">
                                <div class="thisware-part b thismouseover">
                                    <h3>圣培露 充气天然矿泉水</h3>
                                    <p>S.Pellecrino气泡水 原装新日期</p>
                                    <img src="images/wine/CgQI0FR_K2OAXzvIAACw3y_iEoo30500_230-230.jpg" />
                                </div>
                                <div class="thisware-part thismouseover">
                                    <h3>艾美克 开学季德国果汁</h3>
                                    <p>德国进口果汁饮料</p>
                                    <img src="images/wine/ChEiBVezxoyAOD1bAAdMhkObXFs39600_230-230.jpg" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="wares-kind">
                        <div class="wares-head">进口·冲饮/咖啡/茶</div>
                        <div class="wares-main">
                            <div class="thisware thismouseover">
                                <div class="thisware-head">
                                    <h2>满99送精美太阳伞！</h2>
                                    <h3>咖啡城 马来西亚进口</h3>
                                    <p>原味白咖啡咖啡粉 脱脂奶粉进口速溶</p>
                                    <img src="images/coffee/CgQI01VcVv-ABvi3AAZfmtRElLo43300_230-230.jpg" />
                                </div>
                            </div>
                            <div class="thisware thismouseover">
                                <img class="thisimg" src="images/coffee/ChEi21fmHbOAPeq8AAEqJxknv_I39000_230-380.jpg" />
                                <div class="thisimg-mes">
                                    <div><p>台湾原装黑糖姜茶</p></div>
                                </div>
                            </div>
                            <div class="thisware">
                                <div class="thisware-part b thismouseover">
                                    <h3>麦卢卡蜂蜜</h3>
                                    <p>UMF15 250g 新西兰原装进口</p>
                                    <img src="images/coffee/ChEi2FhwkQiAGImhAAcWlEWoPKM94200_230-230.jpg" />
                                </div>
                                <div class="thisware-part thismouseover">
                                    <h3>新老包装更改</h3>
                                    <p>家乐氏 谷维滋 310g 泰国进口</p>
                                    <img src="images/coffee/ChEi3FegC-uAOdVjAAMgCCnXGdg31101_230-230.jpg" />
                                </div>
                            </div>
                            <div class="thisware thismouseover">
                                <h3>迪尔玛 原味红茶 25*2g</h3>
                                <p>美满1件可参加超值换购！</p>
                                <img src="images/coffee/CgQCtlHk4q6AOFR-AAHClZp14zI46100_230-230.jpg" />
                            </div>
                            <div class="thisware">
                                <div class="thisware-part b thismouseover">
                                    <h3>悠诗诗 117速溶咖啡粉</h3>
                                    <p>135克 日本工艺 原装进口</p>
                                    <img src="images/coffee/CgQDsVRR8kWAaka3AAOHkZtNYTk79401_230-230.jpg" />
                                </div>
                                <div class="thisware-part thismouseover">
                                    <h3>川宁 沁香柠檬红茶</h3>
                                    <p>斯里兰卡红茶融入柠檬芬芳，清香沁心</p>
                                    <img src="images/coffee/ChEi11ZuP6SAf2_9AAMYzbhfGx420801_230-230.jpg" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--底部标签-->
            <div id="footer">
                <span>Copyright © 一元购美食特卖商城 2016-2017，All Rights Reserved</span>
            </div>
        </div>
        <script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
        <script type="text/javascript" src="js/jquery.luara.0.0.1.min.js"></script>
        <script type="text/javascript" src="js/template.js"></script>
        <script id="navData" type="text/html">
            <h4><a href="#">{{pageName}}</a></h4>
            <p><span><a href="#">{{typeName1}}</a></span><span><a href="#">{{typeName2}}</a></span></p>
            <p><span><a href="#">{{typeName3}}</a></span><span><a href="#">{{typeName4}}</a></span></p>
            <p><span><a href="#">{{typeName5}}</a></span><span><a href="#">{{typeName6}}</a></span></p>
        </script>
        <script type="text/javascript">
            /* 导航数据 */
            var navPage = [
                {
                    "pageName" : "进口零食/果干/坚果",
                    "typeName1" : "海苔",
                    "typeName2" : "薯片",
                    "typeName3" : "坚果",
                    "typeName4" : "腰果",
                    "typeName5" : "芒果干",
                    "typeName6" : "肉干肉铺",
                },{
                    "pageName" : "进口饼干/糕点",
                    "typeName1" : "饼干",
                    "typeName2" : "曲奇",
                    "typeName3" : "威化",
                    "typeName4" : "传统糕点",
                    "typeName5" : "西式糕点",
                    "typeName6" : "面包",
                },{
                    "pageName" : "进口糖果/巧克力",
                    "typeName1" : "巧克力",
                    "typeName2" : "牛奶巧克力",
                    "typeName3" : "黑巧克力",
                    "typeName4" : "松露",
                    "typeName5" : "硬糖",
                    "typeName6" : "软糖",
                },{
                    "pageName" : "进口牛奶/奶粉",
                    "typeName1" : "全脂",
                    "typeName2" : "低脂",
                    "typeName3" : "脱脂",
                    "typeName4" : "香蕉牛奶",
                    "typeName5" : "奶粉",
                    "typeName6" : "酸奶",
                },{
                    "pageName" : "进口酒/饮料/水",
                    "typeName1" : "葡萄酒",
                    "typeName2" : "啤酒",
                    "typeName3" : "洋酒",
                    "typeName4" : "碳酸饮料",
                    "typeName5" : "果蔬汁",
                    "typeName6" : "椰子水",
                },{
                    "pageName" : "进口冲饮/咖啡/茶",
                    "typeName1" : "早餐谷物",
                    "typeName2" : "蜂蜜",
                    "typeName3" : "红茶",
                    "typeName4" : "绿茶",
                    "typeName5" : "速溶咖啡",
                    "typeName6" : "咖啡豆",
                }
            ]
            
            $(document).ready(function(){
                $("#main").luara({width:"600",height:"240",interval:4500,selected:"seleted",deriction:"left"});
                bindEvent();
                //isLogin();
            });
            
            /* 绑定事件组 */
            function bindEvent(){
                var html = "";
                $("#nav li").mouseover(function(){
                    var i = $(this).index();
                    html = template("navData",navPage[i]);
                    $("#nav-page").fadeIn();
                    $("#nav-page").html(html);
                });
                
                $("#sider .btn").click(function(){
                	location.href = "cart.jsp";
                });
                
                $("#section").mouseleave(function(){
                    $("#nav-page").fadeOut();
                });
                
                $("#warekind").click(function(){
                    $(".nav-nextli").fadeToggle();
                });
                
                $("#header").mouseleave(function(){
                    $(".nav-nextli").fadeOut();
                });
                
                $(".thismouseover").click(function(){
                    $(".onware").show();
                });
                
                $(".closeware").click(function(){
                    $(".onware").hide();
                });
                
                $(".ware-add").click(function(){
                    var num = parseInt($(this).prev().val());
                    if(num < 99){
                        $(this).prev().val(num+1);
                        $(this).next().removeAttr("disabled");
                    }else{
                        $(this).attr({"disabled":"disabled"});
                    }
                     e.stopPropagation();
                });
                
                $(".ware-minus").click(function(){
                    var num = parseInt($(this).prev().prev().val());
                    if(num > 1){
                        $(this).prev().prev().val(num-1);
                        $(this).prev().removeAttr("disabled");
                    }else{
                        $(this).attr({"disabled":"disabled"});
                    }
                     e.stopPropagation();
                });
                
                $("#add-ware-cart").click(function(){
                    var wareId = $("#ware-Id").val();
                    var queity = $(this).prev().find(".ware-num").val();
                    var cart = localStorage.getItem("shoppingcart");
                    var wares = {
                    		"wareId":wareId,
                    		"queity":queity
                    };
                    
                    if(cart == null || cart == ""){
                        cart = JSON.stringify(wares);
                    }else{
                        cart = cart + "," + JSON.stringify(wares);
                    }
                    
                    localStorage.setItem("shoppingcart",cart);
                    alert("已加入购物车！");
                    
                });
            }
            
            /* 判断是否登录  */
            function isLogin(){
            	var user = "${User.userId}";
            	
            	if(user == null || user == ""){
            		$("goLogin").css("display","inline-block");
            		$("goregister").css("display","inline-block");
            		$("isLogin").css("display","none");
            	}else{
            		$("goLogin").css("display","none");
            		$("goregister").css("display","none");
            		$("isLogin").css("display","inline-block");
            	}
            }
            
        </script>
  </body>
</html>
