<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="description" content="零食特卖  注册" />
		<meta name="author" content="WXLin" />
		<title>注册</title>
		<link type="text/css" rel="stylesheet" href="css/log.css" />
	</head>
	<body>
		<div id="header">
            <a href="index.jsp"><div class="header-img"></div></a>
            <h5>您好，欢迎光临！  <a href="login.jsp">请登录</a></h5>
        </div>
        <div id="page">
            <div class="page-form">
                <form action="UserRegister">
                    <h2>一元购美食注册</h2>
                    <input id="userName" name="userName" class="inputtext" type="text" placeholder="用户名" />
                    <input id="userTel" name="userTel" class="inputtext" type="text" placeholder="手机号" />
                    <input name="userPassword" class="inputtext" type=password placeholder="设置密码" />
                    <input name="repassword" class="inputtext" type=password placeholder="确认密码" />
                    <button class="subbtn" type="submit">注 册</button>
                </form>
                ${message}
            </div>
        </div>
        <div id="footer">
            <span>Copyright © 一元购美食特卖商城 2016-2017，All Rights Reserved</span>
        </div>
        <script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
        <script type="text/javascript">
	        $(document).ready(function(){
	        	bindEven();
	        });
	        
	        function bindEven(){
	        	$("#userName").blur(function(){
	        		var un = $("#userName").val();
                    $.ajax({
                        type : "POST",
                        url : "hasName",
                        data : {"un":un},
                    	dataType:"json",
                        success : function(data){
                         if(data !=null && !data.equals("")){
                        	 alert(${message});
                        	 }
                        }
                    });
                });
	        }
        </script>
	</body>
</html>