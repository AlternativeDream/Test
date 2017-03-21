<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="description" content="零食特卖" />
        <meta name="author" content="WXLin" />
        <link type="text/css" rel="stylesheet" href="css/font-awesome.min.css" />
        <link type="text/css" rel="stylesheet" href="css/main.css" />
		<title>一元零食购</title>
	</head>
	<body>
		<!--布局容器-->
        <div id="content">
            <!--头部标签-->
            <div id="header">
                <div id="header-nav">
                    <ul>
                        <li><a href="#">登录</a></li>
                        <li><a href="#">注册</a></li>
                        <li><a href="#">我的订单</a></li>
                        <li><a href="#">购物车</a></li>
                        <li><a href="#">商品分类</a></li>
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
        </div>
        <!--主体标签-->
        <div id="page">
            <div id="commodity">
                <div id="commodity-img">
                    <img src="images/snacks/ChEi21gNtJ-AIK2JAAReFlOcKGM42701_230-230.jpg" />
                </div>
                <div id="information">
                    <h4>小老板 烤海苔卷 原味 32.4g/盒 泰国进口</h4>
                    <h3>¥11.9</h3>
                    <p>支持货到付款</p>
                    <p>送货至XXX 现货</p>
                    <p>17:30前完成订单，预计一天送达</p>
                    <div class="wares-ware-btn">
                        <div class="ware-btn">
                            <input class="ware-num" type="text" readonly="true" value="0" />
                            <input class="ware-add" type="button" value="∧" />
                            <input class="ware-minus" type="button" value="∨" />
                        </div>
                        <button class="ware-cart" type="button">加入购物车</button>
                    </div>
                </div>
            </div>
        </div>
        <div id="footer">
            <span>Copyright © 一元购美食特卖商城 2016-2017，All Rights Reserved</span>
        </div>
        <script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
        <script type="text/javascript">
            $(document).ready(function(){
                bindEvent();
            });
            
            /* 绑定事件组 */
            function bindEvent(){
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
                    if(num > 0){
                        $(this).prev().prev().val(num-1);
                        $(this).prev().removeAttr("disabled");
                    }else{
                        $(this).attr({"disabled":"disabled"});
                    }
                     e.stopPropagation();
                });
            }
        </script>
	</body>
</html>