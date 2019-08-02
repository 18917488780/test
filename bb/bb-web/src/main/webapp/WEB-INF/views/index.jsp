<%-- <%@page import="com.tedu.pojo.User"%> --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8" />
<title>宝贝计划</title>
<script src="/js/jquery-1.4.2.js"></script>
<style type="text/css">
body {
	margin: 0px;
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
	width: 327px;
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

.nav2>div {
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
	width: 750px;
	height: 271px;
	position: relative;
	float: left;
}

.div6max {
	width: 100%;
	height: 270px;
	background: #FF647C;
	margin: 2px auto;
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

.shoudong {
	width: 35px;
	height: 35px;
	border-radius: 50%;
	background: #FFF8EF;
	color: #E8ABB3;
	line-height: 35px;
	text-align: center;
}

#shoudongzuo {
	position: absolute;
	left: 24px;
	top: 114px;
}

#shoudongyou {
	position: absolute;
	right: 24px;
	top: 114px;
}

.imgsjcyg {
	background: #fff;
	width: 121px;
	height: 134px;
	text-align: center;
	line-height: 134px;
	float: left;
}

#div6you div:nth-child(1) {
	border-right: 1px solid lightgrey;
	border-left: 1px solid pink;
	border-top: 1px solid #F34660;
}

#div6you div:nth-child(2) {
	border-bottom: 1px solid lightgrey;
	border-top: 1px solid #F34660;
	border-right: 1px solid pink;
}

#div6you div:nth-child(3) {
	margin-top: -1px;
	border-top: 1px solid lightgrey;
	border-left: 1px solid pink;
	border-bottom: 1px solid #F34660;
}

#div6you div:nth-child(4) {
	border-left: 1px solid pink;
	border-right: 1px solid lightgrey;
	border-bottom: 1px solid #F34660;
}

#div6you {
	width: 248px;
	height: 270px;
	float: left;
}

#div6you img {
	width: 95px;
	margin-top: 6px;
}

.热气球右 {
	position: absolute;
	right: -123px;
	top: 80px;
}

.热气球左 {
	position: absolute;
	left: 1081px;
	top: 50px;
}

#remai div {
	width: 123px;
	height: 148px;
	background: #fff;
}

#remai div img {
	width: 125px;
	height: 148px;
}

.te {
	width: 238px;
	height: 330px;
	float: left;
	border: 1px solid #999;
	margin: 4px;
}

.remailei {
	position: absolute;
	background: #fff;
	margin-left: 2px;
	bottom: -510px;
	left: 748px;
	width: 245px;
	height: 500px;
	border-top: 1px solid #ddd;
}

.remailei div {
	width: 60px;
	height: 30px;
	z-index: 1;
	float: left;
	line-height: 30px;
	text-align: center;
	font-size: 10px;
	color: #555;
}

.remailei p {
	margin: 0;
	width: 245px;
	height: 85px;
	float: left;
}
</style>
<script>
	$(function() {
		$(".guanzhu").hover(function() {
			$("#guanzhudivmax").toggle();
		}, function() {
			$("#guanzhudivmax").hide();
		});
	});

	$(function() {
		$(".beibeishangjia").hover(function() {
			$("#beibeidiv").toggle();
		}, function() {
			$("#beibeidiv").hide();
		});
	});

	$(function() {
		$(".bangzhu").hover(function() {
			$("#bangzhudiv").toggle();
		}, function() {
			$("#bangzhudiv").hide();
		});
	});
	$(function() {
		$(".div3gouwuche").hover(function() {
			$("#gouwuchediv").toggle();
		}, function() {
			$("#gouwuchediv").hide();
		});
	});
	$(function() {
		var lunbo = [ "/images/lunbo1.png",
		              "/images/lunbo2.png", 
		              "/images/lunbo3.png", 
		              "/images/lunbo4.png" ];
		var index = 0;
		var timer = setInterval(swap, 3000);
		$(".shuzi div:nth-child(1)").css("background", "orange");
		function swap() {
			if (index == 3) {
				index = 0;
			} else {
				index++;
			}
			$("#lunbotp").attr('src', lunbo[index]);
			for (var i = 0; i < 4; i++) {
				if (i == index) {
					$(".shuzi div:nth-child(" + (i + 1) + ")").css(
							"background", "orange");
				} else {
					$(".shuzi div:nth-child(" + (i + 1) + ")").css(
							"background", "grey");
				}
			}

		}

		$("#shoudongzuo").click(
				function() {
					if (index == 0) {
						index = 3;
					} else {
						index--;
					}
					$("#lunbotp").attr('src', lunbo[index]);
					for (var i = 0; i < 4; i++) {
						if (i == index) {
							$(".shuzi div:nth-child(" + (i + 1) + ")").css(
									"background", "orange");
						} else {
							$(".shuzi div:nth-child(" + (i + 1) + ")").css(
									"background", "grey");
						}
					}

				});
		$("#shoudongyou").click(
				function() {
					if (index == 3) {
						index = 0;
					} else {
						index++;
					}
					$("#lunbotp").attr('src', lunbo[index]);
					for (var i = 0; i < 4; i++) {
						if (i == index) {
							$(".shuzi div:nth-child(" + (i + 1) + ")").css(
									"background", "orange");
						} else {
							$(".shuzi div:nth-child(" + (i + 1) + ")").css(
									"background", "grey");
						}
					}

				});
		$(".lunbo").hover(function() {
			clearInterval(timer);
		}, function() {
			timer = setInterval(swap, 3000);
		});
	});

	/*热卖类*/
	$(function() {
		$(".remailei div:first-child").hover(function() {
			$("#first").show();
			$("#second").hide();
			$("#third").hide();
			$("#forth").hide();
		}, function() {
			$("#first").show();
			$("#second").hide();
			$("#third").hide();
			$("#forth").hide();
		});
		$(".remailei div:nth-child(2)").hover(function() {
			$("#first").hide();
			$("#second").show();
			$("#third").hide();
			$("#forth").hide();
		}, function() {
			$("#first").hide();
			$("#second").show();
			$("#third").hide();
			$("#forth").hide();
		});
		$(".remailei div:nth-child(3)").hover(function() {
			$("#first").hide();
			$("#second").hide();
			$("#third").show();
			$("#forth").hide();
		}, function() {
			$("#first").hide();
			$("#second").hide();
			$("#third").show();
			$("#forth").hide();
		});
		$(".remailei div:nth-child(4)").hover(function() {
			$("#first").hide();
			$("#second").hide();
			$("#third").hide();
			$("#forth").show();
		}, function() {
			$("#first").hide();
			$("#second").hide();
			$("#third").hide();
			$("#forth").show();
		});
	});
</script>
</head>
<body>

	<div class="warnning">
		<div>任何情况下，贝贝不会以任何理由主动联系用户索要密码、验证码或银行卡号，或是要求点击任何网址链接扫描二维码进行退款或支付操作。请提高警惕，谨防受骗！</div>
	</div>
	<div class="nav">
		<div class="nav1">
				<div id="dengluqian" style="margin-left:504px;">
					<li>您好,</li>
					<li><a href="denglu" target="_self">请登录</a></li>
					<li><a href="zhuce" style="color: red;">免费注册</a></li>
				</div>
				
				<div id="dengluhou" style="margin-left:464px;display:none;">
					<li>您好,</li>
				</div>
				<ul class="ul1" style="padding-left:0;">
				<li><a target="_blank" href="GRZX?index=${user.index}">个人中心</a></li>
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
						<div class="guanzhuwenzi1">微信号:beibeiclub</div>
						<img src="/images/wechat.png" width="80px" title="微信扫一扫" style="position:relative;left:20px;"/>
						<div class="guanzhuweixinwenzi2">订阅贝贝官方微信</div>
					</div>
					<div id="guanzhu4" class="guanzhu">
						<a href="#"><img src="/images/weibo.png" title="关注贝贝微博" style="position: relative; left: 11px; top: 14px;"/></a> 
						<a href="#"><img src="/images/qqkj.png" title="关注贝贝qq空间" style="position: relative; left: 11px; top: 20px" /></a>
					</div>
				</div>
			</ul>
		</div>
	</div>
	<div class="div3">
		<a href="#"> <img src="/images/index1.png" />
		</a>
		<div class="div3you">
			<a> <img src="/images/index2.png" class="div3youimg" /> <span>正品保证</span>
			</a> <a> <img src="/images/index3.png" class="div3youimg" /> <span>品牌授权特卖</span>
			</a> <a> <img src="/images/index4.png" class="div3youimg" /> <span>全场包邮</span>
			</a> <a href="#"> <img src="/images/gouwuche.png" width="125px" id="div3gouwuche"
				class="div3gouwuche" />
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
			<span>在售分类 ∨</span> 
			<form action="" method="get" style="display: inline-block;">
		<input id="text" type="text" placeholder="搜索商品或品牌" style="width:120px;" name="name"/>
		<input type="submit" value="提交" />
		<div id="searchdiv" style="border:1px solid #666;width:160px;z-index:2;position: absolute;background: white;display:none;">
                </div>  
		</form>
		</div>
	</div>
	<div class="div5">
		<ul>
			<a href="#"><li>童装</li></a>
			<a href="#"><li>母婴</li></a>
			<a href="#"><li>居家</li></a>
			<a href="#"><li>美食</li></a>
			<a href="#"><li>女装</li></a>
			<a href="#"><li>鞋包</li></a>
			<a href="#"><li>美妆</li></a>
			<a href="#"><li>奶粉</li></a>
			<a href="#"><li>纸尿裤</li></a>
			<a href="#"><img class="jingcaiyugao" src="/images/7.png" height="28px" /></a>
		</ul>
	</div>
	<div class="div6max">
		<div class="div6"
			style="width: 1000px; height: 272px; margin: 0 auto; position: relative;">
			<div class="lunbo">
				<a href="#"><img src="/images/lunbo1.png" width="750px" height="270"
					id="lunbotp" /></a>
				<div class="shuzi">
					<div class="shuzi1">1</div>
					<div class="shuzi2">2</div>
					<div class="shuzi3">3</div>
					<div class="shuzi4">4</div>
				</div>
				<div class="shoudong" id="shoudongzuo">&lt;</div>
				<div class="shoudong" id="shoudongyou">&gt;</div>
			</div>
			<div id="div6you">
				<div id="onepng" class="imgsjcyg">
					<a href="#"><img src="/images/one.png" /></a>
				</div>
				<div id="twopng" class="imgsjcyg">
					<a href="#"><img src="/images/two.png" /></a>
				</div>
				<div id="threepng" class="imgsjcyg">
					<a href="#"><img src="/images/three.png" /></a>
				</div>
				<div id="fourpng" class="imgsjcyg">
					<a href="#"><img src="/images/four.png" /></a>
				</div>
			</div>
			<img src="/images/hotairball.gif" width="120px" class="热气球右" /> <img src="/images/hotairball.gif" width="100px" class="热气球左" />
		</div>
	</div>
	<div class="div7"
		style="width: 1000px; height: 50px; margin: 0px auto; line-height: 50px;">
		<span
			style="display: inline-block; height: 50px; font-size: 24px; font-weight: bold;">今日特卖
			•</span> <span
			style="display: inline-block; height: 50px; font-size: 20px; color: grey;">&nbsp;每天9点准时上新</span>
		<span style="color: grey; margin-left: 470px; font-size: 16px;">
			<img src="/images/remai.png" style="position: relative; top: 1px;" />
			&nbsp;&nbsp;热卖排行榜
		</span>
	</div>
	<div class="div8" style="width: 1000px; margin: 5px auto; position: relative;">
		<div class="div8-1" style="width: 735px;">
			
		</div>
		
		<div id="first" class="remailei">
			<div style="border-left: 1px solid #ddd;">童装</div>
			<div style="border-left: 1px solid #ddd;; background: #F9F9F9;">童鞋</div>
			<div style="border-left: 1px solid #ddd; background: #F9F9F9;">玩具</div>
			<div
				style="border-left: 1px solid #ddd; border-right: 1px solid #ddd; background: #F9F9F9;">用品</div>
			<a href="#"><p>
					<img src="/images/童装1.png" width="243px" height="85px"
						style="border: 1px solid #ddd;" />
				</p></a> <a href="#"><p>
					<img src="/images/童装2.png" width="243px" height="85px"
						style="border: 1px solid #ddd;" />
				</p></a> <a href="#"><p>
					<img src="/images/童装3.png" width="243px" height="85px"
						style="border: 1px solid #ddd;" />
				</p></a>
		</div>
		<div id="second" class="remailei" style="display: none;">
			<div style="border-left: 1px solid #ddd; background: #F9F9F9;">童装</div>
			<div style="border-left: 1px solid #ddd;">童鞋</div>
			<div style="border-left: 1px solid #ddd; background: #F9F9F9;">玩具</div>
			<div
				style="border-left: 1px solid #ddd; border-right: 1px solid #ddd;; background: #F9F9F9;">用品</div>
			<a href="#"><p>
					<img src="/images/童鞋1.png" width="243px" height="85px"
						style="border: 1px solid #ddd;" />
				</p></a> <a href="#"><p>
					<img src="/images/童鞋2.png" width="243px" height="85px"
						style="border: 1px solid #ddd;" />
				</p></a> <a href="#"><p>
					<img src="/images/童鞋3.png" width="243px" height="85px"
						style="border: 1px solid #ddd;" />
				</p></a>
		</div>
		<div id="third" class="remailei" style="display: none;">
			<div style="border-left: 1px solid #ddd; background: #F9F9F9;">童装</div>
			<div style="border-left: 1px solid #ddd; background: #F9F9F9;">童鞋</div>
			<div style="border-left: 1px solid #ddd;">玩具</div>
			<div
				style="border-left: 1px solid #ddd; border-right: 1px solid #ddd; background: #F9F9F9;">用品</div>
			<a href="#"><p>
					<img src="/images/玩具1.png" width="243px" height="85px"
						style="border: 1px solid #ddd;" />
				</p></a> <a href="#"><p>
					<img src="/images/玩具2.png" width="243px" height="85px"
						style="border: 1px solid #ddd;" />
				</p></a> <a href="#"><p>
					<img src="/images/玩具3.png" width="243px" height="85px"
						style="border: 1px solid #ddd;" />
				</p></a>
		</div>
		<div id="forth" class="remailei" style="display: none;">
			<div style="border-left: 1px solid #ddd; background: #F9F9F9;">童装</div>
			<div style="border-left: 1px solid #ddd; background: #F9F9F9;">童鞋</div>
			<div style="border-left: 1px solid #ddd; background: #F9F9F9;">玩具</div>
			<div
				style="border-left: 1px solid #ddd; border-right: 1px solid #ddd;">用品</div>
			<a href="#"><p>
					<img src="/images/用品1.png" width="243px" height="85px"
						style="border: 1px solid #ddd;" />
				</p></a> <a href="#"><p>
					<img src="/images/用品2.png" width="243px" height="85px"
						style="border: 1px solid #ddd;" />
				</p></a> <a href="#"><p>
					<img src="/images/用品3.png" width="243px" height="85px"
						style="border: 1px solid #ddd;" />
				</p></a>
		</div>
	</div>
	</div>
	<!-- 搜索框 -->
	<script>
		$("#text").bind('input propertychange',function(){
			if($("#text").val()!="")
			{$("#searchdiv").css("display","block");}
			else{$("#searchdiv").css("display","none");}
			var url = "http://localhost/baobeijihua1/search";
			var name = $("#text").val();
			var param = {"name":name};
			$.post(url,param,function(data){
				$("#searchdiv").empty();
				for(var i=0;i<data.length;i++){
					var id1=data[i].id;
					var $a=$("<a href='sp?index="+index+"&id="+id1+"' style='color:#666;display:inline-block;width:160px;font-family:宋体;padding:10px 0;'>"+data[i].name+"</a>");
					$("#searchdiv").append($a);
					$("#searchdiv").append($("<br/>"));
					$a.hover(function(){
						$(this).css({"background":"lightgrey","color":"red"});
					},function(){
						$(this).css({"background":"white","color":"grey"});
					});
				}
			});
		})
	</script>
	<script src="https://cdn.bootcss.com/jquery-cookie/1.4.1/jquery.cookie.min.js"></script>
	<script>
	$(function(){
		var _ticket = $.cookie("BB_TICKET");
		if(!_ticket){
			return ;
		}
		//当dataType类型为jsonp时，jQuery就会自动在请求链接上增加一个callback的参数
		$.get("sso/query/"+_ticket,function(data){
			var li1 = "<li><a href=\"#\" id=\"loginname\">"+data.username+"</a></li>";
			var li2 = "<li><a href=\"sso/exit\">[请退出]</a></li>";
			$("#dengluhou").append(li1);
			$("#dengluhou").append(li2);
			$("#dengluqian").css("display","none");
			$("#dengluhou").css("display","block");
		});
	})
	</script>
	<script type="text/javascript">
	$(function(){
		$.ajax({
			url:"http://manages.bb.com/web/item",
			type:"get",				//jsonp只能支持get请求
			dataType:"jsonp",       //dataType表示返回值类型
			//jsonp: "callback",    //指定参数名称
			//jsonpCallback: "hello",  //指定回调函数名称
			success:function (result){   //data经过jQuery封装返回就是json串
				var div = $(".div8-1");
				var divy = $("<div style='float:left;width:10px;height:225px;border:1px solid red;'></div>");
				var divx = $("<div style='width:500px;height:225px;border:1px solid red;'></div>");
				div.empty();
				var index = $("#index").val();
				for(var i = 0;i < result.length; i++){
					var a = $("<a target=\"_blank\" href=\"item/show?id="+ result[i].id + "\"></a>");
					var divi = $("<div style='float:left;width:225px;height:300px;border:1px solid red;'></div>");
					var img = $("<img src='" + result[i].img1 +"' style='width:225px;height:250px;'>");
					var scan1 = $("<span style='font-size:16px;color:black;'>" + result[i].name +"</span>")
					var scan2 = $("<span style='font-size:22px;color:red;'>¥" + result[i].tree1 +"&nbsp;&nbsp;</span>")
					var scan3 = $("<span style='font-size:15px;color:black;'>原价¥" + result[i].tree2 +"&nbsp;&nbsp;</span>")
					var scan4 = $("<span style='font-size:15px;color:black;'>" + result[i].tree3 +"折</span>")
					divi.append(img);
					divi.append(scan1);
					divi.append($("<br/>"));
					divi.append(scan2);
					divi.append(scan3);
					divi.append(scan4);
					a.append(divi);
					div.append(a);
					if(i % 3 == 2)
						div.append($("<div style='float:left;width:600px;height:25px;'></div>"));
					else
						div.append($("<div style='float:left;width:25px;height:225px;'></div>"));	
				}
			}	
		});	
	});
	</script>
</body>
</html>




