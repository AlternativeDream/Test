<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="description" content="零食特卖" />
        <meta name="author" content="WXLin" />
		<title>个人信息</title>
		<link type="text/css" rel="stylesheet" href="css/font-awesome.min.css" />
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
                        <li id="warekind"><a href="javascript:void(0)">商品分类</a></li>
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
                        <i class="fa fa-search"></i>
                        <input class="search" type="text" placeholder="一元购" />
                        <button class="search-btn" type="button">搜索</button>
                    </div>
                </div>
            </div>
            <!--主体标签-->
            <div id="page">
                <div id="sidenav">
                    <div class="sidernav-head"><i class="fa fa-user-o"></i>个人中心</div>
                    <div class="sidernav-ul">
                        <ul>
                            <li class="thissider">我的订单</li>
                            <li>个人资料</li>
                            <li>地址管理</li>
                            <li>修改密码</li>
                        </ul>
                    </div>
                </div>
                <div id="total">
                    <div class="myorder">
                        <div class="order-head"><span>订单号</span><span>订单商品</span><span>收货人</span><span>订单金额</span><span>数量</span><span>日期</span><span>操作</span></div>
                        <div id="goindex" class="orderinfo">暂无订单，这就去挑选商品 : <a href="index.html">商城首页</a></div>

                    </div>
                    <div class="userinfo">
                        <div>
                            <input id="userName" type="text" placeholder="用户名" />
                            <input id="userTel" type="text" placeholder="电话号码" />
                            <input id="male" name="sex" type="radio" value="male" checked />男
                            <input id="female" name="sex" type="radio" value="female" />女
                            
                            <button id="modify" type="button">点击修改信息</button>
                        </div>
                    </div>
                    <div class="maaddress">
                        <div class="addaddress">
                            <input id="address" type="text" placeholder="收件地址" />
                            <input id="addressee" type="text" placeholder="收件人" />
                            <input id="addtel" type="text" placeholder="联系电话" />
                            <button class="onadd" type="button">添加地址</button>
                        </div>
                        <div class="address-head">
                            <span>收件地址</span><span>收件人</span><span>联系电话</span><span>操作</span>
                        </div>
                    </div>
                    <div class="modifypsd">
                        <div>
                            <input id="oldpassword" type="password" placeholder="请输入旧密码" />
                            <input id="newpassword" type="password" placeholder="清输入新密码" />
                            <input id="renewpassword" type="password" placeholder="请再次输入新密码" />
                            <button id="modifypsw">修改密码</button>
                        </div>
                    </div>
                </div>
            </div>
            <!--底部标签-->
            <div id="footer">
                <span>Copyright © 一元购美食特卖商城 2016-2017，All Rights Reserved</span>
            </div>
        </div>
        <script type="text/javascript" src="js/template.js"></script>
        <script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
        <script id="aaddress" type="text/html">
            <div class="myaddress">
                <span class="address">{{address}}</span><span class="addressee">{{addressee}}</span><span class="addtel">{{addtel}}</span><span class="deladdress"><a href="javascript:void(0)"><i class="fa fa-trash"></i></a></span>
            </div>
        </script>
        <script id="orders" type="text/html">
			<div class="orderinfo">
				<div class="ordermsg">
					<span>{{orderId}}</span>
					<span>{{ware.wareName}}</span>
					<span>{{address.addressee}}</span>
					<span>¥{{totalPrice}}</span>
					<span>{{quantity}}</span>
					<span class="orderdate">{{orderdate}}</span>
					<span><a class="toggledec" href="javascript:void(0)">详情</a></span>
				</div>
				<div class="order-dec">
                	<span>收货地址：{{address.address}}</span>
                	<span>联系方式：{{address.addtel}}</span>
                </div>
			</div>
		</script>
        <script type="text/javascript">
        	/* 全局变量  */
        	var addresslist = {};
        	var orderlist = {};
        	
        	/* 初始化  */
            $(document).ready(function(){
                bindEven();
                addmes();
                hasOrder();
                userdata();
                userdefault();
                isLogin();
            });
            
            /* 绑定事件组 */
            function bindEven(){
                $(".sidernav-ul").on('click','li',function(){
                    $(this).addClass("thissider").siblings().removeClass("thissider");
                    var li = $(this).index();
                    switch(li){
                        case 0:
                            $(".myorder").css("display","block");
                            $(".myorder").siblings().css("display","none");
                            break;
                        case 1:
                            $(".userinfo").css("display","block");
                            $(".userinfo").siblings().css("display","none");
                            break;
                        case 2:
                            $(".maaddress").css("display","block");
                            $(".maaddress").siblings().css("display","none");
                            break;
                        case 3:
                            $(".modifypsd").css("display","block");
                            $(".modifypsd").siblings().css("display","none");
                            break;
                    }
                });
                
                $(".maaddress").on('click','.deladdress',function(){
                    var useraddress = $(this).parent();
                    var address = useraddress.find(".address").text();
                    var addressee = useraddress.find(".addressee").text();
                    var addtel = useraddress.find(".addtel").text();

                    var deladdress = {
                    		"address": address,
                    		"addressee": addressee,
                    		"addtel": addtel
                    };
 
                    var deleteaddress = $.ajax({
                    	type: 'POST',
                    	url: 'DelAddress',
                    	data: deladdress,
                    	dataType: 'json',
                    	success: function(data){
                    		addresslist = data;
                    	}
                    });
                    
                    $(this).parent().remove();
                    addmes();
                    e.stopPropagation();
                });
                
                $(".onadd").click(function(){
                    var address = $("#address").val();
                    var addressee = $("#addressee").val();
                    var addtel = $("#addtel").val();
                    var html = "";

                    var newaddress = {
                        	"address": address,
                        	"addressee": addressee,
                        	"addtel": addtel
                        };
                    
                    var addaddress = $.ajax({
                    	type: "POST",
                    	url: "NewAddress",
                    	data: newaddress,
                    	dataType:"json",
                        success : function(data){
                        	addresslist = data;
                        }
                    });
                    
                    html = template("aaddress",newaddress);
                    $("#noadd").remove();
                    $(".maaddress").append(html);
                });
                
                $("#modify").click(function(){
                	var userName = $("#userName").val();
                	var userTel = $("#userTel").val();
                	var sex = $("input[name='sex']:checked").val();
  
                	var modify = $.ajax({
                        type : "POST",
                        url : "Modify",
                        data : 
                        {
                        	"userName": userName,
                        	"userTel": userTel,
                        	"sex": sex
                        },
                    	dataType:"json",
                        success : function(data){
                        }
                    });
                	
                	$(".userinfo").css("display","block");
                    $(".userinfo").siblings().css("display","none");
                    alert("修改成功");
                });
                
                /* 修改密码   */
                $("#modifypsw").click(function(){
                	var oldpassword = $("#oldpassword").val();
                	var newpassword = $("#newpassword").val();
                	var renewpassword = $("#renewpassword").val();
                	
                	if(oldpassword == "" || newpassword == "" || renewpassword == "" ){
                		alert("密码不能为空！");
                		return null;
                	}
                	
                	if(oldpassword != "${User.userPassword}"){
                		alert("密码错误！请重试");
                		return null;
                	}else if(newpassword != renewpassword){
                		alert("请确认两次密码一致！");
                		return null;
                	}
                	
                	var modifypad = $.ajax({
                		type: "POST",
                		url: "ModifyPassword",
                		data: {
                			"oldpassword":oldpassword,
                			"newpassword":newpassword
                		},
                		dataType:"json",
                        success : function(data){
                        }
                	});
                	
                	$(".modifypsd").css("display","block");
                    $(".modifypsd").siblings().css("display","none");
                    $("#oldpassword").val("");
                	$("#newpassword").val("");
                	$("#renewpassword").val("");
                    alert("修改成功");
                });

				$(".myorder").on('click','.toggledec',function(){
                    $(this).parent().parent().next().slideToggle();
                });
				
				$(".search-btn").click(function(){
	                var warekey = $(".search").val();
	                window.location.href = "main.jsp?warekey=" + encodeURIComponent(warekey);
	            });
                
            }
            
            /* 判断是否有订单 */
            function hasOrder(){
                var myorder = $(".myorder");
                if(myorder.children().length >= 3){
                    $("#goindex").css("display","none");
                }else if(myorder.children().length == 1){
                    $("#goindex").css("display","block");
                }
            }
            
            /* 判断是否有地址 */
            function addmes(){
                if($(".maaddress").children(".myaddress").length ==0 ){
                        $(".maaddress").append('<div id="noadd" class="myaddress"><span id="mesware">您还没有地址哦</span></div>');
                }
            }
            
            /* 个人信息默认值  */
            function userdefault(){
            	var userName = "${User.userName}";
            	var userTel = "${User.userTel}";
            	var sex = "${User.userSex}";
            	
            	if(userName != "" && userTel != ""){
            		$("#userName").val(userName);
            		$("#userTel").val(userTel);
            		$("input[name='sex'][value='" + sex + "']").prop("checked","checked");
            	}
            	
            }
            /* 初始化用户数据  */
            function userdata(){
            	/* 用户订单数据  */
            	/* 用户地址数据  */
            	var userId = "${User.userId}"
            	
            	if(userId == null || userId == ""){
            		userId = localStorage.getItem("userId");
            		
            		if(userId == null || userId == ""){
            			alert("请登录");
            			location.href = "login.jsp"
            		}
            	}
            	
            		
            	var useraddresslist = $.ajax({
            		type: 'POST',
            		url: 'getAddress',
            		data: {
            			"userId":userId
            		},
            		dataType: 'json',
            		success: function(data){
            			addresslist = data;
            			var html = "";
            			
            			if(addresslist.length > 0){
            				
            				for(var i = 0; i < addresslist.length;i++){
            					html = html + template("aaddress",addresslist[i]);
            				}
            				
            				
                            $("#noadd").remove();
                            $(".maaddress").append(html);
            			}
            			
            		}
            	});
            	
            	var userorderlist = $.ajax({
            		type: 'POST',
            		url: 'getOrders',
            		data: {
            			"userId":userId
            		},
            		datatype: 'json',
            		success: function(data){
            			orderlist = data;
            			var html = "";
            			
            			if(orderlist.length > 0){
            				for(var i = 0; i < orderlist.length;i++){
            					html = html + template("orders",orderlist[i]);
            				}
            				
            				$("#goindex").remove();
            				$(".myorder").append(html);
            			}
            			localStorage.removeItem("userId");
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