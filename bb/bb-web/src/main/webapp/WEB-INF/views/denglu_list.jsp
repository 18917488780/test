
<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>登录页面</title>
<meta charset='utf-8' />
<style>
.head {
	list-style: none;
	margin: 0 auto;
	position: relative;
	top: 40px;
	width: 1080px;
}

a {
	text-decoration: none;
	font-size: 15px;
	color: #979797;
}

.main_content {
	overflow: hidden;
	padding: 145px 0;
	width: 1080px;
	margin: 0 auto;
	height: 401px;
}

.right_login {
	float: right;
	width: 330px;
	border: 1px solid #ececec;
	color: #666;
	border-top: 2px solid #ff4965;
	padding: 50px 35px;
}

.form_title {
	font-size: 14px;
	color: #000;
	font-weight: 700;
	margin-bottom: 30px;
}

.title_right {
	float: right;
	font-size: 12px;
	font-weight: 400px;
	color: #666;
}

.title_right2 {
	color: #ff4965;
	font-size: 12px;
}

#input_username {
	height: 30px;
	font-size: 12px;
	width: 260px;
	color: #666;
	line-height: 30px;
	border: 0;
	outline: 0;
	padding: 0 10px;
	background: 0 0;
	position: relative;
	*top: -1px;
	_top: -2px;
}

#input_password {
	height: 30px;
	font-size: 12px;
	width: 260px;
	color: #666;
	line-height: 30px;
	border: 0;
	outline: 0;
	padding: 0 10px;
	background: 0 0;
	position: relative;
	*top: -1px;
	_top: -2px;
}

.login {
	margin-top: 15px;
	background: #ff4965;
	display: block;
	height: 32px;
	line-height: 32px;
	border-radius: 3px;
	text-align: center;
	font-size: 14px;
	letter-spacing: 6px;
}

.img {
	float: left; width 500px;
	height: 354px;
	position: relative;
	left: 50px;
}

.drag {
		margin-top:15px;
		position: relative;
		width: 330px;
		height: 34px;			
		background-color: #e8e8e8;
		line-height: 34px;
		float: left;
		bottom:6px;
		
}

.bg {
	position: absolute;
	        width: 40px;
	        height: 100%;
	        background-color: #7ac23c;
}

.text {
	position: absolute;
	        width: 100%;
	        margin: 0;
	        text-align: center;
	        font-size:12px;
	        color:#666;
}

.btn {
	position: absolute;
	        width: 40px;
	        height: 32px;
	        background: #fff url(data:img1/8.png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAA3hpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuNS1jMDIxIDc5LjE1NTc3MiwgMjAxNC8wMS8xMy0xOTo0NDowMCAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9tbS8iIHhtbG5zOnN0UmVmPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVzb3VyY2VSZWYjIiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtcE1NOk9yaWdpbmFsRG9jdW1lbnRJRD0ieG1wLmRpZDo0ZDhlNWY5My05NmI0LTRlNWQtOGFjYi03ZTY4OGYyMTU2ZTYiIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6NTEyNTVEMURGMkVFMTFFNEI5NDBCMjQ2M0ExMDQ1OUYiIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6NTEyNTVEMUNGMkVFMTFFNEI5NDBCMjQ2M0ExMDQ1OUYiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENDIDIwMTQgKE1hY2ludG9zaCkiPiA8eG1wTU06RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDo2MTc5NzNmZS02OTQxLTQyOTYtYTIwNi02NDI2YTNkOWU5YmUiIHN0UmVmOmRvY3VtZW50SUQ9InhtcC5kaWQ6NGQ4ZTVmOTMtOTZiNC00ZTVkLThhY2ItN2U2ODhmMjE1NmU2Ii8+IDwvcmRmOkRlc2NyaXB0aW9uPiA8L3JkZjpSREY+IDwveDp4bXBtZXRhPiA8P3hwYWNrZXQgZW5kPSJyIj8+YiRG4AAAALFJREFUeNpi/P//PwMlgImBQkA9A+bOnfsIiBOxKcInh+yCaCDuByoswaIOpxwjciACFegBqZ1AvBSIS5OTk/8TkmNEjwWgQiUgtQuIjwAxUF3yX3xyGIEIFLwHpKyAWB+I1xGSwxULIGf9A7mQkBwTlhBXAFLHgPgqEAcTkmNCU6AL9d8WII4HOvk3ITkWJAXWUMlOoGQHmsE45ViQ2KuBuASoYC4Wf+OUYxz6mQkgwAAN9mIrUReCXgAAAABJRU5ErkJggg==) center no-repeat;border: 1px solid #ccc;cursor: pointer;}



#footer {
	text-align: center;
	color: #666;
	min-width: 1000px;
}

#footer.i2 {
	position: absolute;
	bottom: 0;
	width: 100%;
}

.footer-nav {
	border-top: 3px solid #ff5482;
	padding: 10px 0;
	background: #555;
	color: #ddd;
	z-index: 1;
}

.footer-nav a {
	color: #ddd;
	margin: 0 10px;
	font-size: 12px;
}

.footer-content {
	color: #999;
	font-size: 12px;
	padding: 20px 0 40px;
	background: white;
}

.wrapper {
	width: 1002px;
	margin: 0 auto;
	position: relative;
}

.cleari2, .wrapper { .
	cleari2: :after, .wrapper::after{  
			clear:both;
	content: " ";
	display: block;
	height: 0;
	overflow: hidden;
	visibility: hidden;
}

</style>
</head>
<body>
	<div class="head">
		<a href="#"><img
			src="/images/1.png" /></a>
		<li style="float: right" title="贝贝正品保证-全部正品，全场包邮，七天无理由退货-贝贝"><a
			href="#"><img class="i"
				src="/images/2.png" /></a> <a
			href="#" style="top: -10px; position: relative">正品保证</a> <a href="#"><img
				class="i" src="/images/3.png" /></a>
			<a href="#" style="top: -10px; position: relative">品牌授权特卖</a> <a
			href="#"><img class="i"
				src="/images/4.png" /></a> <a
			href="#" style="top: -10px; position: relative">全场包邮</a></li>
	</div>
	<div class="main_content">
		<div class="img">
			<img src="/images/5.png" />
		</div>

		<div class="right_login">
			<form>
				<div class="form_title">
					<span class="title_right"> <span>还没账号？</span> <a
						class="title_right2" href="beibeizhuce.html">立即注册</a>
					</span> 登录宝贝
				</div>
				<div style="height:20px;width:306px;position: relative;top:10px;left:10px;">
					<span id="remote"></span>
				</div>
				<div class="ipt_id" style="margin-top: 15px; position: relative">
					<label class="id_1" style="display: block; border: 1px solid #e6e6e6; border-radius: 2px; padding-left: 30px; position: relative; color: #e6e6e6">
						<img src="/images/6.png" style="position: absolute; top: 6px; left: 7px" /> | 
						<input id="input_username" name="username" type="text" onblur="checkUsername()"/>
					</label>
				</div>
				<div class="lock" style="margin-top: 15px; position: relative">
					<label class="id_2"
						style="display: block; border: 1px solid #e6e6e6; border-radius: 2px; padding-left: 30px; position: relative; color: #e6e6e6">
						<img src="/images/7.png"
						style="position: absolute; top: 6px; left: 7px;" /> | 
						<input id="input_password" maxlengt="16" placeholder="密码" name="password" value="" type="password" onblur="checkUsername()"/>
					</label>
				</div>
				
				<div class="drag">
					<div class="bg"></div>
					<div class="text">请按住滑块，拖动到最右边</div>
					<div class="btn">
						
					</div>
				</div>
				<script>
        var $ = function(selector){
            return document.querySelector(selector);
        },
        box = $('.drag'),//容器
        bg = $('.bg'),//绿色背景
        text = $('.text'),//文字
        btn = $('.btn'),//拖动按钮
        done = false;//是否通过验证

        btn.onmousedown = function(e){
            var e = e || window.event;
            var posX = e.clientX - this.offsetLeft;

            btn.onmousemove = function(e){
                var e = e || event;
                var x = e.clientX - posX;
                this.style.left = x + 'px';
                bg.style.width = this.offsetLeft + 'px';

                // 通过验证
                if(x >= box.offsetWidth - btn.offsetWidth){
                    done = true;
                    btn.onmousedown = null;
                    btn.onmousemove = null;
                    text.innerHTML = '通过验证';
                }
            };

            document.onmouseup = function(){
                btn.onmousemove = null;
                btn.onmouseup = null;

                if(done)return;
                btn.style.left = 0;
                bg.style.width = 0;
            }
        };

        text.onmousedown = function(){
            return false;
        }
    </script>
				<div class="check1" style="margin-top: 15px; font-size: 12px">
					<a class="check2" href="#"
						style="color: #ff4965; float: right; font-size: 12px">忘记密码</a> <input
						type="checkbox">&nbsp;自动登录
				</div>

				<input type="button" value="登录" id="i222"
					style="z-index: 1; color: white; display: block; border: none; width: 330px; height: 34px; background: #ff4965" />

				<div class="quick" style="margin-top: 15px;">
					<span class="f1" style="font-size: 12px">快捷登陆方式:</span> <a
						href="http://login.beibei.com/openid/qq/index.html"><img
						src="/images/9.png"
						style="width: 25px; height: 24px; margin: 0 4px; top: 7px; position: relative" /></a>
					<a href="http://login.beibei.com/openid/weixin/index.html"><img
						src="/images/10.png"
						style="width: 25px; height: 24px; margin: 0 4px; top: 7px; position: relative" /></a>
				</div>
			</form>
		</div>


	</div>
	<!--页脚-->
	<div id="footer" class="i2">
		<div class="footer-nav">
			<a href="#">首页</a> <a href="#" target="_blank">关于贝贝</a> <a href="#"
				target="_blank">商家入住</a> <a href="#" target="_blank">正品保证</a> <a
				href="#" target="_blank">人才招聘</a> <a href="#" target="_blank">联系我们</a>
			<a href="#" target="_blank">帮助中心</a> <a href="#" target="_blank">友情链接</a>
			<a href="#" target="_blank">手机客户端</a> <a href="#" target="_blank">客服在线</a>
			<a href="#" target="_blank">贝贝公益</a>
		</div>
		<div class="footer-content">
			<div class="wrapper">
				<p>浙ICP备12005806号 | 食品流通许可证：SP3301041510054925 |
					出版物经营许可证：新出发零字第00086号</p>
				<p class="mt-8">
					© 2014-2017 <a style="color: #999; font-size: 12px" href="#"
						target="_blank">贝贝集团</a> All Rihrts Reserved 客服热线：10107788
				</p>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="js/jquery-1.4.2.js"></script>
	<script type="text/javascript">
	function checkUsername(){
		var username = $("#input_username").val().trim();
		var password = $("#input_password").val().trim();
		if(username == ""){
			$("#remote").html("用户名不能为空!");
			return;
		}
		if(password == ""){
			$("#remote").html("密码不能为空!");
			return;
		}
		$.ajax({
				"url" : "sso/remote",
				"type" : "GET",
				"data" : {"username" : username,"password":password},
				"dataType" : "text",
				"success" : function(result) {
					setMsg(result);
				}
		});
	}
	function setMsg(msg){
		$("#remote").html(msg);
	}
	$(function(){
		$("#i222").click(function(){
			var username = $("#input_username").val();
			var pwd = $("#input_password").val();
			$.get("sso/deng",{"username":username,"password":pwd},function(data){
				console.log(data.status);
				console.log(data);
				if(data.status == 200){
					location.href="Http://www.bb.com";
				}
			});
		});
	})
	</script>
</body>
</html>






