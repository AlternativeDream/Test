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
                        <li><a href="login.html">登录</a></li>
                        <li><a href="register.html">注册</a></li>
                        <li><a href="#">我的订单</a></li>
                        <li><a href="#">购物车</a></li>
                        <li id="warekind"><a href="#">商品分类</a></li>
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
                        <div class="order-head"><span>订单号</span><span>订单商品</span><span>收货人</span><span>订单金额</span><span>日期</span><span>操作</span></div>
                        <div id="goindex" class="orderinfo">暂无订单，这就去挑选商品 : <a href="index.html">商城首页</a></div>
                        <div class="orderinfo">
                            <span>123456</span><span>巧克力巧克力巧克力巧克力巧克力</span><span>QDC</span><span>¥50</span><span>2017-03-03</span><span><a href="#">详情</a></span>
                        </div>
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
                            <input id="address" class="address" type="text" placeholder="收件地址" />
                            <input id="addressee" class="addressee" type="text" placeholder="收件人" />
                            <input id="addtel" class="addtel" type="text" placeholder="联系电话" />
                            <button class="onadd" type="button">添加地址</button>
                        </div>
                        <div class="address-head">
                            <span>收件地址</span><span>收件人</span><span>联系电话</span><span>操作</span>
                        </div>
                        <div class="myaddress">
                            <span>福建省泉州市晋江市长兴路200号</span><span>XXX</span><span>1234567890123</span><span class="deladdress"><a href="#"><i class="fa fa-trash"></i></a></span>
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
                <span>{{address}}</span><span>{{addressee}}</span><span>{{addtel}}</span><span class="deladdress"><a href="#"><i class="fa fa-trash"></i></a></span>
            </div>
        </script>
        <script type="text/javascript">
            $(document).ready(function(){
                bindEven();
                addmes();
                hasOrder();
                userdefault();
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
                
                $(".maaddress").on('click','.deladdress',function(e){
                    $(this).parent().remove();
                    addmes();
                    e.stopPropagation();
                });
                
                $(".onadd").click(function(){
                    var address = $(".address").val();
                    var addressee = $(".addressee").val();
                    var addtel = $(".addtel").val();
                    
                    var addaddress = $.ajax({
                    	type: "POST",
                    	url: "NewAddress",
                    	data: {
                    		"address" : address,
                            "addressee" : addressee,
                            "addtel" : addtel
                    	},
                    	dataType:"json",
                        success : function(data){
                        }
                    });
                    
                    var newaddress = {
                    	"address": address,
                    	"addressee": addressee,
                    	"addtel": addtel
                    };
                    
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
            
        </script>
	</body>
</html>