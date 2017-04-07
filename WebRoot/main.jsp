<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="description" content="零食特卖" />
        <meta name="author" content="WXLin" />
		<title>一元零食购</title>
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
                        <li id="isLogin" ><a>欢迎您！ ${User.userName}</a></li>
                        <li><a href="info.jsp">我的订单</a></li>
                        <li><a href="cart.jsp">购物车</a></li>
                        <li id="warekind"><a href="javascript:void(0)">商品管理</a></li>
                    </ul>
                </div>
                <div class="nav-nextli">
                    <ul>
                        <li><a href="main.jsp?wareKind=snacks">零食</a></li>
                        <li><a href="main.jsp?wareKind=candy">甜点</a></li>
                        <li><a href="main.jsp?wareKind=coffee">饮料</a></li>
                        <li><a href="main.jsp?wareKind=wine">酒水</a></li>
                        <li><a href="main.jsp?wareKind=milk">冲饮</a></li>
                    </ul>
                </div>
                <div id="header-search">
                    <a href="index.jsp"><div id="header-logo"></div></a>
                    <div id="search">
                        <input id="wareQuery" class="search" type="text" placeholder="一元购" />
                        <button class="search-btn" type="submit">搜索</button>
                    </div>
                </div>
            </div>
            <!--主体标签-->
            <div id="page">
                <div class="main-wares">
                    <div class="ware">
                        <div class="ware-img"><img src="images/snacks/ChEi21gNtJ-AIK2JAAReFlOcKGM42701_230-230.jpg" alt="小老板" /></div>
                        <div class="ware-buy">
                            <h4>¥11.9</h4>
                            <p>小老板 烤海苔卷 原味32.4g/盒 泰国进口</p>
                            <div class="ware-buy-btn">
                                <input class="ware-num" type="text" readonly="true" value="0" />
                                <div class="ware-btn">
                                    <input class="ware-add" type="button" value="∧" />
                                    <input class="ware-minus" type="button" value="∨" />
                                </div>
                                <button class="ware-cart" type="button">加入购物车</button>
                            </div>
                        </div>
                    </div>
                    <div class="ware">
                        <div class="ware-img"><img src="images/snacks/9b6408fa513d2697c1e465665dfbb2fb4316d85a.jpg" alt="ZEK 芝士鳕鱼肠" /></div>
                        <div class="ware-buy">
                            <h4>¥10.9</h4>
                            <p>ZEK 芝士鳕鱼肠（袋装）105g韩国进口</p>
                            <div class="ware-buy-btn">
                                <input class="ware-num" type="text" readonly="true" value="0" />
                                <div class="ware-btn">
                                    <input class="ware-add" type="button" value="∧" />
                                    <input class="ware-minus" type="button" value="∨" />
                                </div>
                                <button class="ware-cart" type="button">加入购物车</button>
                            </div>
                        </div>
                    </div>
                    <div class="ware">
                        <div class="ware-img"><img src="images/snacks/ChEi1VciwfGAB1e0AARmzg2P0hI75901_230-230.jpg" alt="Richeese 丽芝士 雅嘉奶酪味玉米棒" /></div>
                        <div class="ware-buy">
                            <h4>¥19.9</h4>
                            <p>Richeese 丽芝士 雅嘉奶酪味玉米棒</p>
                            <div class="ware-buy-btn">
                                <input class="ware-num" type="text" readonly="true" value="0" />
                                <div class="ware-btn">
                                    <input class="ware-add" type="button" value="∧" />
                                    <input class="ware-minus" type="button" value="∨" />
                                </div>
                                <button class="ware-cart" type="button">加入购物车</button>
                            </div>
                        </div>
                    </div>
                    <div class="ware">
                        <div class="ware-img"><img src="images/snacks/ChEi3FZWvfCAMJtUAAOnqaAgBA441701_230-230.jpg" alt="海牌 海苔 2g *10 韩国进口 X 6" /></div>
                        <div class="ware-buy">
                            <h4>¥62.28</h4>
                            <p>海牌 海苔 2g *10 韩国进口 X 6</p>
                            <div class="ware-buy-btn">
                                <input class="ware-num" type="text" readonly="true" value="0" />
                                <div class="ware-btn">
                                    <input class="ware-add" type="button" value="∧" />
                                    <input class="ware-minus" type="button" value="∨" />
                                </div>
                                <button class="ware-cart" type="button">加入购物车</button>
                            </div>
                        </div>
                    </div>
                    <div class="ware">
                        <div class="ware-img"><img src="images/snacks/CgQCtVMqkY-AXBO_AAOaT9k_BHU20801_230-230.jpg" alt="papatonk 啪啪通 虾片 原味 2连包" /></div>
                        <div class="ware-buy">
                            <h4>¥18.8</h4>
                            <p>papatonk 啪啪通 虾片 原味 2连包</p>
                            <div class="ware-buy-btn">
                                <input class="ware-num" type="text" readonly="true" value="0" />
                                <div class="ware-btn">
                                    <input class="ware-add" type="button" value="∧" />
                                    <input class="ware-minus" type="button" value="∨" />
                                </div>
                                <button class="ware-cart" type="button">加入购物车</button>
                            </div>
                        </div>
                    </div>
                    <div class="ware">
                        <div class="ware-img"><img src="images/snacks/ChEi21gNtJ-AIK2JAAReFlOcKGM42701_230-230.jpg" alt="小老板" /></div>
                        <div class="ware-buy">
                            <h4>¥11.9</h4>
                            <p>小老板 烤海苔卷 原味32.4g/盒 泰国进口</p>
                            <div class="ware-buy-btn">
                                <input class="ware-num" type="text" readonly="true" value="0" />
                                <div class="ware-btn">
                                    <input class="ware-add" type="button" value="∧" />
                                    <input class="ware-minus" type="button" value="∨" />
                                </div>
                                <button class="ware-cart" type="button">加入购物车</button>
                            </div>
                        </div>
                    </div>
                    <div class="ware">
                        <div class="ware-img"><img src="images/snacks/9b6408fa513d2697c1e465665dfbb2fb4316d85a.jpg" alt="ZEK 芝士鳕鱼肠" /></div>
                        <div class="ware-buy">
                            <h4>¥10.9</h4>
                            <p>ZEK 芝士鳕鱼肠（袋装）105g韩国进口</p>
                            <div class="ware-buy-btn">
                                <input class="ware-num" type="text" readonly="true" value="0" />
                                <div class="ware-btn">
                                    <input class="ware-add" type="button" value="∧" />
                                    <input class="ware-minus" type="button" value="∨" />
                                </div>
                                <button class="ware-cart" type="button">加入购物车</button>
                            </div>
                        </div>
                    </div>
                    <div class="ware">
                        <div class="ware-img"><img src="images/snacks/ChEi1VciwfGAB1e0AARmzg2P0hI75901_230-230.jpg" alt="Richeese 丽芝士 雅嘉奶酪味玉米棒" /></div>
                        <div class="ware-buy">
                            <h4>¥19.9</h4>
                            <p>Richeese 丽芝士 雅嘉奶酪味玉米棒</p>
                            <div class="ware-buy-btn">
                                <input class="ware-num" type="text" readonly="true" value="0" />
                                <div class="ware-btn">
                                    <input class="ware-add" type="button" value="∧" />
                                    <input class="ware-minus" type="button" value="∨" />
                                </div>
                                <button class="ware-cart" type="button">加入购物车</button>
                            </div>
                        </div>
                    </div>
                    <div class="ware">
                        <div class="ware-img"><img src="images/snacks/ChEi3FZWvfCAMJtUAAOnqaAgBA441701_230-230.jpg" alt="海牌 海苔 2g *10 韩国进口 X 6" /></div>
                        <div class="ware-buy">
                            <h4>¥62.28</h4>
                            <p>海牌 海苔 2g *10 韩国进口 X 6</p>
                            <div class="ware-buy-btn">
                                <input class="ware-num" type="text" readonly="true" value="0" />
                                <div class="ware-btn">
                                    <input class="ware-add" type="button" value="∧" />
                                    <input class="ware-minus" type="button" value="∨" />
                                </div>
                                <button class="ware-cart" type="button">加入购物车</button>
                            </div>
                        </div>
                    </div>
                    <div class="ware">
                        <div class="ware-img"><img src="images/snacks/CgQCtVMqkY-AXBO_AAOaT9k_BHU20801_230-230.jpg" alt="papatonk 啪啪通 虾片 原味 2连包" /></div>
                        <div class="ware-buy">
                            <h4>¥18.8</h4>
                            <p>papatonk 啪啪通 虾片 原味 2连包</p>
                            <div class="ware-buy-btn">
                                <input class="ware-num" type="text" readonly="true" value="0" />
                                <div class="ware-btn">
                                    <input class="ware-add" type="button" value="∧" />
                                    <input class="ware-minus" type="button" value="∨" />
                                </div>
                                <button class="ware-cart" type="button">加入购物车</button>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="next"></div>
            </div>
            <!--底部标签-->
            <div id="footer">
                <span>Copyright © 一元购美食特卖商城 2016-2017，All Rights Reserved</span>
            </div>
        </div>
        <script src="js/jquery-3.1.1.min.js"></script>
        <script src="js/template.js"></script>
        
        <!--商品模板-->
        <script id="ware-model" type="text/html">
            <div id="{{wareId}}" class="ware">
                <div class="ware-img"><img src="{{wareimg}}" alt="{{description}}" /></div>
                <div class="ware-buy">
                    <h4>¥{{warePrice}}</h4>
                    <p>{{wareName}} {{description}}</p>
                    <div class="ware-buy-btn">
                        <input class="ware-num" type="text" readonly="true" value="0" />
                        <div class="ware-btn">
                            <input class="ware-add" type="button" value="∧" />
                            <input class="ware-minus" type="button" value="∨" />
                        </div>
                        <button class="ware-cart" type="button">加入购物车</button>
                    </div>
                </div>
            </div>
        </script>
        <script type="text/javascript">
        	var warelist;
            /* 初始化 */
            $(document).ready(function(){
                bindEvent();
                wareQuery();
                isLogin();
            });
            
            /* 绑定事件组 */
            function bindEvent(){
                $(".main-wares").on('click','.ware-add',function(e){
                    var num = parseInt($(this).parent().prev().val());
                    if(num < 99){
                        $(this).parent().prev().val(num+1);
                        $(this).next().removeAttr("disabled");
                    }else{
                        $(this).attr({"disabled":"disabled"});
                    }
                     e.stopPropagation();
                });
                
                $(".main-wares").on('click','.ware-minus',function(){
                    var num = parseInt($(this).parent().prev().val());
                    if(num > 0){
                        $(this).parent().prev().val(num-1);
                        $(this).prev().removeAttr("disabled");
                    }else{
                        $(this).attr({"disabled":"disabled"});
                    }
                     e.stopPropagation();
                });
                
                $("#warekind").click(function(){
                    $(".nav-nextli").fadeToggle();
                });
                
                $("#header").mouseleave(function(){
                    $(".nav-nextli").fadeOut();
                });
                
                $(".main-wares").on('click','.ware-cart',function(){
                    var wareId = $(this).parent().parent().parent().attr("id");
                    var queity = $(this).parent().find(".ware-num").val();
                    var cart = localStorage.getItem("shoppingcart");
                    var wares = localStorage.getItem("queity");
                    
                    if(cart == null || cart == ""){
                        cart = wareId;
                        wares = queity;
                    }else{
                        cart = cart + "," + wareId;
                        wares = wares + "," + queity;
                    }
                    
                    localStorage.setItem("shoppingcart",cart);
                    localStorage.setItem("queity",wares);
                    alert("已加入购物车！");
                });

            }
            
            function wareQuery(){
            	var warekey = $("#wareQuery").val();
            	if(warekey != null && warekey !=""){
            		var ware = {
                			"warekey": warekey
                	};
            	}
            	
            	$.ajax({
            		type: 'POST',
            		url: 'getWares',
            		data: ware,
            		datatype: 'json',
            		success: function(data){
            			warelist = data;
						var html = "";
	                	
	                	for(var i = 0; i < data.length;i++){
	                		html = html + template("ware-model",warelist[i]);
	                	}
	                	
	                	$(".main-wares").append(html);
	                	
	                },error:function(data){
	                	alert(data);
	                }
            	});
            }
            
            /* 判断是否登录  */
            function isLogin(){
            	var user = "${User.userId}";
            	
            	if(user == null || user == ""){
            		$("#gologin").css("display","inline-block");
            		$("#goregister").css("display","inline-block");
            		$("#isLogin").css("display","none");
            	}else{
            		$("#gologin").css("display","none");
            		$("#goregister").css("display","none");
            		$("#isLogin").css("display","inline-block");
            	}
            }
        </script>
	</body>
</html>