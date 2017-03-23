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
                        <input class="search" type="text" placeholder="一元购" />
                        <button class="search-btn" type="submit">搜索</button>
                    </div>
                </div>
            </div>
            <!--主体标签-->
            <div id="page">
                <div class="cart" >
                    <div class="cart-head">
                        <span>商品信息</span><span>单价(元)</span><span>数量</span><span>小计(元)</span><span>操作</span>
                    </div>
                    <div class="cart-ware">
                        <span><img src="images/snacks/ChEi21gNtJ-AIK2JAAReFlOcKGM42701_230-230.jpg" />小老板 烤海苔卷 原味</span>
                        <span class="wareprice">¥11.9</span>
                        <span>
                            <input class="minusware" type="button" value="-" />
                            <input class="warenum" type="text" readonly="true" value="1" />
                            <input class="addware" type="button" value="+" />
                        </span>
                        <span class="waresum">¥11.9</span>
                        <span class="delware"><a href="#"><i class="fa fa-trash"></i></a></span>
                    </div>
                </div>
            </div>
            <!--底部标签-->
            <div id="footer">
                <span>Copyright © 一元购美食特卖商城 2016-2017，All Rights Reserved</span>
            </div>
        </div>
        <script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
        <script type="text/javascript">
            $(document).ready(function(){
                bindEven();
                addmes();
            });
            
            /* 绑定事件组 */
            function bindEven(){
                $(".cart").on('click','.minusware',function(){
                    var num = parseInt($(this).next().val());
                    var price = parseFloat($(".wareprice").text().substring(1));
                    if(num > 1){
                        $(this).next().val(num-1);
                        $(".waresum").text("¥"+(price*(num-1)).toFixed(1));
                    }
                })
                
                $(".cart").on('click','.addware',function(){
                    var num = parseInt($(this).prev().val());
                    var price = parseFloat($(".wareprice").text().substring(1));
                    if(num < 99){
                        $(this).prev().val(num+1);
                        $(".waresum").text("¥"+(price*(num+1)).toFixed(1));
                    }
                })
                
                $(".cart").on('click','.delware',function(){
                    $(this).parent().remove();
                    addmes();
                });
            }
            
            /* 判断购物车是否有商品 */
            function addmes(){
                if($(".cart").children(".cart-ware").length ==0 ){
                        $(".cart").append('<div class="cart-ware"><span id="mesware">您的购物车没有商品哦 <a href="index.jsp">前去购买</a></span></div>');
                }
            }
        </script>
	</body>
</html>