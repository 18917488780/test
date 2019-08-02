<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8" />
<style>
body {
	width: 100%;
	height: 3000px;
}

.d1 {
	height: 80px;
	width: 1100px;
	margin: 0 auto;
}

.p1 {
	height: 40px;
	width: 1900px;
	margin: 0 auto;
	line-height: 40px;
	background-color: #FF647C;
}

.box {
	width: 380px;
	float: right;
	font-family: 'Microsoft YaHei';
	font-size: 14px;
	margin-right: 20%;
	margin-top: 3px;
}

.i1 {
	width: 260px;
	border: 1px solid #e2e2e2;
	height: 30px;
	float: left;
	background-repeat: no-repeat;
	background-size: 25px;
	background-position: 5px center;
	padding: 0 0 0 40px;
}

.search {
	width: 78px;
	height: 32px;
	float: right;
	background: black;
	color: white;
	text-align: center;
	line-height: 32px;
	cursor: pointer;
}

.li {
	padding-left: 400px;
	display: block;
	font-size: 20PX;
}

.d2 {
	height: 550px;
	width: 1100px;
	margin: 0 auto;
}

.d3 {
	height: 500px;
	width: 450px;
}

.d4 {
	height: 600px;
	width: 600px;
	border: 2px solid #F2F4F6;
	margin: 0 auto;
	float: right;
}

.img2 {
	float: right;
}

.img4 {
	margin-left: 400px;
}

.a1 {
	color: #FFF;
	text-decoration: none;
}

.d5 {
	font-size: 20PX;
}

.s1 {
	color: #FF647C;
}

.d6 {
	color: #775544;
	font-size: 13px;
}

.d7 {
	border: 1px solid #999;
	height: 70px;
	background-color: #FF647C;
}

.d8 {
	width: 80px;
	height: 50px;
	float: right;
	margin-right: 130px;
	margin-top: 10px;
	font-size: 15px;
	text-align: center;
	color: #FFF;
}

.d9 {
	width: 80px;
	height: 50px;
	float: right;
	margin-top: 10px;
	text-align: center;
	font-size: 15px;
	color: #FFF;
}

.d10 {
	width: 80px;
	height: 50px;
	float: right;
	margin-top: 10px;
	text-align: center;
	font-size: 15px;
	color: #FFF;
}

.d11 {
	width: 200px;
	height: 70px;
	text-align: center;
	color: #FFF;
}

.s2 {
	font-size: 50px;
}

.s11 {
	font-size: 20px;
	color: #FFF;
}

.d12 {
	height: 50px;
	line-height: 50px;
	padding-left: 80px;
}

.la1 {
	background-color: #FF8135;
	color: #FFF;;
}

.d13 {
	height: 50px;
	line-height: 50px;
	padding-left: 80px;
}

.d14 {
	height: 50px;
	line-height: 50px;
	padding-left: 80px;
}

.la2 {
	border: 1px solid #999;
}

.d15 {
	height: 50px;
	line-height: 50px;
	padding-left: 47px;
}

.la3 {
	border: 1px solid #999;
}

.la3:hover {
	border: 2px solid #999;
	border-color: red;
}

.d16 {
	height: 40px;
	line-height: 50px;
	padding-left: 47px;
}

.la4 {
	border: 1px solid #999;
}

.d17 {
	height: 50px;
	line-height: 50px;
	padding-left: 35px;
}

.d18 {
	height: 50px;
	line-height: 50px;
	/* padding-left: 200px; */
}

.d19 {
	margin-left: 150px;
	float: left;
	text-decoration: none;
	background-color: #FF647C;
	width: 100px;
	height: 40px;
	font-size: 20PX;
	line-height: 40px;
	text-align: center;
	border-radius: 10px;
	color: #FFF;
}

.dd1 {
	margin-left: 30px;
	float: left;
	text-decoration: none;
	background-color: #FF647C;
	width: 100px;
	height: 40px;
	font-size: 15PX;
	line-height: 40px;
	text-align: center;
	border-radius: 10px;
	color: #FFF;
}

.d21 {
	float: left;
	width: 100px;
	height: 50px;
	border: 1px solid #F0F0F0;
	line-height: 50px;
	background-color: #F8F8F8;
	color: #777777;
}

.d21:hover {
	background-color: #FFF;
}

.d22 {
	width: 1100px;
	height: 50px;
	border: 1px solid #F0F0F0;
	margin: 0 auto;
	background-color: #F8F8F8;
}

.d26 {
	width: 1100px;
	height: 250px;
	border: 1px solid #F0F0F0;
	margin: 0 auto;
}

.d27 {
	width: 1100px;
	height: 800px;
	border: 1px solid #F0F0F0;
	margin: 0 auto;
	text-align: center;
}

.a2 {
	text-decoration: none;
}

.t1 {
	/* 设置表格的宽度 */
	width: 900px;
	margin-left: auto;
	margin-right: auto;
	border: 1px solid #F0F0F0;
	border-collapse: collapse;
	margin-top: 20px;
	background-color: #FAFAFA;
}

td {
	border: 1px solid #F0F0F0;
	border-collapse: collapse;
	padding: 5px;
}

.s5 {
	font-size: 25px;
	margin-left: 100px;
	margin-top: 10px;
}

.img5 {
	width: 900px;
}

.d30 {
	margin-left: 47px;
}

.dd {
	height: 40px;
	line-height: 50px;
	padding-left: 47px;
}
</style>
<script src="/js/jquery-1.8.3.min.js" charset="utf-8"></script>
<script type="text/javascript">
	$(function() {
		var b = 1;
		$(".in2").click(function() {
			var a = $(this).val();
			if (a == "-") {
				b--;
				if (b <= 1) {
					b = 1;
				}
				$(".s4").text(b);
			} else {
				b++;
				$(".s4").text(b);
			}
		});
		var flag = true;
		$(".ss").click(function() {

			if (flag) {
				$(".k1").css({
					"display" : "block",
					"float" : "left"
				});
				flag = false;
			} else {
				$(".k1").css("display", "none");
				flag = true;
			}

		});
		$(".a2").click(function() {
			location.href = "http://www.bb.com/cart/showCart";
		});

		$(".a3").click(function() {
			var id = ${sp1.id};
			var param = {
				"id" : id,
				"num" : b
			};
			var url = "/cart/addCart";
			$.post(url, param, function(data) {
				if(data.status == 200)
					alert(data.data);
				else{
					alert("添加失败, 请先登录"); 
					location.href="http://www.bb.com/denglu_list.html";
				}
			});
		});

	});

	function openDiv(thisobj) {
		$(thisobj).css("border", "2px solid red");
		$(thisobj).siblings().css("border", "1px solid #999");
		$(".la10").css("border", "#FFF");
	}
</script>

</head>
<body>

	<div class="d1">
		<a href="#"><img class="img2" src="/images/1.png"></a> 
	</div>
	<div class="p1">
		<div class="box">
			<input class="i1" type="text" name="search" placeholder="请输入关键字" />
			<div class="search">搜索</div>
		</div>
		<div>
			<li class="li"><a class="a1" href="#">首页</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<a class="a1" href="#">贝贝APP</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<a class="a1" href="#">贝店</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<a class="a1" href="#">友团</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<a class="a1" href="#">贝贷</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<a class="a1" href="#">商家入驻</a></li>

		</div>
	</div>
	<div>
		<img class="img4" src="/images/4s.png" />
		<div>
			<div class="d2">

				<div class="d4">
					<div class="d5">
						<span class="s1">今日特卖</span> ${sp1.str1}
					</div>
					<br />
					<div class="d6">${sp1.str2}</div>
					<br />
					<div class="d7">
						<div class="d8">
							您节省了<br /> ${sp1.tree4}
						</div>

						<div class="d9">
							折扣<br /> ${sp1.tree3}折
						</div>
						<div class="d10">
							原价<br /> ${sp1.tree2}
						</div>
						<div class="d11">
							<span class="s11">￥</span> <span class="s2">${sp1.tree1}</span>
						</div>
					</div>
					<div class="d12">
						<label>优惠</label> <label class="la1">返</label> <span class="s3">${sp1.str3}</span>
					</div>
					<div class="d13">
						<label>运费</label> <span>包邮(偏远地区除外)</span>
					</div>
					<c:if test="${sp1.str6!=null}">
						<div class="d14">
							<label class="la10">${sp1.str6}</label>
							<c:forEach items="${list1}" var="d">
								<label class="la2" onclick="openDiv(this)">${d.str}</label>&nbsp;&nbsp;
			     </c:forEach>



						</div>
					</c:if>
					<div class="d15">
						<label>${sp1.str4 }</label> <label class="la3">${sp1.str5}</label>
					</div>
					<div class="d16">
						<label class="la10">${sp1.str7 }</label>
						<c:forEach items="${list2}" var="c">
							<label class="la4" onclick="openDiv(this)"> ${c.str}</label>
						</c:forEach>

					</div>
					<c:if test="${sp1.img3!=null}">
						<div class="dd">

							<span class="ss">查询尺码</span>
							<div class="k1" style="display: none">
								<img src="${sp1.img3}">
							</div>

						</div>
					</c:if>

					<div class="d17">
						购买数量：<input type="button" value="-" class="in2" /> <span
							class="s4">1</span> <input type="button" value="+" class="in2" />件
					</div>
					<div class="d18">
						<a class="a2" href="#"><div class="d19">购买</div></a> 
						<a class="a3" href="#"><div class="dd1">添加到购物车</div></a>
					</div>
				</div>

				<div class="d3">
					<img src="${sp1.img1}" />
				</div>
				<div class="d20">
					<img class="img6" src="${sp1.img2}">
				</div>

			</div>
			<br /> <br /> <br /> <br /> <br /> <br />
			<div class="d22">
				<a href=""><div class="d21">☞商品详情</div></a> <a href=""><div
						class="d21">☞买家口碑</div></a> <a href=""><div class="d21">☞商品咨询</div></a>
				<a href=""><div class="d21">☞贝贝优势</div></a>

			</div>
			<div class="d26">
				<div class="s5">商品参数</div>
				<table class="t1">
					<c:forEach items="${list3}" var="b">
						<tr>
							<td>${b.str1}</td>
							<td>${b.str2}</td>
						</tr>

					</c:forEach>

				</table>
			</div>
			<div class="d27">
				<img class="img5" src="${sp1.img4}"> <img class="img5"
					src="${sp1.img5}">
			</div>
</body>
</html>