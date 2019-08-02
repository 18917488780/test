<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>


		<style>
			.banner{
				float: left;
				background: #F4F4F4;
				height:120px;
				width:1890px;
			}
			.banner #banner1 ul{
				margin-left: 800px;
				padding-bottom: 10px;
			}
			.banner #banner1 ul li{
				float: left;
				list-style:none;
				font-size: 12px;
				display: inline-block;
				color:#555;
				vertical-align: top;
				margin:0 12px;
			}
			.banner:hover{
				color:red;
			}
			.banner #banner2{
				height:200px;
				width:1890px;
			}
			.banner #banner2 #imgs1{
				float: left;
				width:810px;
			}
			.banner #banner2 #imgs2{
				float: left;
				width:385px;
			}
			banner #banner2 #imgs3{
				float: right;
				width:185px;
			}
			.body{
				margin-top: 30px;
				float: left;
				/* height:1400px; */
				width:1890px;
				background:#F2F4F6;
			}
			.body .bodyone{
				padding-top: 20px;
				float:left;
				margin-left: 300px;
				 background:#EAEAFF; 
				
				width:1205px;
			}
			.body .bodyone h3{
				border-bottom:1px solid #ddd;
				font:700 16px/46px helvetica,tahoma,arial,sans-serif;
				height:46px;
				margin: 10px 22px;
				display: block;
			}
			.body .bodyone ul li{
				float:left;
				list-style:none;
				padding: 5px;
				margin: 5px;
				font-size:13px;
				width:290px;
				height:120px;
				color:#000;
			}
			.body .bodyone .address-list{
				height:180px;
				background:white;
			}
			.body .bodyone .address-list .lizuo{
				box-shadow:0 0 4px #a6a6a6;
				background:white;
				width:290px;
				height:150px;
			}
			.body .bodyone .address-list .lizuo .address{
				margin: 8px 15px;
				height:30px;
			}
			.body .bodyone .address-list .lizuo .address .name{
				font-size:20px;
			}
			.body .bodyone .address-list .lizuo .address .phone{
				font-size:15px;
				color:#888;
				margin-left: 15px;
			}
			.body .bodyone .address-list .lizuo .address .province_text{
				color:#aaa;
			}
			.body .bodyone .address-list .lizuo .address .area_text{
				color:#aaa;
			}
			.body .bodyone .address-list .lizuo .address .city_text{
				color:#aaa;
			}
			.body .bodyone .address-list .lizuo .address .address_hao{
				color:#aaa;
			}
			.body .bodyone .address-list .lizuo .address .default{
				margin-left: 10px;
				color:#d35453;
			}
			.body .bodyone .address-list .lizuo .footer{
				padding: 4px 15px;
				color:#9CCAD6;
			}
			.liyou {
				border:3px dashed #eee;
				padding: 7px;
				box-shadow:none;
				height:130px;
				
			}
			.liyou .add-address {
				font-size:20px;
				margin-top:40px;
				margin-left:60px;
			}
			.liyou:hover{
				border:2px solid #32AB0E;
				border:3px dashed green;
			}
			
			.body .bodyone .address-list .liyou .add_address{
				font-size:18px;
				color:#999;
				width:100%;
				text-align: center;
				margin: 40px 0;
			}
			.body .bodyone .address-list .list-address {
				background:#FFF;
				width:500px;
			}
			.list-address2{
			background:#FFF;
				width:500px;
			}
			table,td{
		   	/*  设置边框 */
		   	
		   	/*  设置边框合并 */
		   	  border-collapse:collapse;
		   	}
		   	td{ 
			 	  /* 设置单元格边框和内容的距离 */
			 		padding:5px;
			 		height:20px;
			 	}
			table{
			
			 	/* 设置表格的左右外边距自适应 */
			 	
			 	width:500px;
			 	height:200px;
			 	font-size:12px;
			 	/* 设置表格的背景颜色 */
			 	
			 	 }
			 #last-td{ 
			 	width:200px;
		   		text-align:center;
		   		folat:left;
		   		
		   		}
			.body .bodyone .car-list{
				padding: 20px 20px 20px;
				width:1160px;
				height:400px;
			}
			.body .bodyone .car-list .pure-table{
				<!-- border-collapse:collapse; 
				border-spacing:0;
				empty-cells:show; -- >
				border-top:1px solid #ddd;
				border:1px solid #DDDDDD;
				width:1160px;
				height:100px;
			}
			.body .bodyone .car-list .pure-table thead{
				background:#FAFAFA;
				color:#555;
				text-align:left;
			}
			.body .bodyone .car-list .pure-table th{
				border-left:none;
				border-width:0 0 0 1px;
				font-size:inherit;
				margin: 0;
				padding:6px 12px;
			}
			.body .bodyone .car-list .pure-table .info{
				width:280px;
			}
			.body .bodyone .car-list .pure-table .message{
				width:140px;
			}
			.body .bodyone .car-list .pure-table .subtotal{
				width:100px;
				text-align: right;
			}
			.body .bodyone .car-list  .kk{
				margin-top:10px;
				/* height:360px; */
				width:1160px;
				/* background:red; */
			}
			.body .bodyone .car-list .kk .kk-ban1{
				height:40px;
				width:1160px;
				background:#FAFAFA;
				border:1px solid #DDDDDD;
			}	
			.body .bodyone .car-list .kk .kk-ban1 .zuo{
				padding-top:3px;
				height:40px;
				width:460px;
				text-align:center;
				font-size:15px;
			}
			.body .bodyone .car-list .kk .kk-ban1 .zuo .imgs4{
				margin-left:5px;
				padding-top:6px;
			}
			.body .bodyone .car-list .kk .kk-ban2{
				margin-top:10px;
				height:100px;
				width:1160px;
				background:white;
				
			}
			.body .bodyone .car-list .kk .kk-ban2 .imgs5{
				height:60px;
				width:60px;
			}
			.body .bodyone .car-list .kk .kk-ban2 .d1{
				float:left;
				height:60px;
				width:60px;
				
				padding:20px ;
			}	
			.body .bodyone .car-list .kk .kk-ban2 .d2{
				float:left;
				height:60px;
				width:200px;
				padding:20px ;
			}
			.body .bodyone .car-list .kk .kk-ban2 .d2 a{
				font-size:14px;
				color:#3e3e3e;
				text-decoration:none;
			}
			.body .bodyone .car-list .kk .kk-ban2 .d2 span{
				font-size:16px;
				color:#C5CCF9;
				text-decoration:none;
			}
			.body .bodyone .car-list .kk .kk-ban2 .d3{
				float:left;
				height:60px;
				width:100px;
				padding:20px ;
			}
			.body .bodyone .car-list .kk .kk-ban2 .d3 a{
				font-size:14px;
				
			}
			.body .bodyone .car-list .kk .kk-ban2 .d4{
				float:left;
				height:60px;
				width:100px;
				
				padding:20px ;
			}
			.body .bodyone .car-list .kk .kk-ban2 .d5{
				float:left;
				height:60px;
				width:130px;
				padding:20px;
			}
			.body .bodyone .car-list .kk .kk-ban2 .d5 a{
				font-size:16px;
				color:#FF5E39;
				background:#FFFCC3;
			}
			.body .bodyone .car-list .kk .kk-ban2 .d6{
				float:left;
				height:40px;
				width:150px;
				
				padding:20px ;
			}
			.body .bodyone .car-list .kk .kk-ban2 .d7{
				float:left;
				height:60px;
				width:130px;
				padding:20px ;
			}
			.body .bodyone .car-list .kk .kk-ban2 .d7 a{
				font-size:16px;
				color:#FF54A2;
			}
			.body .bodyone .car-list .kk .kk-ban3{
				margin-top:10px;
				padding-top:10px;
				height:180px;
				width:1160px;
				background:#FAFAFA;
				border:1px solid #DDDDDD;
			}	
			.body .bodyone .car-list .kk .kk-ban3 .pay1{
				height:35px;
				width:1160px;
				
			}
			.body .bodyone .car-list .kk .kk-ban3 .pay2{
				height:35px;
				width:1160px;
				
			}
			.body .bodyone .car-list .kk .kk-ban3 .pay3{
				height:35px;
				width:1160px;
				
			}
			.body .bodyone .car-list .kk .kk-ban3 .pay4{
				height:55px;
				width:1160px;
				
			}
			.body .bodyone .car-list .kk .kk-ban3  #pay-id1{
				float:right;
				margin-top:7px;
				margin-right:30px;
			}
			.body .bodyone .car-list .kk .kk-ban3  .pay4 #pay-id4{
				float:right;
				margin-right:30px;
				margin-top:7px;
			}
			.body .bodyone .car-list .kk .kk-ban3  .pay4 #pay-id4 a{
				font-weight:700;
			}
			.body .bodyone .car-list .kk .kk-ban3  .pay4 #pay-id4 span{
				font-size:26px;
				width:114px;
				color:#ff4975;
			}
			.body .bodyone h3 #pay5{
				margin-left:30px;
				font-size:12px;
				color:#AAB2C8;
			}
			.body .bodyone .lastpay1{
				height:230px;
				width:1160px;
				
				padding:20px;
			}
			.body .bodyone .lastpay1 .up1{
				background:white;
				
			}
			.body .bodyone .lastpay1 .up1 .zuo{
				height:40px;
				width:400px;
				padding:5px;
			}
			.body .bodyone .lastpay1 .up1 .zuo #way{
				font-size:15px;
				margin-left: 7px;
				color:#555;
			}
			.body .bodyone .lastpay1 .up1 .zuo #momeny{
				font-size:25px;
				margin-left: 15px;
				color:#FF4975;
			}
			.body .bodyone .lastpay1 .up2{
				background:white;
			
			}
			.body .bodyone .lastpay1 .up2 .plat{
				margin-left: 100px;
				height:30px;
			
			}
			.body .bodyone .lastpay1 .down{
				background:white;
				width:1140px;
				height:120px;
				padding:10px;
				box-shadow:0 0 4px #a6a6a6;
			}
			.body .bodyone .lastpay1 .down .zhifu{
				float:left;
				margin-left:50px;
				margin-top:20px;
				height:100px;
				width:300px;
			}
			.body .bodyone .lastpay1 .down .zhifu .left{
				margin-top:20px;
				height:45px;
				width:300px;
			}
			.body .bodyone .lastpay1 .down .weixin{
				margin-left:50px;
				margin-top:20px;
				float:left;
				height:100px;
				width:300px;
			}
			.body .bodyone .lastpay1 .down .weixin .right{
				margin-top:20px;
				height:45px;
				width:300px;
			}
			.body .bodyone .lastpay2{
				background:white;
				margin-top:5px;
				margin-left:20px;
				height:200px;
				width:1160px;
				
			}
			.body .bodyone .lastpay2 .queren{
				margin-left:354px;
				margin-top:10px;
				height:180px;
				width:800px;
				
			}
			.body .bodyone .lastpay2 .queren .paylist{
				height:110px;
				width:800px;
				border:3px solid #FF62B1;
			}
			.body .bodyone .lastpay2 .queren .paylist .list1{
				height:45px;
				width:795px;
				
			}
			.body .bodyone .lastpay2 .queren .paylist .list1 .payment{
				font-size:14px;
				float:left;
				margin-left:430px;
				margin-top:20px;
				margin-right:50px;
			}
			.body .bodyone .lastpay2 .queren .paylist .list1 .price{
				font-size:28px;
				color:#FF62B1;
				float:left;
				margin-top:10px;
				margin-right:20px;
			}
			.body .bodyone .lastpay2 .queren .paylist .list2{
				
				height:55px;
				width:795px;
			}
			.body .bodyone .lastpay2 .queren .paylist .list2 p{
				margin-left:550px;
				font-size:12px;
			}
			.body .bodyone .lastpay2 .queren .paylist .list3{
				
				height:55px;
				width:803px;
			}
			.body .bodyone .lastpay2 .queren .paylist .list3 .zhifu{
				background:#FF62B1;
				float:right;
				border-radius:0 0 5px 5px;
				height:40px;
				width:150px;
			}
			.body .bodyone .lastpay2 .queren .paylist .list3 .zhifu .post{
				
				height:40px;
				width:150px;
			}
			.body .bodyone .lastpay2 .queren .paylist .list3 .zhifu .post a{
				font-size:16px;
				text-align:center;
				right:-3px;
				line-height:40px;
				color:#fff;
				bottom:-41px;
				margin-left:40px;
				text-decoration:none;
			}
			.body .bodyone .lastpay2 .queren .paylist .list3 .zhifu .post a:hover{
				color:#555555;
			}
			.bottom{
				margin-top: 20px;
				float: left;
				height:150px;
				width:1890px;
				background: #555555;
			}
			.bottom .bottom1 .bottomban1{
				height:5px;
				width:1890px;
				background:#FF5482;
			}
			.bottom .bottom1 ul{
				float:left;
				margin-left: 400px;
			}
			.bottom .bottom1 ul li{
				float: left;
				list-style:none;
				font-size: 12px;
				display: inline-block;
				color:#FAFAFA;
				vertical-align: top;
				margin:0 12px;
			}
			.a1:hover{
				color:#FF62B1;
				
			}
		</style>
		<script src="/js/jquery-1.8.3.min.js"></script>
		
		<script>
			var flag=true;var flag2=true;
			$(function(){
				$(".add-address").click(function(){
					if(flag){
						$(".list-address").css({"display":"block"});
						flag=false;
					}else{
						$(".list-address").css({"display":"none"});
						flag=true;
					}
					$(".lizuo").css("border","1px solid grey");
				})
				$(".updata-add").click(function(){
					if(flag){
						$(".list-address2").css({"display":"block"});
						flag2=false;
					}else{
						$(".list-address2").css({"display":"none"});
						flag2=true;
					}
				})

			})	
			
		</script>

</head>
<body>
		<div class="banner">
			<div id="banner1">
				<ul>
					<li><a class="a1">消息</a></li>
					<li><a class="a1">我的订单</a></li>
					<li><a class="a1">我的贝贝</a></li>
					<li><a class="a1">商家入住</a></li>
					<li><a class="a1">贝贝商家中心</a></li>
					<li><a class="a1">帮助中心</a></li>
					<li><a class="a1">关注</a></li>
				</ul>
			</div>
			<div id="banner2">
				<a>
					<img id="imgs1" src="/images/ban1.PNG"/>
				</a>
				<a>
					<img id="imgs2" src="/images/ban2.PNG"/>
				</a>
				<a>
					<img id="imgs3" src="/images/ban3.PNG"/>
				</a>
			</div>
		</div>



		
		<div class="body">
			<div class="bodyone">
				<div id="ban">
					<a>
						<img src="/images/bodyban1.PNG"/>
					</a>
				</div>
				<h3>
				选择收货地址
					<a>管理收货地址</a>
				</h3>
				<div class="address-list">
					<ul>
						<li>
							<div class="lizuo">
								<div class="letter">
									<img src="/images/zuoban1.PNG"/>
								</div>
								<div>
									<div class="address">
										<span class="name">222</span>
										<span class="phone">131****9867</span>
										<span class="default">默认</span>
									</div>
									<div class="address">
										<strong>寄送至</strong>
										<span class="province_text">北京</span>
										<span class="city_text">北京市</span>
										<span class="area_text">东城区</span>
										<span class="address_hao">64564564</span>
									</div>
									<div class="footer">
										<a>修改</a>
									</div>
								</div>
							</div>
						</li>
						<li>	
							<div class="liyou">
								<div class="add-address">
									<a class="kk-address" href="#" style="text-decoration:none">＋添加新地址</a>
								</div>
							</div>
						</li>
						<li>
							<div class="list-address" style="display: none">
									<div class="daohang-address">
										<a>
											<img src="/images/addre.PNG" width="500px" />
										</a>
									</div>
									<form id="saveAdd" method=POST >
										<table>
											<tr>
												<td>所在地区</td>
												<td>
													<select name="province" id="province">
														 <option type="text" value="河北省" >河北省</option>
														 <option type="text" value="湖南省" >湖南省</option>
														 <option type="text" value="广东省" >广东省省</option>
													</select>
												</td>
												<td>
													<select name="city" id="city">
														 <option type="text" value="北京市" >北京市</option>
														 <option type="text" value="长沙市" >长沙市</option>
														 <option type="text" value="广州市" >广州市</option>
													</select>
												</td>
												<td>
													<select name="area" id="area">
														 <option type="text" value="朝阳区" >朝阳区</option>
														 <option type="text" value="岳阳县" >岳阳县</option>
														 <option type="text" value="白云区" >白云区</option>
													</select>
												</td>
											</tr>
											<tr>
												<td>邮政编码</td>
												<td>
													 <input type="text" name="code" id="code"/>
												</td>
											</tr>
											<tr>
												<td>详细地址</td>
												<td>
		        									<textarea type="text" name="address" placeholder="不需要重复填写省市区,必须大于5个字符,小于120个字符" cols="30" rows="5"></textarea></td>
											</tr>
											<tr>
												<td>收货人姓名</td>
												<td>
													 <input type="text" name="name"/>
												</td>
											</tr>
											<tr>
												<td>手机号码</td>
												<td>
													 <input type="text" name="phone" id="phone"/>
												</td>
												
											</tr>
											<tr>
											</tr>
											<tr>
												<td>请选择</td>
												<td class="last-td">
												<input type="button"  value="提交" id="tijiao"></input>		
											</tr>
										</table>
									</form>
								</div>
<script type="text/javascript">
	$(function(){
		$("#tijiao").click(function(){
			var url = "/order/saveAdd";
			var data = $("#saveAdd").serialize();
			$.get(url,data,function(){
				var code = $("#code").val();
				var phone = $("#phone").val();
				var province = $("#province").val();
				var city = $("#city").val();
				var area = $("#area").val();
				$(".liyou").empty();
				$(".liyou").append("<label>"+code+"</label>&nbsp&nbsp&nbsp&nbsp<label>"+phone+"</label><br/><label>寄送至</label>"+
				"<label>"+province+"</label><label>"+city+"</label><label>"+area+"</label><br /><div class=\"add-address\"><a>修改</a></div>");
				$(".list-address").css("display","none");
				$(".add-address").click(function(){
					if(flag){
						$(".list-address").css({"display":"block"});
						flag=false;
					}else{
						$(".list-address").css({"display":"none"});
						flag=true;
					}
					$(".lizuo").css("border","1px solid grey");
				})
			});
		});
	})
</script>
								<div class="list-address2" style="display: none">
									<div class="daohang-address">
										<a>
											<img src="/images/addre.PNG" width="500px" />
										</a>
									</div>
									<form action="saveUpdata" method=POST >
										<table>
											<tr>
												<td>所在地区</td>
												<td>
													<select name="province">
														 <option type="text" value="河北省" >河北省</option>
														 <option type="text" value="湖南省" >湖南省</option>
														 <option type="text" value="广东省" >广东省省</option>
													</select>
												</td>
												<td>
													<select name="city">
														 <option type="text" value="北京市" >北京市</option>
														 <option type="text" value="长沙市" >长沙市</option>
														 <option type="text" value="广州市" >广州市</option>
													</select>
												</td>
												<td>
													<select name="area">
														 <option type="text" value="朝阳区" >朝阳区</option>
														 <option type="text" value="岳阳县" >岳阳县</option>
														 <option type="text" value="白云区" >白云区</option>
													</select>
												</td>
											</tr>
											<tr>
												<td>邮政编码</td>
												<td>
													 <input type="text" name="code"/>
												</td>
											</tr>
											<tr>
												<td>详细地址</td>
												<td>
		        									<textarea type="text" name="address" placeholder="不需要重复填写省市区,必须大于5个字符,小于120个字符" cols="30" rows="5"></textarea></td>
											</tr>
											<tr>
												<td>收货人姓名</td>
												<td>
													 <input type="text" name="name"/>
												</td>
											</tr>
											<tr>
												<td>手机号码</td>
												<td>
													 <input type="text" name="phone"/>
												</td>
												
											</tr>
											<tr>
											</tr>
											
											<tr>
												<td>请选择</td>
												<td class="last-td">
												<input type="submit"  value="提交"></input>												</td>
												<td>
													<input type="submit" name="lastname" value="取消" />
												</td>
											</tr>
										</table>
									</form>
								</div>
						</li>
					</ul>
				</div>
				<h3>
					<a>确认订单信息</a>
				</h3>
				<div class="car-list">
					
					<div class="kk">
						<div class="kk-ban1">
							<div class="zuo">由Merries/花王&nbsp &nbsp从杭州保税区&nbsp&nbsp 发货
								<img class="imgs4" src="/images/kkzuo.jpg"/>
							</div>
						</div>
					<c:forEach items="${gwc}" var="b" varStatus="status">
						<div class="kk-ban2">
							<div>
								<div class="d1">
									<img class="imgs5" src="${b.img}" />
								</div>
								<div class="d2">
									<a>${b.str1}</a><br> <span>不支持7天无理由退后</span>
								</div>
								<div class="d3">
									<a>颜色:通用<br> 规格:L
									</a>
								</div>
								<div class="d4">${b.tree}</div>
								<div class="d5">
									<a>${kkdoor.discount}折特卖</a>
								</div>
								<div class="d6">${b.num}</div>
								<div class="d7">
									<a>${(Math.round(b.num*b.tree*100))/100}</a>
								</div>
							</div>
						</div>
					</c:forEach>
					<div class="kk-ban3">
							<div class="pay1">
								<div id="pay-id1">
									<a>运费: &nbsp &nbsp&nbsp &nbsp  &nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp &nbsp&nbsp &nbsp&nbsp&nbsp0.00</a>
								</div>
							</div>
							<div class="pay2">
								<div id="pay-id1">
									<a>活动优惠: &nbsp &nbsp&nbsp &nbsp&nbsp&nbsp&nbsp &nbsp&nbsp &nbsp &nbsp&nbsp&nbsp &nbsp&nbsp &nbsp0.00</a>
								</div>
							</div>
							<div class="pay3">
								<div id="pay-id1">
									<a>进口税:&nbsp &nbsp&nbsp  &nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp &nbsp&nbsp 0.00</a>
								</div>
							</div>
							<div class="pay4">
								<div id="pay-id4">
									<a>订单总计:<c:set value="0.0" var="sum"/>
								<c:forEach items="${gwc }" var="d">
			                        	<c:set value="${sum+ d.num * d.tree}" var="sum"/>
			                        	</c:forEach>
			                        	<c:out value="${(Math.round(sum*100))/100}"/></a>
									<span> &nbsp &nbsp&nbsp &nbsp ${kkdoor.price}</span>
								</div>
							</div>
						</div>	
					</div>
				</div>
				<h3>
					<a>选择支付方式</a>
					<span id="pay5">*推荐使用支付宝支付,安全快捷</span>
				</h3>
				<div class="lastpay1">
					<div class="up1">
						<div class="zuo">
							<img id="imgs6" src="/images/pay1.PNG"/>
							<a id="way">选择支付方式</a>
							<a id="momeny"><c:set value="0.0" var="sum"/>
								<c:forEach items="${gwc}" var="d">
			                        	<c:set value="${sum+ d.num * d.tree}" var="sum"/>
			                        	</c:forEach>
			                        	<c:out value="${(Math.round(sum*100))/100}"/></a>
							<a id="way">元</a>
						</div>
					</div>
					<div class="up2">
						<div class="plat">支付平台</div>
					</div>
					<div class="down">
						<div class="zhifu">
							<div class="left">
								<img src="/images/pay2.PNG"/>
								<img src="/images/alipay.PNG"/>
							</div>
						</div>
						<div class="weixin">
							<div class="right">
								<img src="/images/pay3.PNG"/>
								<img src="/images/weipay.PNG"/>
							</div>
						</div>
					</div>
				</div>
				<div class="lastpay2">
					<div class="queren">
						<div class="paylist">
							<div class="list1">
								<span class="payment">使用支付平台(支付宝)支付</span>
								<span class="price">￥<c:set value="0.0" var="sum"/>
								<c:forEach items="${gwc}" var="d">
			                        	<c:set value="${sum+ d.num * d.tree}" var="sum"/>
			                        	</c:forEach>
			                        	<c:out value="${(Math.round(sum*100))/100}"/></span>
							</div>
							<div class="list3">
								<div class="zhifu">
									<div class="post">
										<a class="comfirm">确认并支付</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
<script>
	$(".comfirm").click(function() {
		var gw = [];
		var i = 0;
		<c:forEach items="${gwc}" var="g" varStatus="gw">
			gw[i] = ${g.id};
			i++;
		</c:forEach>
		var url = "/order/addOrder?array="+gw;
		$.get(url,function(data){
			location.href = data;
		});
	});
</script>
		<div class="bottom">
			<div class="bottom1">
				<div class="bottomban1"></div>
				<ul>
					<li><a class="a1">首页</a></li>
					<li><a class="a1">关于贝贝</a></li>
					<li><a class="a1">商家入住</a></li>
					<li><a class="a1">正品保证</a></li>
					<li><a class="a1">人才招聘</a></li>
					<li><a class="a1">联系我们</a></li>
					<li><a class="a1">帮助中心</a></li>
					<li><a class="a1">友情链接</a></li>
					<li><a class="a1">手机客户端</a></li>
					<li><a class="a1">客服在线</a></li>
					<li><a class="a1">贝贝公益</a></li>
					<li><a class="a1">品质健康</a></li>
					<li><a class="a1">育儿社区</a></li>
				</ul>
			</div>
			<div class="bottom2">
				<a>
					<img src="/images/bottomban.PNG"/>
				</a>
			</div>
		</div>
</body>
	<script type="text/javascript">
		$(".lizuo").click(function(){
			$(this).css("border","1px solid red");
			var url = "/order/saveAddr";
			var param ={"province":"北京","city":"北京市","area":"东城区","code":"64564564","phone":"131****9867"};
			$.get(url,param);
		});
	</script>
</html>







