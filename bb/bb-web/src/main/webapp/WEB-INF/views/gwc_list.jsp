<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>贝贝购物车</title>
<meta name="author" content="ysw" />
<script
	src="/js/jquery-1.4.2.js"></script>
<style>
.beibei-warn {
	height: 40px;
	line-height: 40px;
	font-size: 12px;
	width: 100%;
	color: #666;
	background: #FFF8EF;
}

.beibei-warn_notice {
	margin: auto;
	text-align: center;
}

.top-nav {
	font-size: 14px;
	background: #F4F4F4;
}

.wrapper ul {
	list-style: none;
	margin-left: 42%;
}

.wrapper ul li {
	display: inline;
	margin: 2px;
}

a {
	text-decoration: none;
	text-align: center;
}

a:hover {
	text-decoration: underline;
}

.seg {
	border-right: 1px solid darkgray;
}

/* 容器 <div> - 需要定位下拉内容 */
.dropdown {
	position: relative;
	display: inline-block;
}

/* 下拉内容 (默认隐藏) */
.dropdown-list {
	display: none;
	position: absolute;
	background-color: #f9f9f9;
	text-align: center;
	min-width: 100px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
}
/* 在鼠标移上去后显示下拉菜单 */
.dropdown:hover .dropdown-list {
	display: block;
}

.wechat {
	width: 200px
}

.beibei-header {
	width: 60%;
	height: 90px;
	margin-left: 20%;
	margin-right: 20%;
}

#head {
	margin-left: 20%;
	margin-right: 20%;
}

#main-logo {
	display：inline-block float: left;
	height: 60px
}

#backtomainpage {
	float: left;
	margin: auto;
}

#guarantee {
	float: right;
	margin: auto;
}

.beibei-content {
	font-size: 12px;
	height: 600px;
	/* border: 1px solid red; */
}

.beibei-cart {
	margin-left: 20%;
	margin-right: 20%;
	height: 90px;
}

.cart-process {
	border: 1px solid #d8d8d8;
	position: relative;
	background: #FAFAFA;
	
	margin: auto;
}

.cart-process title {
	margin: auto;
	background-color: #DDD;
}

.cart-process img {
	position: absolute;
	right: 0;
	bottom: 0px;
	background-color: #DDD;
}

.cart-list {
	
	height: 250px;
	padding: 0px 0px 0px;
}

.pure-table {
	border: 1px solid #d8d8d8;
}

.cart-list .pure-table thead {
	background: #f3f3f3;
	color: #555;
}

.seg-entry {
	height: 15px;
}

.event-entry {
	border: 1px solid red;
	height: 40px;
	background: #f4f4f4;
}

.cart-list .item-entry {
	border: 1px solid #d8d8d8;
	border-top: 0;
}

.cart-td-item-info .image {
	float: left;
	height: 75px;
	width: 75px;
	overflow: hidden;
	border: 1px solid #ddd;
	padding: 1px;
}

.img00 {
	height: 75px;
	width: 75px;
}

.cart-td-item-info .title {
	font-size: 12px;
	display: block;
	line-height: 20px;
	margin: 0 20px 0 90px;
	overflow: hidden;
}

.footer-entry {
	margin-left: 800px;
	margin-top: 20px;
	position: absolute;
}

.m-pay-bar-cont {
	border: 1px solid #d8d8d8;
	background: #f4f4f4;
	width: 800px;
	margin-top: 80px;
	height: 60px;
}

.clearfix {
	float: left;
}

.cart-summary {
	float: right;
}

#summary-price {
	margin-right: 40px;
}

.footer-nav {
	font-size: 12px;
	margin: auto;
	text-align: center;
}

.footer-content {
	font-size: 12px;
	margin: auto;
	text-align: center;
}

#pay-btn {
	font-size: 14px;
	background: #ff5482;
	border-radius: 5px;
	color: #fff;
	height: 40px;
	line-height: 40px;
	margin: 10px 15px 20px;
	text-align: center;
	width: 120px;
}

.cart-payment {
	font-size: 26px;
	line-height: 60px;
	color: #ff4975;
}

#pay-lable>div {
	line-height: 60px;
}
</style>
</head>
<body>
	<!-- 顶部导航 START -->
	<div class="beibei-warn">
		<div class="beibei-warn_notice">
			任何情况下，贝贝不会以任何理由主动联系用户索要密码、验证码或银行卡号，或是要求点击任何网址链接扫描二维码进行退款或支付操作。请提高警惕，谨防受骗！
		</div>
	</div>

	<div class="top-nav">
		<div class="wrapper">
			<ul>
				<li class="seg"></li>
				<li><a href="#">消息</a></li>
				<li class="seg"></li>
				<li><a href="#">我的订单</a></li>
				<li class="seg"></li>
				<li><a href="#">我的贝贝</a></li>
				<li class="seg"></li>
				<li><a href="#">商家入驻</a></li>
				<li class="seg"></li>
				<li>
					<div class="dropdown">
						<a id="" href="#">贝贝商家中心</a>
						<div class="dropdown-list">
							<a href="#">贝店商家中心</a> <a href="#">友团商家中心</a> <a href="#">贝仓商家中心</a>
							<a href="#">供应商中心</a>
						</div>
					</div>
				</li>
				<li class="seg"></li>
				<li>
					<div class="dropdown">
						<i class="iconfont pink">󰅃</i> <a href="#">帮助中心</a>
						<div class="dropdown-list">
							<i class="iconfont pink">󰅃</i> <a href="#">联系客服</a>
						</div>
					</div>
				</li>
				<li class="seg"></li>
				<li>


					<div class="dropdown">
						<span>关注</span>
						<div class="dropdown-list dropdown-default">

							<dl class="wechat">
								<dd>微信号：beibeiclub</dd>
								<dt title="微信扫一扫">
									<img
										src="/images/beibeiclub_90.png"
										alt="" width="90" height="90">
								</dt>
								<dd>订阅贝贝官方微信</dd>
							</dl>

							<dl class="social">
								<dd>
									<a target="_blank" c-bname="关注新浪微博" clog="" c-emit="click"
										c-et="event" c-etl=""
										href="http://weibo.com/p/1006063963155532/home?from=page_100606&amp;mod=TAB#place"
										title="关注贝贝新浪微博"><img
										src="/images/weibo_45x45.png"
										alt="关注贝贝新浪微博" width="45" height="45"></a>
								</dd>
								<dd>
									<a target="_blank" c-bname="关注QQ空间" clog="" c-emit="click"
										c-et="event" c-etl=""
										href="http://user.qzone.qq.com/2643291899?ptsig=xhap*Fevow5d8Z6q4BQELbvQeVmB17*Jlr6GDifDLTE"
										title="关注贝贝QQ空间"><img
										src="/image/qzone_45x45.png"
										alt="关注贝贝QQ空间" width="45" height="45"></a>
								</dd>
							</dl>
						</div>
					</div>





				</li>
			</ul>

		</div>

	</div>

	<!-- 顶部导航 END -->

	<!-- 购物车头部 START -->
	<div id="head" class="beibei-header">

		<div id="main-logo">
			<div id="backtomainpage">
				<a href="http://www.beibei.com"><img
					src="/images/113f25eac3906f0d_114x60.jpg"
					title="返回首页"> </a>
			</div>
			<div id="guarantee">
				<a href="https://www.beibei.com/guarantee"><img
					src="/images/zhenpin302x34.png">
				</a> <a href="https://trade.beibei.com/cart/mine.html"><img
					src="/images/mycart.jpg">
				</a>
			</div>

		</div>
	</div>



	<div id="test" class="beibei-content">
		<div id="test" class="beibei-cart">
			<div id="test" class="cart-process">
				<h1>我的购物车</h1>
				<img align="right"
					src="/images/step.jpg">
			</div>

			<div id="test" class="cart-list">
				<form class="pure-form">
					<table class="pure-table">
						<thead>
							<tr>
								<th class="cart-th-check" width="80">
								<input type="checkbox" class="J_checkAll"> 全选</th>
								<th class="cart-th-item-info" width="250">商品</th>
								<th class="cart-th-item-sku" width="100">商品信息</th>
								<th class="cart-th-item-price" width="100">单价(元)</th>
								<th class="cart-th-number" width="250">数量</th>
								<th class="cart-th-subtotal">小计(元)</th>
								<th class="cart-th-ops">操作</th>
							</tr>
						</thead>
						<c:forEach items="${list}" var="b" varStatus="status">
							<tbody class="view-CarList">
								<tr class="seg-entry"></tr>
								<!-- <tr class="event-entry">
									<td colspan="7"><input type="checkbox"
										class="J_eventCheck" checked="checked"> <span
										class="event-title u-is-mall"> <a href="javascript:;">贝贝</a>
									</span></td>
								</tr> -->
								<tr class="item-entry">
									<td class="cart-td-check first-for-ie"  id="${b.id}">
										<input class="J_itemCheck" type="checkbox">
									</td>
									<td class="cart-td-item-info clearfix"><a class="image"
										href="//www.beibei.com/detail/600002601-847243.html"
										target="_blank"> <img class="img00" src="${b.img}">
									</a> <a class="title"
										href="//www.beibei.com/detail/600002601-847243.html"
										target="_blank">${b.str1}</a></td>
									<td class="cart-td-item-sku">
										<p>通用</p>
									</td>
									<td class="cart-td-item-price">
										<p class="view-ItemEntryPrice">${b.tree}</p>
									</td>
									<td class="cart-td-number">
										<div>
											<a id="/cart/updateNum/${b.id}"
												class="number-op del-num disable view-ReductionItemNumBtn">
												<input class="iconfont" type="button" value="-" />
											</a> <input readonly="readonly" data-eventid="600002601"
												class="view-ItemEntryNum spcount" type="text" value="${b.num}">
											<a id="/cart/updateNum/${b.id}"
												class="number-op add-num view-AdditionItemNumBtn"> 
												<input class="iconfont" type="button" value="+" />
											</a>
										</div>
									</td>
									<td colspan="6" id="xiaoji">
										小计:<div class="sum">${(Math.round(b.num*b.tree*100)) / 100.0}</div>
									</td>
									<td class="cart-td-subtotal"><span
										class="price view-ItemSubtotal">
										
										</span></td>
									<td class="cart-td-ops last-for-ie"><a href="delete?id=${b.id}"
										data-eventid="600002601" class="view-DelItemBtn">删除</a></td>
								</tr>

								<tr class="footer-entry">
								</tr>
							</tbody>

						</c:forEach>

					</table>
				</form>
<script type="text/javascript">
	$(".iconfont").click(function(){
		var count=$(this).parent("a").siblings("input").val();
		if($(this).val() == "+")
			count++;
		if($(this).val() == "-" && count > 1)
			count--;
		$(this).parent("a").siblings("input").val(count);
		var a = $(this).parent("a").attr("id");
		var url = a + "/" + count;
		$.get(url);
		var danjia = $(this).parents("td").siblings(".cart-td-item-price").children("p").text();
		(Math.round(count*danjia*100)) / 100.0
		$(this).parents("td").siblings("#xiaoji").children("div").text(((Math.round(count*danjia*100)) / 100.0));
		if($(this).parents("td").siblings(".cart-td-check").children("input").attr("checked"))
			zongjia();
	});
</script>
				<div class="m-pay-bar-cont ">
					<label id="pay-lable">
						<div class="clearfix cart-total-bar">
							<a id="cartRemoveChecked" class="ml-15 underline grey view-BatchDelBtn" href="#" 
							style="color:red;font-size: 16px;font-family: cursive; font-weight: bold;text-decoration: none;">
							&nbsp;&nbsp;&nbsp;&nbsp;批量删除</a>
						</div>

						<div id="pay-bar" class="cart-summary">
							<span class="view-TotalBarPrice"> <!--cart-payment类名不要轻易修改或重复，广点通代码会依赖  -->
								<span class="cart-payment price mr-15 fr" op-value="totalPrice">
									<b class="u-yen-icon">¥</b>
									<span id="payAll">0.00</span>
							</span>
							</span>
								<button id="pay-btn" type="button">确认订单</button>
						</div>
						<div id="summary-price" class="cart-summary">
							<span class="J_totalFeeNotice">总计(不含运费)</span>：
						</div>
					</label>
				</div>
			</div>
		</div>
	</div>
	<div id="footer" class="fix">
</body>												
<script type="text/javascript" src="/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript">
	$(".J_checkAll").change(function(){
		if($(".J_checkAll").attr("checked")){
			$(".J_itemCheck").attr("checked",true);
		}else{
			$(".J_itemCheck").attr("checked",false);
		}
		zongjia();
	});
	$(".pure-table").on("change",".J_itemCheck",function(){
		var tag = true;
		$.each($(".J_itemCheck"),function(i, v){
			if(!$(v).attr("checked"))
				tag = false;
		});
		$(".J_checkAll").attr("checked",tag);
		zongjia();
	});
	$("#cartRemoveChecked").click(function(){
		var b = [];
		$.each($(".J_itemCheck"),function(i, v){
			if($(v).attr("checked")){
				var a = $(v).parent("td").siblings(".cart-td-ops").children("a").attr("href");
				var a1 = a.split("=");
				b.push(a1[1]);
			}
		});
		location.href="/cart/perdelete?array=" + b;
	});
	function zongjia(){
		var price = 0;
		$.each($(".J_itemCheck"),function(i, v){
			if($(v).attr("checked"))
				price += parseFloat($(v).parent("td").siblings("#xiaoji").children("div").text());
		});
		$("#payAll").text(price);
	}
	$("#pay-btn").click(function(){
		var url = "/cart/payList";
		var array = [];
		var j = 0;
		$.each($(".J_itemCheck"),function(i, v){
			if($(v).attr("checked")){
				array[j] = $(v).parent("td").attr("id");
				j++;
			}
		});
		console.log(array);
		url = url + "?array=" + array;
		location.href = url;
	});
</script>
</html>
















