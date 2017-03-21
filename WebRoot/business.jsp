<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="description" content="零食特卖" />
		<meta name="author" content="WXLin" />
		<title>商品管理</title>
		<link type="text/css" rel="stylesheet" href="css/business.css" />
	</head>
	<body>
		<!--布局容器-->
        <div id="content">
            <!--头部标签-->
            <div id="header">
                <div class="header-search">
                    <input type="text" placeholder="查询商品" />
                    <button type="button">搜索</button>
                </div>
                <div class="header-addware">
                    <button type="button">增加商品</button>
                </div>
                <div class="header-kind">
                    <input type="checkbox" value="零食" />零食果干
                    <input type="checkbox" value="甜点" />饼干糕点
                    <input type="checkbox" value="零食" />巧克力糖
                    <input type="checkbox" value="零食" />牛奶奶粉
                    <input type="checkbox" value="零食" />酒水饮料
                    <input type="checkbox" value="零食" />冲饮咖啡
                    <button type="button">搜索分类</button>
                </div>
            </div>
            <!--正文标签-->
            <div id="page">
                <div class="ware-head"><span>商品图片</span><span>商品名</span><span>商品信息</span><span>单价(元)</span><span>分类</span><span>关键字</span><span>操作</span></div>
                <div class="wares">
                    <div class="ware">
                        <span><img src="images/snacks/ChEi21gNtJ-AIK2JAAReFlOcKGM42701_230-230.jpg" /></span><span>小老板</span><span>小老板海苔</span><span>11.9</span><span>零食</span><span>小老板 海苔</span><span><a href="#">修改</a> <a href="#">删除</a></span>
                    </div>
                </div>
            </div>
            <!--底部标签-->
            <div id="footer"></div>
        </div>
	</body>
</html>