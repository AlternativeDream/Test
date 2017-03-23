<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>Title</title>
		<meta charset="UTF-8">
		<meta name="viewport" content="initial-scale=1.0">
        <link type="text/css" rel="stylesheet" href="css/font-awesome.min.css" />
        <link type="text/css" rel="stylesheet" href="css/business.css" />
	</head>
	<body>
        <!--头部标签-->
        <div class="header"></div>
        <!--页面标签-->
        <div class="wrap-page">
            <div class="page">
                <div class="nav">
                    <ul class="menu">
                        <li id="orders-manage" class="flmenu onthis">订单管理<i class="fa fa-chevron-right"></i></li>
                        <li id="wares-manage" class="flmenu">商品管理<i class="fa fa-chevron-right"></i></li>
                        <li id="users-manage" class="flmenu">用户管理<i class="fa fa-chevron-right"></i></li>
                    </ul>
                </div>
                <div class="main">
                    <div class="main-search">
                        <div class="main-order">
                            <input type="date" />
                            ~ <input type="date" />
                            <input type="checkbox" value="待付款" />待付款
                            <input type="checkbox" value="已付款" />已付款
                            <input type="checkbox" value="已完成" />已完成
                            <input class="btn-search" type="button" value="搜索订单" />
                        </div>
                        <div class="main-ware">
                            <input id="wareKey" type="text" placeholder="请输入关键词" />
                            <select id="wareKind">
                                <option value="0">零食/果干/坚果</option>
                                <option value="1">饼干/糕点</option>
                                <option value="2">糖果/巧克力</option>
                                <option value="3">牛奶/奶粉</option>
                                <option value="4">酒/饮料/水</option>
                                <option value="5">冲饮/咖啡/茶</option>
                            </select>
                            <input type="button" value="搜索商品" />
                            <input id="addware" type="button" value="新增商品" />
                        </div>
                        <div class="main-user">
                            <input type="text" placeholder="请输入用户名或用户联系号码" />
                            <input type="button" value="搜索用户" />
                        </div>
                    </div>
                    <div class="orders">
                        <div class="orders-head">
                            <span>商品名称</span>
                            <span>订单金额</span>
                            <span>数量</span>
                            <span>买家</span>
                            <span>交易状态</span>
                            <span>实付金额(元)</span>
                            <span>操作</span>
                        </div>
                        <div class="orders-list">
                            <div class="order">
                                <div class="order-title">
                                    <span>订单编号：20130451000000000123456</span>
                                    <span>下单时间：2017-03-20 15:15:30</span>
                                    <span>支付方式：网上支付</span>
                                    <a href="#">订单备注</a>
                                </div>
                                <div class="order-mes">
                                    <span><p class="vm">白色恋人<br>(白巧克力夹心味饼干)</p></span>
                                    <span><p class="vm">1000.00</p></span>
                                    <span><p class="vm">1</p></span>
                                    <span><p class="vm">qdc</p></span>
                                    <span><p class="vm">已发货<br><a href="#">订单详情</a></p></span>
                                    <span><p class="vm">1500.00</p></span>
                                    <span><p class="vm"><input class="btn-add" type="button" value="确认收款" /></p></span>
                                </div>
                            </div>
                            <div class="order">
                                <div class="order-title">
                                    <span>订单编号：20130451000000000123456</span>
                                    <span>下单时间：2017-03-20 15:15:30</span>
                                    <span>支付方式：网上支付</span>
                                    <a href="#">订单备注</a>
                                </div>
                                <div class="order-mes">
                                    <span><p class="vm">纽仕兰全脂牛奶<br>(250ML * 24盒)</p></span>
                                    <span><p class="vm">1000.00</p></span>
                                    <span><p class="vm">1</p></span>
                                    <span><p class="vm">qdc</p></span>
                                    <span><p class="vm">买家已付款<br><a href="#">订单详情</a></p></span>
                                    <span><p class="vm">1500.00</p></span>
                                    <span><p class="vm"><input class="btn-add ispay" type="button" value="发货" /></p></span>
                                </div>
                            </div>
                            <div class="order">
                                <div class="order-title">
                                    <span>订单编号：20130451000000000123456</span>
                                    <span>下单时间：2017-03-20 15:15:30</span>
                                    <span>支付方式：网上支付</span>
                                    <a href="#">订单备注</a>
                                </div>
                                <div class="order-mes">
                                    <span><p class="vm">德运全脂奶粉<br>(350ML 澳洲进口)</p></span>
                                    <span><p class="vm">1000.00</p></span>
                                    <span><p class="vm">1</p></span>
                                    <span><p class="vm">zss</p></span>
                                    <span><p class="vm">交易已完成<br><a href="#">订单详情</a></p></span>
                                    <span><p class="vm">1500.00</p></span>
                                    <span><p class="vm"><input class="btn-add isok" type="button" value="交易关闭" /></p></span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="wares">
                        <div class="wares-head">
                            <span>商品名称</span>
                            <span>单价(元)</span>
                            <span>详情</span>
                            <span>分类</span>
                            <span>关键字</span>
                            <span>状态</span>
                            <span>操作</span>
                        </div>
                        <div class="wares-list">
                            <div class="ware">
                                <div class="ware-title">
                                    <span>商品编号：20130451000000000123456</span>
                                    <span></span>
                                    <span></span>
                                    <a href="#">商品备注</a>
                                </div>
                                <div class="ware-mes">
                                    <span><p class="vm">白色恋人<br>(白巧克力夹心味饼干)</p></span>
                                    <span><p class="vm">69.00</p></span>
                                    <span><p class="vm">日本进口</p></span>
                                    <span><p class="vm">饼干</p></span>
                                    <span><p class="vm">白巧克力,饼干</p></span>
                                    <span><p class="vm">上架中</p></span>
                                    <span><p class="vm"><input class="btn-add" type="button" value="修改信息" /></p></span>
                                </div>
                            </div>
                        </div>
                        <div class="addware">
                            <input class="wareName" type="text" placeholder="商品名" />
                            <input class="warePrice" type="text" placeholder="单价" />
                            <input class="description" type="text" placeholder="详情" />
                            <input class="wareKind" type="text" placeholder="分类" />
                            <input class="warekey" type="text" placeholder="关键字" />
                            <input class="wareimg" type="file" placeholder="图片" />
                            <input id="addnewware" type="button" value="添加新品">
                        </div>
                        <div class="updateware">
                            <input class="wareName" type="text" placeholder="商品名" />
                            <input class="warePrice" type="text" placeholder="单价" />
                            <input class="description" type="text" placeholder="详情" />
                            <input class="wareKind" type="text" placeholder="分类" />
                            <input class="warekey" type="text" placeholder="关键字" />
                            <input class="wareimg" type="file" placeholder="图片" />
                            <select class="status">
                                <option value="1">上架中</option>
                                <option value="0">已下架</option>
                            </select>
                            <input id="updateware" type="button" value="更新商品">
                        </div>
                    </div>
                    <div class="users">
                        <div class="users-head">
                            <span>用户名</span>
                            <span>联系方式</span>
                            <span>性别</span>
                            <span>权限</span>
                            <span>操作</span>
                        </div>
                        <div class="users-list">
                            <div class="user">
                                <div class="user-title">
                                    <span>用户编号：20130451000000000123456</span>
                                </div>
                                <div class="user-mes">
                                    <span><p class="vm">zss</p></span>
                                    <span><p class="vm">13412345678</p></span>
                                    <span><p class="vm">男</p></span>
                                    <span><p class="vm">游客</p></span>
                                    <span><p class="vm"><input type="button" value="查看该用户订单" /></p></span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--底部标签-->
        <div class="footer"></div>

        <script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
        <script type="text/javascript">
            $(document).ready(function(){
                bindEven();
                $(".orders").css("display","block");;
            });
            
            function bindEven(){
                $(".flmenu").click(function(){
                    $(this).addClass("onthis").siblings().removeClass("onthis");
                });
                
                $("#orders-manage").click(function(){
                    $(".orders").css("display","block");
                    $(".wares").css("display","none");
                    $(".users").css("display","none");
                    $(".main-order").css("display","block");
                    $(".main-ware").css("display","none");
                    $(".main-user").css("display","none");
                });
                
                $("#wares-manage").click(function(){
                    $(".orders").css("display","none");
                    $(".wares").css("display","block");
                    $(".users").css("display","none");
                    $(".main-order").css("display","none");
                    $(".main-ware").css("display","block");
                    $(".main-user").css("display","none");
                });
                
                $("#users-manage").click(function(){
                    $(".orders").css("display","none");
                    $(".wares").css("display","none");
                    $(".users").css("display","block");
                    $(".main-order").css("display","none");
                    $(".main-ware").css("display","none");
                    $(".main-user").css("display","block");
                });
                
                $("#addware").click(function(){
                    $(".addware").fadeIn();
                });
                
                $("#addnewware").click(function(){
                	var addnew = $(this).parent();
                    var wareName = addnew.find(".wareName").val();
                    var warePrice = addnew.find(".warePrice").val();
                    var description = addnew.find(".description").val();
                	var wareKind = addnew.find(".wareKind").val();
                	var warekey = addnew.find(".warekey").val();
                	var wareimg = addnew.find(".wareimg").val();
                	
                	var addware = $.ajax({
                		type: "POST",
                		url: "AddWare",
                		data: {
                    		"wareName": wareName,
                    		"warePrice": warePrice,
                    		"description": description,
                    		"wareKind": wareKind,
                    		"warekey": warekey,
                    		"wareimg": wareimg
                    	},
                		datatype: "json",
                		success: function(){
                			alert("!");
                		}
                	});
                	
                    $(".addware").fadeOut();
                });
                
                $(".wares-list").on('click','.btn-add',function(){
                    $(".updateware").fadeIn();
                });
                
                $("#updateware").click(function(){
                    $(".updateware").fadeOut();
                });
            }
            
        </script>
	</body>
</html>