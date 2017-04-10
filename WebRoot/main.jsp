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
                        <button class="search-btn" type="button">搜索</button>
                    </div>
                </div>
            </div>
            <!--主体标签-->
            <div id="page">
                <div class="main-wares">
                    
                </div>
                <div id="next">
                	<ul>
                		<li>共查找到<span id="totalNum" ></span>件商品</li>
                		<li id="homePage"><a href="javascript:void(0)">首页</a></li>
                		<li id="lastPage"><a href="javascript:void(0)">上一页</a></li>
                		<li id="nextPage"><a href="javascript:void(0)">下一页</a></li>
                		<li id="endPage"><a href="javascript:void(0)">尾页</a></li>
                		<li>第<span id="curPage">1</span>页/共<span id="pageCount"></span>页</li>
                	</ul>
                </div>
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
                        <input class="ware-num" type="text" readonly="true" value="1" />
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
        	var totalNum;
        	var pageCount;
        	var curPage;
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
                    if(num > 1){
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
                
                $(".search-btn").click(function(){
                	wareQuery();
                });
                
                $("#homePage").click(function(){
                	var curPage = parseInt($("#curPage").text());
                	
                	if(curPage != 1){
                		curPage(1);
                		$("#curPage").text("1");
                	}
                });
                
				$("#lastPage").click(function(){
					var curPage = parseInt($("#curPage").text());
					
					if(curPage != 1){
						curPage--;
						pagpin(curPage);
						$("#curPage").text(curPage);
					}
                });
                
				$("#nextPage").click(function(){
					var curPage = parseInt($("#curPage").text());
					
					if(curPage != pageCount){
						curPage++;
						pagpin(curPage);
						$("#curPage").text(curPage);
					}
				});

				$("#endPage").click(function(){
					var curPage = parseInt($("#curPage").text());
					
					if(curPage != pageCount){
                		pagpin(pageCount);
                		$("#curpage").text(pageCount);
                	}
				});

            }
            
            function wareQuery(){
            	var warekey = $("#wareQuery").val();
            	var ware;
            	if(warekey != null && warekey !=""){
            		ware = {
                			"warekey": warekey
                	};
            	}else{
            		ware = {};
            		var url = location.search;
                	if(url != null && url != ""){
                		var str = url.substr(1);
                		str = str.split("=");
                		ware[str[0]] = decodeURIComponent(str[1]);
                	}
            	}
            	
            	
            	console.log(ware);
            	
            	$.ajax({
            		type: 'POST',
            		url: 'getWares',
            		data: ware,
            		datatype: 'json',
            		success: function(data){
            			warelist = data;
            			totalNum = warelist.length;
                    	pageCount = pageCount = parseInt(totalNum/20 + 1);
                    	
                    	pagpin(1);
                    	
                    	$("#totalNum").text(totalNum);
                    	$("#pageCount").text(pageCount);
                    	
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
            
            /* 分页   */
            function pagpin(pageNum){
            	var Count = pageNum * 20;
            	var start = (pageNum - 1) * 20;
            	
            	if(Count > totalNum){
            		Count = totalNum;
            	}
            	
            	var html = "";
            	
            	for(var i = start; i < Count;i++){
            		html = html + template("ware-model",warelist[i]);
            	}
            	
            	$(".main-wares").empty();
            	$(".main-wares").append(html);
            	$("#curPage").text(pageNum);
            }
        </script>
	</body>
</html>