<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<style>
body {
	margin: 0px;
}
.t1 {
	width: 1020px;
	border: 1px solid #F0F0F0;
	border-collapse: collapse;
	margin-top: 20px;
	background-color: #FAFAFA;
}

.td {
	width: 220px;
	text-align: center;
	border: 1px solid #F0F0F0;
	border-collapse: collapse;
}
.warnning {
	width: 100%;
	height: 45px;
	background: #FFF8EF;
}

.warnning div {
	margin: 0px auto;
	width: 980px;
	height: 45px;
	text-align: center;
	line-height: 45px;
	font-size: 13px;
}

.nav {
	width: 100%;
	height: 30px;
	background: #f4f4f4;
}

.nav1 {
	width: 1000px;
	height: 30px;
	margin: 0 auto;
	position: relative;
}

.nav ul {
	float: right;
	width: 500px;
	height: 30px;
	margin: 0px;
}

.nav li {
	list-style: none;
	font-size: 13px;
	height: 30px;
	float: left;
	padding: 0 8px;
	text-align: center;
	line-height: 30px;
	position: relative;
	left: 8px;
}

.nav li a {
	text-decoration: none;
	color: #000;
}

#beibeidiv {
	border: 1px solid #999;
	background: #fff;
	font-size: 13px;
	position: absolute;
	right: 150px;
	width: 107px;
	height: 115px;
	display: none;
	z-index: 1;
}

#beibeidiv a:first-child {
	display: inline-block;
	margin-top: 5px;
	text-indent: 10px;
}

#beibeidiv a {
	text-decoration: none;
	display: inline-block;
	margin-bottom: 3px;
	text-indent: 10px;
}

#bangzhudiv {
	border: 1px solid #999;
	height: 55px;
	width: 82px;
	font-size: 13px;
	float: right;
	position: absolute;
	right: 65px;
	background: #fff;
	display: none;
	z-index: 1;
}

#bangzhudiv a:first-child {
	text-decoration: none;
	display: inline-block;
	margin-top: 5px;
	margin-bottom: 5px;
	text-indent: 10px;
}

#bangzhudiv a:last-child {
	text-decoration: none;
	display: inline-block;
	text-indent: 10px;
}

#guanzhudivmax {
	float: right;
	border-bottom: 1px solid #999;
	width: 198px;
	height: 158px;
	position: absolute;
	top: 0px;
	right: -69px;
	display: none;
	z-index: 1;
}

.guanzhu1 {
	width: 60px;
	height: 30px;
	border-bottom: 1px solid #999;
	border-right: 1px solid #999;
	float: left;
}

#guanzhu2 {
	width: 65px;
	height: 30px;
	border-top: 1px solid #999;
	border-right: 1px solid #999;
	float: left;
	text-align: center;
	background: #fff;
}

.guanzhuwenzi0 {
	font-size: 13px;
	height: 30px;
	line-height: 30px;
}

#guanzhu3 {
	width: 125px;
	height: 127px;
	border-left: 1px solid #999;
	border-right: 1px dashed #999;
	float: left;
	background: #fff;
}

.guanzhuwenzi1 {
	margin-top: 6px;
	font-size: 10px;
	position: relative;
	left: 10px;
}

.guanzhuweixinwenzi2 {
	font-size: 10px;
	position: relative;
	left: 10px;
	bottom: 5px;
}

#guanzhu4 {
	width: 70px;
	height: 125px;
	border-right: 1px solid #999;
	border-top: 1px solid #999;
	float: right;
	background: #fff;
}

.div3 {
	width: 1000px;
	height: 90px;
	margin: 0 auto;
	position: relative;
}

.div3you {
	position: absolute;
	width: 470px;
	height: 90px;
	top: 0px;
	left: 480px;
	line-height: 90px;
}

.div3you {
	margin-left: 50px;
}

.div3youimg {
	position: relative;
	top: 8px;
}

.div3you span {
	font-weight: bold;
	color: #999;
	font-size: 14px;
	position: relative;
	top: -2px;
}

#div3gouwuche {
	position: relative;
	top: 6px;
	left: 11px;
}

#gouwuchediv {
	float: left;
	width: 280px;
	height: 200px;
	border: 1px solid red;
	position: absolute;
	right: 3px;
	top: 55px;
	border-radius: 15px;
	display: none;
	background: #fff;
	z-index: 2;
}

.gwcneirong1 {
	color: #aaa;
	text-align: center;
	margin-top: 70px;
}

.gwcneirong2 {
	border-top: 1px solid red;
	margin: 0px;
	height: 49px;
	background: rgb(255, 200, 200, 0.2);
	color: red;
	position: relative;
	top: 42px;
	border-radius: 0 0 15px 15px;
	line-height: 49px;
	text-indent: 10px;
}

.jiesuanimg {
	margin-left: 50px;
	display: inline-block;
	position: relative;
	top: 8px;
}

.nav2 {
	clear: both;
	width: 100%;
	height: 40px;
	background: #FF647C;
	border: 1px solid #999;
	margin-right: 200px;
}

.nav2 p {
	float: left;
	width: 80px;
	height: 40px;
	font-size: 16px;
	margin: 0;
	text-align: center;
	line-height: 40px;
	background: #FF647C;
	color: #FFf;
	font-weight: bold;
}

.nav2 div {
	margin: 0 auto;
	width: 1000px;
	height: 40px;
}

.nav2 span {
	margin-left: 270px;
	font-size: 15px;
	color: #fff;
	height: 40px;
	line-height: 40px;
	display: inline-block;
}

.nav2 input {
	height: 28px;
	position: relative;
	bottom: 2px;
	border: none;
}

.nav2 a {
	text-decoration: none;
	color: #fff;
	font-weight: bold;
}

.nav2 p:first-child {
	background: #F34660;
}

.nav2 p:hover {
	background: #F34660;
}

.div5 {
	margin: 0 auto;
	width: 1000px;
	height: 30px;
	line-height: 30px;
}

.div5 ul {
	margin-top: 0;
	width: 1000px;
	height: 30px;
}

.div5 li {
	color: #999;
	font-size: 14px;
	float: left;
	list-style: none;
	padding: 0 9.5px;
}

.div5 li:hover {
	border-bottom: 2px solid #F34660;
	color: #F34660;
}

.jingcaiyugao {
	margin-left: 380px;
}

.lunbo {
	border: 1px solid #999;
	width: 750px;
	height: 271px;
	position: absolute;
}

.div6 {
	margin-left: 566px;
}

.shuzi {
	width: 200px;
	height: 50px;
	position: absolute;
	top: 232px;
	left: 300px;
}

.shuzi1, .shuzi2, .shuzi3, .shuzi4 {
	width: 35px;
	height: 35px;
	border-radius: 50%;
	background: grey;
	color: #fff;
	line-height: 35px;
	text-align: center;
	float: left;
	margin-right: 10px;
}

.backoffice-wrapper {
	border: 1px solid #e4e4e4;
}

.wrapper {
	margin: 20px auto;
	position: relative;
	width: 1200px;
	display: block;
}

.pink {
	color: #ff5482;
}

.bo-side h5.no-border-top {
	border-top: none;
}

.bo-side h5 {
	height: 20px;
	padding: 8px 20px;
	font-size: 16px;
	font-weight: 400;
	margin: 0;
	border-bottom: 1px solid #e4e4e4;
	background: #eee;
	width: 140px;
	color: #666;
}

.pure-u {
	display: inline-block;
	zoom: 1;
	letter-spacing: normal;
	word-spacing: normal;
	vertical-align: top;
	text-rendering: auto;
	margin: 0 25px 15px 5px;
	padding: 5px 10px;
	background-color: #ffffe0;
	border: 1px solid #f9dfb2;
	color: #d4a639;
}

.pure, .pure-1 {
	display: inline-block;
	zoom: 1;
	letter-spacing: normal;
	word-spacing: normal;
	vertical-align: top;
	text-rendering: auto;
}

.iconfont {
	font-size: 16px;
	font-style: normal;
}

.mr-10 {
	margin-right: 10px;
	width: 545.455px;
}

.account-marea {
	background: #f9f9f9;
	margin: 0 0 10px;
	padding: 0 25px 15px;
}

.account-marea .a-head {
	position: relative;
	height: 80px;
}

.account-marea .a-head .people {
	font-size: 30px;
	top: 22px;
	left: 14px;
	color: #aaa;
	text-shadow: 0 -1px 0 #eee;
}

.account-marea .a-head .ops {
	position: absolute;
	top: 35px;
	right: 0;
	text-align: right;
	font-size: 13px;
}

.account-marea .a-head .user-name {
	position: absolute;
	top: 30px;
	left: 65px;
	font-size: 16px;
}

pre {
	margin: 1em 0;
}

.s-2 {
	margin: 0 0 0 65px;
}

.account-marea .a-bottom {
	margin: 0 4px;
	font-size: 13px;
	vertical-align: middle;
	color: #777;
	position: relative;
}

.account-marea .a-bottom .security-grade {
	display: inline-block;
	width: 150px;
	background: #ccc;
	height: 16px;
	border-radius: 10px;
	vertical-align: middle;
	margin: -2px 10px 0;
	position: relative;
}

.account-marea .a-bottom .security-grade .s-2 {
	width: 100px;
	background: #ff923a;
}

.account-marea .a-bottom .security-grade .indicator {
	display: inline-block;
	height: 16px;
	width: 0;
	position: absolute;
	border-radius: 10px;
}

.account-marea .s-2 .security-tip {
	font-weight: 700;
	color: #ff923a;
}

.account-marea .promote {
	color: #0b5ba5;
	text-decoration: none;
	font-size: 13px;
}

.ziti {
	background-color: transparent;
	color: #3e3e3e;
	text-decoration: none;
}

.pure li {
	margin-top: 20px;
}

.bo-size li {
	margin-top: 20px;
}

.account-marea .a-bottom .ops {
	position: absolute;
	top: 0;
	right: 0;
	text-align: right;
	font-size: 13px;
}

.account-mod .title {
	display: inline-block;
	width: 120px;
	height: inherit;
	line-height: 80px;
	text-align: center;
	font-size: 18px;
	color: #333;
	border-right: 1px dashed silver;
}

.account-mod {
	border: 1px dashed silver;
	margin: 0 0 10px;
}

.account-mod .data {
	display: inline-block;
	width: 330px;
	padding: 0 40px 10px;
	line-height: 40px;
	color: #5a5a5a;
}

.mr-15 {
	margin-right: 15px;
}

.account-mod .data .price {
	font-size: 20px;
	position: relative;
	top: 3px;
}

.price {
	font-family: tahoma, ​arial, ​sans-serif;
}

.pink, a.pink {
	color: #ff5482;
}

.bo-main .pink-btn .bo-main a.pink-btn {
	padding: 6px 17px;
	background: #ff4965;
	border-radius: 2px;
	color: #fff;
	border: 1px solid #ff4965;
	text-shadow: 0 -1px 0 #ff4965;
	font-size: 13px;
}

.account-mod.trade-mod {
	height: 120px;
}

.account-mod.trade-mod .title {
	line-height: 120px;
	position: relative;
	top: -2px;
}

.account-mod.trade-mod .data {
	width: auto;
	line-height: 30px;
	padding: 15px 10px;
	position: relative;
	top: 5px;
}

.account-mod .data .badget-entry {
	display: inline-block;
	width: 77px;
	padding-top: 15px;
	padding-bottom: 5px;
	margin: 0;
	position: relative;
	text-align: center;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px;
	padding-top: 10px;
	padding-bottom: 0;
}

.account-mod .data .badget-entry .m-icon {
	font-size: 30px;
	color: #ccc;
}

.account-mod .data .badget-entry .desc {
	display: block;
	color: #888;
}

.gonggao {
	width: 222.222px;
}

.notice-mod {
	background: #fffce5;
	border: none;
}

.account-mod {
	border: 1px dashed silver;
	margin: 0 0 10px;
}

.p10 {
	padding: 10px;
}

.f-14 {
	font-size: 14px;
}

.c-999, a.c-999 {
	color: #999;
}

.c-999 .f-14 .user-name {
	margin: 1em 0;
	margin: 0 0 8px;
}

.qwer {
	margin: 0 20px 0 0;
	padding: 0 0 6px 10px;
	font-size: 1.27em;
	border-bottom: 2px solid #ff5482;
	font-size: 1.17em;
	margin: 1em 0;
}

.pure-1 {
	font-size: 1.17em;
	margin: -1.5em 15px;
	width: 800px;
	padding: 20px 0;
}

.mt-20 {
	margin-top: 20px; bo-side ,ul { margin : 0;
	padding: 0 0 0 40px;
	list-style: none;
}

body {
	font: 12px/1.5 'Helvetica Neue', Helvetica, Arial, Sans-serif;
}
</style>
<script
	src="http://localhost/baobeijihua1/baobeijihua/宝贝计划/js/jquery-

1.4.2.js"></script>
<script>
				
			
			$(function(){
			$(".guanzhu").hover(function(){
			$("#guanzhudivmax").toggle();
			},
			function(){
			$("#guanzhudivmax").hide();	
			});
		});

		$(function(){
			$(".beibeishangjia").hover(function(){
			$("#beibeidiv").toggle();
			},
			function(){
			$("#beibeidiv").hide();	
			});
		});

		$(function(){
			$(".bangzhu").hover(function(){
			$("#bangzhudiv").toggle();
			},
			function(){
			$("#bangzhudiv").hide();	
			});
		});
		$(function(){
			$(".div3gouwuche").hover(function(){
			$("#gouwuchediv").toggle();
			},
			function(){
			$("#gouwuchediv").hide();	
			});
		});
		var lunbo=["lunbo1.png","lunbo2.png","lunbo3.png","lunbo4.png"];
		var index=0;
		$(function(){
		setInterval(swap, 3000);
		function swap(){
			if(index==3)
			{
			index=0;
			}
			else{
				index++;
			}
			$("#lunbotp").attr('src',lunbo[index]);
		}
	});
		var flag=true;
		$(function(){
			$(".wuliu").click(function(){
				
				if(flag){
					$(".tijiao").css({"display":"block"});
					var url="http://localhost/baobeijihua1/returnOrder";
					var index = ${user.index};
					params={"index":index};
					$.get(url,params,function(result){
						$(".tijiao").data("result",result);
						$(".tijiao").empty();
						for(var i = 0; i < result.length; i++){
							var span = $("<span style='padding-left:12px;' onclick='zhufeng(this)' class='ordergood' title='"+ result[i].goodName +"'>订单"+(i+1)+"</span>");
						
							$(span).data("i",i);  //?
							$(".tijiao").append(span);
							$(".tijiao").append("<br/>"); 
							var div=$("<div style='height:10px;'></div>");
						$(".tijiao").append(div);
						}
					}); 
					flag=false;
				}else{
					$(".tijiao").css({"display":"none"});
					$("#order").css({"display":"none"});
					$("#order1").css({"display":"none"});
					flag=true;
				}
			})
		});
		
		function zhufeng(t){
			$(t).css({"color":"pink","font-weight":"bolder"});
			$(t).siblings("span").css({"color":"black","font-weight":"none"});
			$("#order").empty();
			$("#order").css({"display":"block"});
			$("#order1").css({"display":"none"});
			var data = $(".tijiao").data("result");
			var i = $(t).data("i");
			var order = data[i];
			var span1 = $("<scan>商品名: " + order.goodName + "</scan>");
			var span2 = $("<scan>单价: " + order.price + "</scan>");
			var span3 = $("<scan>数量: " + order.number + "</scan>");
			var span4 = $("<scan>收货地址: " + order.buyerAddr + "</scan>");
			var state1 = "已发货";
			if(order.state == 0)
				state1 = "未发货";
			else{    
				var button = $("<input type='button' value='查看物流'  onclick='see(this)' style='width:100px;height:50px;font-size:16px;border-radius:25% 25%;background: darkorange;color: azure;'>");
				button.data("logisticsCompany",order.company);
				button.data("orderNumber",order.trackNumber);
			}
			var span5 = $("<scan>发货状态: " + state1 + "</scan>");
			$("#order").append(span1);
			var div1=$("<div style='width:300px;height:30px;margin-top:100px;margin-left:100px;'></div>");
			$("#order").append(div1);
			div1.append(span1);
			var div2=$("<div style='width:300px;height:30px;margin-top:30px;margin-left:100px;background:white;'></div>");
			$("#order").append(div2);
			div2.append(span2);
			var div3=$("<div style='width:300px;height:30px;margin-top:30px;margin-left:100px;background:white;'></div>")
			$("#order").append(div3);
			div3.append(span3);
			var div4=$("<div style='width:300px;height:30px;margin-top:30px;margin-left:100px;background:white;'></div>")
			$("#order").append(div4);
			div4.append(span4);
			var div5=$("<div style='width:300px;height:30px;margin-top:30px;margin-left:100px;background:white;'></div>")
			$("#order").append(div5);
			div5.append(span5);
			var div6=$("<div style='width:300px;height:30px;margin-top:30px;margin-left:100px;background:white;'></div>")
			$("#order").append(div6);
			div6.append(button);
			var div7=$("<div style='width:460px;height:350px;left:455px;top:106px;position:absolute;'></div>")
			$("#order").append(div7);
			div7.empty();
			div7.append("<img style='height:260px;' src='"+order.img1+"'>");
			$("#order").append($("<br/>"));
		}
		function see(t){
			debugger			
			var t = $(t);
			$("#order1").css("display","block");
			var url = "http://localhost/baobeijihua1/toDetailsOfTransport";
			var params = {"logisticsCompany":t.data("logisticsCompany"),"orderNumber":t.data("orderNumber")};
			/* <h1>${LogisticCode}</h1>
			<h1>${ShipperCode}</h1>
			<c:forEach items="${Traces}" var="b">
				<table class="t1">
					<tr class="tr">
						<td>${b.getAcceptStation()}</td>
						<td class="td">${b.getAcceptTime()}</td>
					</tr>
				</table>
			</c:forEach> */
			$.get(url,params,function(map){
				$("#order1").empty();
				var h1 = $("<h1>"+ map.LogisticCode +"</h1>");
				var h2 = $("<h1>"+ map.ShipperCode +"</h1>");
				$("#order1").append(h1)
				$("#order1").append(h2);
				var table = $("<table class='t1'></table>");
				console.log(map);
				for(var i = 0; i < map.Traces.length; i++){
					var tr = $("<tr class='tr'></table>");
					var td1 = $("<td>"+map.Traces[i].acceptStation+"</td>");
					var td2 = $("<td class='td'>"+map.Traces[i].acceptTime+"</td>");
					tr.append(td1);
					tr.append(td2);
					table.append(tr);
				}
				$("#order1").append(table);
			});
		}
	</script>
</head>
<body>
	<div class="warnning">
		<div>任何情况下，贝贝不会以任何理由主动联系用户索要密码、验证码或银行卡号，

			或是要求点击任何网址链接扫描二维码进行退款或支付操作。请提高警惕，谨防受骗！</div>

	</div>
	<div class="nav">
		<div class="nav1">
			<ul>
				<li>您好,</li>
				<li><a href="#">${user.username}</a></li>
				<li><a href="#">商家入驻</a></li>
				<li class="beibeishangjia"><a>贝贝商家中心 ∨</a></li>
				<div id="beibeidiv" class="beibeishangjia">
					<a href="#">贝贝商家中心 ∨</a></br> <a href="#">贝店商家中心</a></br> <a href="#">友团商家中心</a></br>
					<a href="#">贝仓商家中心</a></br> <a href="#">供应商中心</a>
				</div>
				<li class="bangzhu">帮助中心 ∨</li>
				<div id="bangzhudiv" class="bangzhu">
					<a href="#">帮助中心 ∨</a></br> <a href="#">联系客服</a>
				</div>
				<li class="guanzhu">关注 ∨</li>
				<div id="guanzhudivmax">
					<div class="guanzhu1"></div>
					<div id="guanzhu2" class="guanzhu">
						<span class="guanzhuwenzi0">关注 ∨<span>
					</div>
					<div id="guanzhu3" class="guanzhu">
						<div class="guanzhuwenzi1">微信 号:beibeiclub</div>
						<img
							src="images/wechat.png"
							width="80px" title="微

信扫一扫"
							style="position: relative; left: 20px;" />
						<div class="guanzhuweixinwenzi2">订阅贝贝官 方微信</div>
					</div>
					<div id="guanzhu4" class="guanzhu">
						<a href="#"><img
							src="/images/weibo.png"
							title="关注贝贝微博" style="position: relative; left: 11px; top: 14px;" /></a>
						<a href="#"><img
							src="/images/qqkj.png"
							title="关注贝贝qq空间"
							style="position: relative; left: 11px; top: 20px" /></a>
					</div>
				</div>
			</ul>
		</div>
	</div>
	<div class="div3">
		<a href="#"> <img
			src="/images/index1.png" />
		</a>
		<div class="div3you">
			<a> <img
				src="/images/index2.png"
				class="div3youimg" /> <span>正品保证</span>
			</a> <a> <img
				src="/images/index3.png"
				class="div3youimg" /> <span>品牌授权特卖</span>
			</a> <a> <img
				src="/images/index4.png"
				class="div3youimg" /> <span>全场包邮</span>
			</a> <a href="#"> <img
				src="/images/gouwuche.png"
				width="125px" id="div3gouwuche" class="div3gouwuche" />
			</a>
		</div>
		<div id="gouwuchediv" class="div3gouwuche">
			<p class="gwcneirong1">亲,赶快去挑选商品吧</p>
			<p class="gwcneirong2">
				小计:￥0.00 <a href="http://baidu.com"><img src="/images/6.png"
					class="jiesuanimg" /></a>
			</p>
		</div>
	</div>
	<div class="nav2">
		<div>
			<p>
				<a href="#">首页</a>
			</p>
			<p>
				<a href="#">贝贝APP</a>
			</p>
			<p>
				<a href="#">贝店</a>
			</p>
			<p>
				<a href="#">友团</a>
			</p>
			<p>
				<a href="#">贝贷</a>
			</p>
			<p>
				<a href="#">商家入驻</a>
			</p>
			<span>在售分类 ∨</span> <input type="text" placeholder="搜索商品或品牌" />
		</div>
	</div>
	<div id="container">
		<div id="content" class="pure-g backoffice-wrapper wrapper">
			<div class="bo-side pure">
				<h5>我的交易</h5>
				<ul>
					<li class="wuliu"><a href="#" class="ziti"> <i
							class="iconfont">我的物流信息</i>
					</a></li>
					<div class="tijiao"
						style="display: none; background: white; width: 95px"></div>
					<li><a href="#" class="ziti"><i class="iconfont"></i>我的现金券<i
							class="" id="coupon-cnt"></i></a></li>
					<li><a href="#" class="ziti"><i class="iconfont"></i>我的收藏

					</a></li>
					<li><a href="#" class="ziti"><i class="iconfont"></i>我的售后

					</a></li>
					<li><a href="#" class="ziti"><i class="iconfont"></i>我的贝壳

					</a></li>
				</ul>
				<h5>我的账号</h5>
				<ul>
					<li><a href="#" class="ziti"><i class="iconfont"></i>基本信息

					</a></li>
					<li><a href="#" class="ziti"><i class="iconfont"></i>我的收货地址

					</a></li>
					<li><a href="#" class="ziti"><i class="iconfont"></i>安全中心

					</a></li>
					<li><a href="#" class="ziti"><i class="iconfont"></i>我的提现

					</a></li>
					<li><a href="#" class="ziti"><i class="iconfont"></i>修改密码

					</a></li>
					<li><a href="#" class="ziti"><i class="iconfont"></i>账号绑定

					</a></li>
					<li><a href="#" class="ziti"><i class="iconfont"></i>早教主播后台

					</a></li>
				</ul>

				<h5>消息中心</h5>
				<ul>
					<li><a href="#" class="ziti"><i class="iconfont"></i>我的消息<i
							class="" id="message-cnt"></i></a></li>
				</ul>
			</div>
			<div class="bo-main pure-1" style="height: 700px;"
				style="position:relative;">

				<div id="order"
					style="position: absolute; left: 180px; width: 1020px; height: 693px; background: white; z-index: 12; float: left; display: none;">

				</div>
				<div id="order1"
					style="position: absolute; left: 180px; width: 1020px; height: 850px; background: white; z-index: 15; float: left; display: none;">
				</div>
				<h3 class="qwer">我的贝贝</h3>
				<div class="pure-g mt-20">
					<div class="pure-u"
						style="margin: 0 18px 15px 5px; padding: 5px 10px; background-color: #ffffe0; border: 1px solid #f9dfb2; color: #d4a639;">
						<span class="pink">贝贝提醒您：</span>
						谨防电话诈骗。任何以贝贝或贝贝品牌入驻商的名义，向您索要账号密码、银行卡等 信息的，均为诈骗。凡接到此类电话，请高度警惕并立即报警。

					</div>

					<div class="pure mr-10">
						<div class="account-marea">
							<div class="a-head">
								<i class="people iconfont"><img class="people J_img-people"
									style="border-radius: 50%; border: 2px solid; width: 60px; height: 60px; top: 10px; left: -30px;"
									src="/images/e2e0699d6cece3a2e08ed77283fb7910.png"
									data-img="#"></i>
								<p class="user-name">欢迎你!! ${user.username}</p>
								<div class="ops">
									<a href="#" class="ziti"><i class="iconfont c-

999">󰄴</i>&nbsp;&nbsp;我的收货地址
										&gt;</a>
								</div>
							</div>
							<div class="a-bottom s-2" style="margin: 0 0 0 65px;">
								<a href="#" class="ziti">安全等级</a> <span class="security-grade"><i
									class="indicator s-2">&nbsp;</i></span> <span class="security-tip"
									style="display: inline;"></span><a class="promote ziti"
									href="#">&nbsp;&nbsp;&nbsp;提升</a>
								<div class="ops">
									<a href="#" class="ziti">[修改密码]</a>
								</div>
							</div>
						</div>
						<div class="account-mod">
							<div class="title">我的钱包</div>
							<div class="data">
								<span class="mr-15">余额：<span class="price pink">${(Math.round(user.money*100)) / 100.0}</span>元
								</span> <span class="mr-15"><a href="#" class="pink-btn ziti">提现</a></span>
							</div>
						</div>
						<div class="account-mod">
							<div class="title my-shell-label">我的贝壳</div>
							<div class="data">
								<div>
									<span class="mr-15">贝壳：<span class="price pink">0</span>
										个
									</span> <span class="mr-15"><a href="#" class="grey ziti"
										style="text- decoration: underline;">详细说明</a></span>
								</div>
							</div>
						</div>
						<div class="account-mod trade-mod">
							<div class="title">我的订单</div>
							<div class="data">
								<a class="badget-entry ziti" href="#"> <i
									class="m-icon iconfont">󰉽</i> <span class="desc">待付款</span>
								</a> <a class="badget-entry ziti" href="#"> <i
									class="m-icon iconfont">󰇵</i> <span class="desc">待发货</span>
								</a> <a class="badget-entry ziti" href="#"> <i
									class="m-icon iconfont">󰄴</i> <span class="desc">待收货</span>
								</a> <a class="badget-entry ziti" href="#"> <i
									class="m-icon iconfont">󰂾</i> <span class="desc">待评价</span>
								</a> <a class="badget-entry ziti" href="#"> <i
									class="m-icon iconfont">󰀲</i> <span class="desc">待返现</span>
								</a>
							</div>
						</div>
					</div>
					<div class="pure gonggao">
						<div class="account-mod notice-mod p10" style="height: auto;">
							<p class="c-999 f-14">
								<i class="iconfont">󰄄</i> 公告
							</p>
						</div>
						<div style="padding-left: 3px;"></div>
					</div>
				</div>
				<div>${user.index}</div>
</body>
</html>
