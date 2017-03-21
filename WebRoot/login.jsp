<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="description" content="零食特卖" />
		<meta name="author" content="WXLin" />
		<title>Insert title here</title>
		<link type="text/css" rel="stylesheet" href="css/log.css" />
	</head>
	<body>
		<div id="header">
            <a href="index.jsp"><div class="header-img"></div></a>
            <h5>您好，欢迎光临！  <a href="login.html">请登录</a></h5>
        </div>
        <div id="page">
            <div class="login-img"></div>
            <div class="login-form">
                <form action="UserLogin">
                    <h2>一元购美食登录</h2><a href="register.jsp">免费新注册</a>
                    <input name="loginname" class="logininput" type="text" placeholder="清输入用户名或手机号码" />
                    <input name="Password" class="logininput" type=password placeholder="请输入密码" />
                    <button class="subbtn" type="submit">登 录</button>
                </form>
            </div>
        </div>
        <div id="footer">
            <span>Copyright © 一元购美食特卖商城 2016-2017，All Rights Reserved</span>
        </div>
	</body>
</html>