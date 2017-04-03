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
                        <li><a href="javascript:void(0)">商品管理</a></li>
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
                <div><input class="cart-buy" type="button" value="前去支付" /></div>
            </div>
            <!--底部标签-->
            <div id="footer">
                <span>Copyright © 一元购美食特卖商城 2016-2017，All Rights Reserved</span>
            </div>
        </div>
        
        <!-- 商品模板  -->
        <script id="catware" type="text/html">
			<div id="{{wareId}}" class="cart-ware">
            	<span><img src="{{wareimg}}" />{{wareName}} {{description}}</span>
            	<span class="wareprice">¥{{warePrice}}</span>
            	<span>
                	<input class="minusware" type="button" value="-" />
                	<input class="warenum" type="text" readonly="true" value="{{queity}}" />
                	<input class="addware" type="button" value="+" />
                	</span>
            	<span class="waresum">¥{{totalPrice}}</span>
            	<span class="delware"><a href="#"><i class="fa fa-trash"></i></a></span>
			</div>
		</script>
        
        <script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
        <script type="text/javascript" src="js/template.js"></script>
        <script type="text/javascript" src="js/pingpp.js"></script>
        <script type="text/javascript">
        	var warelist;
            $(document).ready(function(){
                bindEven();
                isLogin();
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
                });
                
                $(".cart-buy").click(function(){
                	$.ajax({
                		type:'POST',
                		url: 'AddOrder',
                		data: '{}',
                		dataType: 'text',
                		success: function(data){
                			pingPay(data);
                		}
                	});
                });
            }
            
            /* 判断购物车是否有商品 */
            function addmes(){
                var cart = {"wareId":"1"};
                console.log(cart);
                if( cart == "" || cart == null ){
                    $(".cart").append('<div class="cart-ware"><span id="mesware">您的购物车没有商品哦 <a href="index.jsp">前去购买</a></span></div>');
                    return null;
            	}
                
                //cart = cart.split(",");
                
                //var un = "";
                
                //for(var i = 0; i < cart.length;i++){
                //	un = un + JSON.parse(cart[i]).wareId;
                //}
                
                $.ajax({
                	type: 'POST',
                	url: 'getWareName',
                	data: {
                		"un": cart
                	},
                	datatype: 'json',
                	success: function(data){
                		warelist = data;
                	},error: function(data){
                		alert(data);
                		return null;
                	}
                });
                
                var ware = {
                		"wareId": "",
                		"wareimg": "",
                		"wareName": "",
                		"description": "",
                		"warePrice": "",
                		"queity": "",
                		"totalPrice": ""
                };
                
                var html = "";
                
                for(var j = 0; j < warelist.length;j++){
                	ware.wareId = warelist[j].wareId;
                	ware.wareimg = warelist[j].wareimg;
                	ware.wareName = warelist[j].wareName;
                	ware.description = warelist[j].description;
                	ware.warePrice = warelist[j].warePrice;
                	
                	for(var i = 0; i < cart.length;i++){
                		if(warelist[j].wareId == cart[i].wareId){
                			ware.queity = cart[i].queity;
                			break;
                		}
                	}
                	
                	ware.totalPrice = parseInt(ware.warePrice) * parseInt(ware.queity);
                	
                	html = html + template('catware',ware);
                }
                
                $(".cart").append(html);
            }
            
            /* Ping++ */
            function pingPay(charge){
            	pingpp.createPayment(charge, function(result, err){
            		
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