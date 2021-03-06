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
                            <input id="DayStart" type="date" />
                            ~ <input id="DayEnd" type="date" />
                            <input name="status" type="checkbox" value="1" />已付款
                            <input name="status" type="checkbox" value="2" />已发货
                            <input name="status" type="checkbox" value="0" />已完成
                            <input class="btn-search" type="button" value="搜索订单" />
                        </div>
                        <div class="main-ware">
                            <input id="wareKey" type="text" placeholder="请输入关键词" />
                            <select id="wareKind">
                            	<option value="">无</option>
                                <option value="snacks">零食/果干/坚果</option>
                                <option value="cooky">饼干/糕点</option>
                                <option value="candy">糖果/巧克力</option>
                                <option value="milk">牛奶/奶粉</option>
                                <option value="wine">酒/饮料/水</option>
                                <option value="coffee">冲饮/咖啡/茶</option>
                            </select>
                            <input id="queryWare" type="button" value="搜索商品" />
                            <input id="addware" type="button" value="新增商品" />
                        </div>
                        <div class="main-user">
                            <input class="usermsg" type="text" placeholder="请输入用户名或用户联系号码" />
                            <input id="queryUser" type="button" value="搜索用户" />
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
                        	<a class="closeware" href="javascript:void(0)" >关闭</a>
                            <input class="wareName" type="text" placeholder="商品名" />
                            <input class="warePrice" type="text" placeholder="单价" />
                            <input class="description" type="text" placeholder="详情" />
                            <select class="wareKind">
                            	<option value="sancks" >零食</option>
                            	<option value="candy" >糖果</option>
                            	<option value="cooky" >糕点</option>
                            	<option value="coffee" >饮料</option>
                            	<option value="wine" >酒水</option>
                            	<option value="milk" >牛奶</option>
                            </select>
                            <input class="warekey" type="text" placeholder="关键字" />
                            <input class="wareimg" type="file" placeholder="图片" />
                            <input id="addnewware" type="button" value="添加新品">
                        </div>
                        <div class="updateware">
                        	<a class="closeware" href="javascript:void(0)" >关闭</a>
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
        
        
        <!--订单模板-->
        <script id="orderModel" type="text/html">
			<div id={{orderId}} class="order">
				<div class="order-title">
					<span>订单编号：{{orderId}}</span>
					<span>下单时间：{{orderdate}}</span>
                    <span>支付方式：网上支付</span>
                </div>
                <div class="order-mes">
                    <span><p class="vm">{{ware.wareName}}<br>({{ware.description}})</p></span>
                    <span><p class="vm">{{ware.warePrice}}</p></span>
                    <span><p class="vm">{{quantity}}</p></span>
                    <span><p class="vm">{{address.addressee}}</p></span>
                    <span><p class="vm oStatus">{{status}}<br><a class="order-desc" href="javascript:void(0)">订单详情</a></p></span>
                    <span><p class="vm">{{totalPrice}}</p></span>
				{{if status=="买家已付款"}}
                    <span><p class="vm"><input class="btn-add ispay" type="button" value="发货" /></p></span>
				{{else if status=="卖家已发货"}}
					<span><p class="vm"><input class="btn-add cheques" type="button" value="完成订单" /></p></span>
				{{/if}}
                </div>
				<div class="order-footer">
					<span><p class="vm"><span>收货地址：{{address.address}}</span><span>联系方式：{{address.addtel}}</span></p></span>
				</div>
            </div>
		</script>
        <!--商品模板-->
        <script id="wares" type="text/html">
            <div id="{{wareId}}" class="ware">
                <div class="ware-title">
                    <span>商品编号：{{wareId}}</span>
                    <span></span>
                    <span></span>
                </div>
                <div class="ware-mes">
                    <span><p class="wareName vm">{{wareName}}</p></span>
                    <span><p class="warePrice vm">{{warePrice}}</p></span>
                    <span><p class="description vm">{{description}}</p></span>
                    <span><p class="wareKind vm">{{wareKind}}</p></span>
                    <span><p class="warekey vm">{{warekey}}</p></span>
                    <span><p class="status vm">{{status}}</p></span>
                    <span><p class="vm"><input class="btn-update" type="button" value="修改信息" /></p></span>
                </div>
            </div>
        </script>
        
        <!-- 用户模板  -->
        <script id="users" type="text/html">
        	<div id={{userId}} class="user">
		        <div class="user-title">
		            <span>用户编号：{{userId}}</span>
		        </div>
		        <div class="user-mes">
		            <span><p class="vm">{{userName}}</p></span>
		            <span><p class="vm">{{userTel}}</p></span>
		            <span><p class="vm">{{userSex}}</p></span>
		            <span><p class="vm">
						{{if userId == 0}}
							管理员
						{{else}}
							游客
						{{/if}}
					</p></span>
		            <span><p class="vm"><input class="getUserOrders" type="button" value="查看该用户订单" /></p></span>
		        </div>
		    </div>
        </script>

        <script type="text/javascript" src="js/template.js"></script>
        <script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
        <script type="text/javascript">
        
        	/* 全局变量  */
        	var orderlist;
        	var warelist;
        	var userlist;
        	var thiswareid;
        	var thisware;
        
        	/* 初始化 */
            $(document).ready(function(){
                bindEven();
                loaddata();
                $(".orders").css("display","block");;
            });
            
        	/* 绑定事件组 */
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
                	var addnew = $(".addware");
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
                		success: function(data){
                			getWarelist();
                			alert(data);
                		}
                	});
                    $(".addware").fadeOut();
                });
                
                $(".wares-list").on('click','.btn-update',function(){
                	thiswareid = $(this).parent().parent().parent().parent().attr("id");
                	var updateware = $(".updateware");
                	thisware = $(this).parent().parent().parent();
                	
                    $(".updateware").fadeIn();
                    
                    for(var i = 0; i < warelist.length;i++){
                    	if(thiswareid == warelist[i].wareId){
                    		updateware.find(".wareName").val(warelist[i].wareName);
                            updateware.find(".warePrice").val(warelist[i].warePrice);
                            updateware.find(".description").val(warelist[i].description);
                         	updateware.find(".wareKind").val(warelist[i].wareKind);
                         	updateware.find(".warekey").val(warelist[i].warekey);
                         	updateware.find(".wareimg").val(warelist[i].wareimg);
                         	
                         	if(warelist[i].status == 1){
                         		updateware.find(".status").options[0].selected = true;
                         	}else{
                         		updateware.find(".status").options[1].selected = true;
                         	}
                    	}
                    }
                    
                });
                
                $("#updateware").click(function(){
                	var updateware = $(".updateware");
                	var wareName = updateware.find(".wareName").val();
                    var warePrice = updateware.find(".warePrice").val();
                    var description = updateware.find(".description").val();
                 	var wareKind = updateware.find(".wareKind").val();
                 	var warekey = updateware.find(".warekey").val();
                 	var wareimg = updateware.find(".wareimg").val();
                 	var status = updateware.find(".status").val();
                 	
                 	if(wareimg != null){
                 		var arr = wareimg.split('.');
                 		arr = arr[arr.length-1];
                 		
                 		if(arr != 'jpg' && arr != 'png'){
                 			wareimg = null;
                 		}
                 	}
                 	
                 	var ware = {
                 			"wareId": thiswareid,
                 			"wareName": wareName,
                 			"warePrice": warePrice,
                 			"description": description,
                 			"wareKind": wareKind,
                 			"warekey": warekey,
                 			"wareimg": wareimg,
                 			"status": status,
                 	};
                	
                 	var updateware = $.ajax({
                 		type: 'POST',
                 		url: 'ModifyWare',
                 		data: ware,
                 		datatype: 'text',
                 		success: function(data){
                 			thisware.find(".wareName").text(wareName);
                 			thisware.find(".warePrice").text(warePrice);
                 			thisware.find(".description").text(description);
                 			thisware.find(".wareKind").text(wareKind);
                 			thisware.find(".warekey").text(warekey);
                 			thisware.find(".wareimg").text(wareimg);
                         	
                         	if(status == 1){
                         		thisware.find(".status").options[0].selected = true;
                         	}else{
                         		thisware.find(".status").options[1].selected = true;
                         	}
                         	
                         	for(var i = 0; i < warelist.length;i++){
                            	if(thiswareid == warelist[i].wareId){
                            		warelist[i].wareName = wareName;
                            		warelist[i].warePrice = warePrice;
                            		warelist[i].description = description;
                            		warelist[i].wareKind = wareKind;
                            		warelist[i].warekey = warekey;
                            		warelist[i].wareimg = wareimg;
                            		warelist[i].status = status;
                            	}
                            }
                 		}
                 	});
                 	
                    $(".updateware").fadeOut();
                });
                
                /* 按日期搜索订单  */
                $(".btn-search").click(function(){
                	var DayStart = $("#DayStart").val();
                	var DayEnd = $("#DayEnd").val();
                	var statusArray = new Array();
                	
                	$('input[name="status"]:checked').each(function(){
                		statusArray.push($(this).val());
                	});
                	
                	var status = statusArray.join(',');
                	
                	if(status == null && status == ""){
                		status = null;
                	}
                	
                	$.ajax({
                		type: 'POST',
                		url: 'getOrderDate',
                		data: {
                			"DayStart": DayStart,
                			"DayEnd": DayEnd,
                			"status": status
                		},
                		datatype: 'json',
                		success: function(data){
                			orderlist = data;
                			makeOrder();
                		}
                	});
                	
                });
                
                /* 绑定订单状态按钮  */
                $(".orders-list").on('click','.ispay',function(){
                	var orderId = $(this).parent().parent().parent().parent().attr("id");
                	var status = {
                			"orderId": orderId,
                			"status": "2"
                	};
                	ModifyOrder(status);
                });
                
                /* 绑定订单状态按钮  */
                $(".orders-list").on('click','.cheques',function(){
                	var orderId = $(this).parent().parent().parent().parent().attr("id");
                	var status = {
                			"orderId": orderId,
                			"status": "0"
                	};
                	ModifyOrder(status);
                });
                
                $(".orders-list").on('click','.order-desc',function(){
                	var a = $(this).parent().parent().parent().parent();
                	a.find(".order-footer").slideToggle()
                });
                
                $("#queryUser").click(function(){
                	var usermsg = $(".usermsg").val();
                	getUsers(usermsg);
                });
                
                /* 检索用户订单  */
                $(".users-list").on('click','.getUserOrders',function(){
                	var userId = $(this).parent().parent().parent().parent().attr("id");
                	
                	$.ajax({
            			type: 'POST',
            			url: 'getOrders',
            			data: {
                			"userId": userId
                    	},
            			datatype: 'json',
            			success: function(data){
            				orderlist = data;
            				makeOrder();
            				$("#orders-manage").click();
            			}
            		});
                	
                });
                
                /* 按关键字类型检索商品   */
                $("#queryWare").click(function(){
                	var warekey = $("#wareKey").val();
                	var wareKind = $("#wareKind").val();
                	
                	var ware = {
                			"warekey": warekey,
                			"wareKind": wareKind
                	};
                	
                	getWarelist(ware);
                	
                });
                
                /* 关闭新增怎修改对话框   */
                $(".closeware").click(function(){
                	$(this).parent().hide();
                });
            }
        	
        	/* 初始化数据  */
        	function loaddata(){
        		/* 加载订单数据  */
        		var getOrders = $.ajax({
        			type: 'POST',
        			url: 'getOrders',
        			data: {},
        			datatype: 'json',
        			success: function(data){
        				orderlist = data;
        				makeOrder();
        			}
        		});
        		
        		/* 加载商品数据  */
        		var getW = getWarelist(null);
        		
        		/* 加载用户数据  */
        		var getU = getUsers(null);
        		
        	}
        	
        	function getUsers(usermsg){
        		$.ajax({
        			type: 'POST',
        			url: 'getUsers',
        			data: {
        				"usermsg": usermsg
        			},
        			datatype: 'json',
        			success: function(data){
        				userlist = data;
        				var html = "";
        				
        				for(var i = 0; i < userlist.length;i++){
        					html = html + template("users",userlist[i]);
        				}
        				
        				$(".users-list").empty();
        				$(".users-list").append(html);
        			},error: function(data){
        				alert(data);
        			}
        		});
        	}
        	
        	function getWarelist(ware){
        		$.ajax({
	                type: 'POST',
	                url: 'getWares',
	                data: ware,
	                datatype: 'json',
	                success: function(data){
	                	warelist = data;
	                	var html = "";
	                	
	                	for(var i = 0; i < data.length;i++){
	                		html = html + template("wares",warelist[i]);
	                	}
	                	
	                	$(".wares-list").empty();
	                	$(".wares-list").append(html);
	                	
	                },error:function(data){
	                	alert(data);
	                }
	            });
        	}
        	
        	/* 动态生成订单页  */
        	function makeOrder(){
        		$(".orders-list").empty();
        		var html = "";
				
				for(var i = 0; i < orderlist.length;i++){
					
					if(orderlist[i].status == "1"){
						orderlist[i].status = "买家已付款";
					}else if(orderlist[i].status == "2"){
						orderlist[i].status = "卖家已发货";
					}else{
						orderlist[i].status = "订单已完成";
					}
					
					html = html + template("orderModel",orderlist[i]);
				}
				
				$(".orders-list").append(html);
        	}
            
        	/* 变更订单状态  */
        	function ModifyOrder(status){
        		$.ajax({
            		type: 'POST',
            		url: 'ModifyOrder',
            		data: status,
            		success: function(){
            			var order = $("#"+status.orderId);
            			
            			if(status.status == "2"){
            				order.find(".btn-add").removeClass("ispay").addClass("cheques").val("完成订单");
            				order.find(".oStatus").html('卖家已发货<br><a href="#">订单详情</a>');
            			}else if(status.status == "0"){
            				order.find(".btn-add").remove();
            				order.find(".oStatus").html('交易已完成<br><a href="#">订单详情</a>');
            			}
            			
            		}
            	});
        	}
        	
        </script>
	</body>
</html>