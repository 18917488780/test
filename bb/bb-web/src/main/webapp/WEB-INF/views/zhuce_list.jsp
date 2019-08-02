<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="utf-8">
		<style>
			.head{
				width:1080px;
				height:105px;
				margin: 0 auto;
				border-top: 1px solid gray;
			}
			.middle{
				width:1080px;
				height:719px;
				margin: 0 auto;
			}
			.stern{
				border: 1px solid red;
				width:1080px;
				height:41px;
				margin: 0 auto;
				border-top:3px solid #ff5482;
				background: #555;
				padding: 10px 0;
				
			}
			.left_advert{
				width:500px;
				height:354px;
				float: left;
				margin-top: 111.5px;
			}
			.right_input{
				border: 1px solid gray;
				width:400px;
				height:496px;
				float: right;
				margin-top: 111.5px;
				border-top:3px solid red;
			}
			.logo{
				display: block;
				position: relative;
				margin-top: 30px;
			}
			.head_right{
				float: right;
				margin-top:-50px;
			}
			.head_right>a{
				position: relative;
				top:-12px;
				font-family: “黑体”;
			}
			
				
			p{
				text-align: center;
				line-height:10px;
			}
			p>a{
				text-decoration: none;
				color: #ddd;
				margin: 0 5px;
				font-size: 10px;
				
			}
			.zchead{
				width:320px;
				height:90px;
				margin-left: 40px;
			}
			.left{
				float: left;
				line-height:45px;
			}
			.right{
				float: right;
				line-height:90px;
			}
			.right>a{
				color: red;
				text-decoration: none;	
			}
			.lebel-1,.lebel-2,.lebel-5{
				width:320px;
				height:30px;
				border: 1px solid #999;
				line-height:30px;
			}
			.lebel-3{
				width:320px;
				height:30px;
				line-height:30px;
			}
			.lebel-1,.lebel-3,.lebel-5{
				margin: 18px 40px;
			}
			.lebel-2{
				margin-left: 40px;
				font-size: 15px;
				text-align: center;	
			}
			.tel{
				float: left;
			}
			.lebel-4{
				border: 1px solid red;
				width:80px;
				height:30px;
				float: right;
				font-size: 14px;
				color: red;
				line-height:30px;	
			}
			.lebel-4>p{
				margin-top: 10px;
				text-align: center;
			}
			.lebel-4:hover{
				background-color: #FF4965;
				color:white;
			}
			.duanxin1{
				border: 1px solid #999;
				width:217px;
				height:30px;
				float: left;
			}
			.zhuceng{
				width:320px;
				height:30px;
				line-height:30px;
				margin: 0 auto;
            	display: inline-block;
			}
			input[type="submit"]{
            border: none; 
            padding: 3px 26px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 20px;
            margin: 4px 2px;
            cursor: pointer;
            border-radius: 4px;
            width:320px;
            height:30px;
           	margin-left:40px;
           	background: #FF4965;
            }
            input[type="tel"]{
	            boder:none;
	            display: inline-block;
	            border-radius: 4px;
	            
            }
			.lebel-6,.lebel-7,.lebel-8{
				
				width:320px;
				height:30px;
				margin: 18px 30px;
				font-size: 12px;
			}
			.lebel-7>p{
				margin-right: 48px;
			}
			.lebel>input{
				margin-left: 22px;
			}
			
			.foot-content{
				background: #fff ;
				padding: 20px 0 40px;
				color: #999;
			}
			.wrapper{
				margin: 0 auto;
				position: relative;
				width:1002px;
				display: block;
			}
			.wrapper>p{
				font-size: 12px;
			}


		
        #box{
            position: relative;
            width: 320px;
            height: 30px;
            margin: 0 auto;
            margin-top: 10px; 
            background-color: #9c9c9c;
            box-shadow: 1px 1px 5px rgba(0,0,0,0.2);
        }
        .bgColor{
            position: absolute;
            left:0;
            top:0;
            width:40px;
            height: 30px;
            background-color: lightblue;
        }
        .txt{
            position: absolute;
            width: 100%;
            height: 30px;
            line-height: 30px;
            font-size: 14px;
            color: #000;
            text-align: center;
        }
        .slider{
            position: absolute;
            left:0;
            top:0;
            width: 50px;
            height: 28px;
            border: 1px solid #ccc;
            background: #fff;
            text-align: center;
            cursor: move;
        }
        .slider>i{
            position: absolute;
            top:50%;
            left:50%;
            transform: translate(-50%,-50%);
        }
        .slider.active>i{
            color:green;
        }
			
		</style>	
	</head>
	<body>
		
		<div class="head">
			<img class="logo" src="/images/图片1.png" style="width=114px;height=60px"/>
			<div class="head_right" >
				<img src="/images/图片2.png"/>
				&nbsp;<a href="" style="text-decoration: none;" title="贝贝正品保证-全部正品,全场包邮,7天无理由退货-贝贝">正品保证</a>&nbsp;&nbsp;
				<img src="/images/图片3.png"/>
				&nbsp;<a href=""  style="text-decoration: none;" title="贝贝正品保证-全部正品,全场包邮,7天无理由退货-贝贝">品牌授权特卖</a>&nbsp;&nbsp;
				<img src="/images/图片5.png"/>
				&nbsp;<a href=""  style="text-decoration: none;" title="贝贝正品保证-全部正品,全场包邮,7天无理由退货-贝贝">全场包邮</a>&nbsp;&nbsp;
			</div>
			
		</div>
		<div class="middle">
			<div  class="left_advert">
				<img src="/images/图片6.png" style="width:500px;height:354px;"/>
			</div>
			<div  class="right_input">
				<div class="zchead">
					<h4 class="left">新用户</h4>
					<span class="right">
						<span>已有账号?</span>
						<a href="denglu.html">直接登录</a>
					</span>
				</div>
				<form name="tijiao" style="position:relative;">
					<div id = "hint" style="position:absolute;height:20px;width:300px;top:-35px;right:48px;">
					
					</div>
					<div class="lebel-1">
						<img src="/images/01.png" style="width:22px;height:22px;position:absolute;right:332px;top:5px;"/>
						<input class="tel" name="username" placeholder="您的手机号" autocomplete="off" tabindex="1" onblur="check()"
						style="width:290px;height:27px;margin-left: 30px;border: none;outline: none;">	
						</input>
					
					</div>
					<div class="lebel-2" id="box" onselectstart="return false;">
        				<div class="bgColor"></div>
        				<div class="txt" >请按住滑块,拖到最右边</div>
        				<!--给i标签添加上相应字体图标的类名即可-->
        				<div class="slider"><i class="iconfont icon-double-right"> >> </i></div>
    				</div> 
					<div class="lebel-3">
						<div class="duanxin1">
						<img src="/images/02.png" style="width:22px;height:22px;position:absolute;
						right:332px;top:106px"/><span></span>
						<input class="messagecode" name="messagecode" placeholder="短信校验码"  value="${messageage }" tabindex="3" autocomplete="off" style="width:180px;height:25px;margin-left: 29px;border: none;outline: none;"/></input>
						</div>
						<div class="lebel-4">
							<p>获取校验码</p>
						</div>
					</div>
					<div class="lebel-5">
						<img src="/images/03.png" style="width:22px;height:22px;"/>
						<input class="pwd" type="password" maxlength="16" placeholder="密码，6-16位字母、数字或符号" name="password" value="${password }" tabindex="4" autocomplete="off" style="width:292px;height:24px;border:none;outline: none;" >	
						</input>
					</div>
					<div class="zhuceng">
						<input id="i111" type="button" value="注  册">
					</div>
					<div  class="lebel-6">
						为保障账户安全,建议面为6-16位字符,可包含数字、字母和特殊字符。
					</div>
					<div  class="lebel-7">
						<p>注册即接受<a href="http://www.beibei.com/support/user/agreement.html" style="color: red;">《贝贝使用协议》</a><a href="http://www.beibei.com/support/user/community.html" style="color: red;">《社区使用协议》</a>
						</p>
					</div>
					<div  class="lebel-8">
						<label>
							<span >快捷登录方式：</span>
               				<a class="qq" href="http://login.beibei.com/openid/qq/index.html" title="QQ账号登录"><img src="/images/041.png" style="width:25px;height:24px"/></a>
                			<a class="wx" href="http://login.beibei.com/openid/weixin/index.html" title="微信账号登录"><img src="/images/051.png" style="width:25px;height:24px"/></a>
						</label>
					</div>
				</form>
        	</div>
		</div>
			
		<div class="stern">
			<p><a href="">首页</a>&nbsp;&nbsp;<span>|</span>&nbsp;&nbsp;<a href="">关于贝贝</a>&nbsp;&nbsp;<span>|</span>&nbsp;&nbsp;<a href="">商家入驻</a>&nbsp;&nbsp;<span>|</span>&nbsp;&nbsp;<a href="">正品保证</a>&nbsp;&nbsp;<span>|</span>&nbsp;&nbsp;<a href="">人才招聘</a>&nbsp;&nbsp;<span>|</span>&nbsp;&nbsp;<a href="">联系我们</a>&nbsp;&nbsp;<span>|</span>&nbsp;&nbsp;<a href="">帮助中心</a>&nbsp;&nbsp;<span>|</span>&nbsp;&nbsp;<a href="">友情连接</a>&nbsp;&nbsp;<span>|</span>&nbsp;&nbsp;<a href="">手机客户端</a>&nbsp;&nbsp;<span>|</span>&nbsp;&nbsp;<a href="">客服在线</a>&nbsp;&nbsp;<span>|</span>&nbsp;&nbsp;<a href="">贝贝公益</a></p>
			
		</div>
		<div class="footer-content">
        	<div class="wrapper">
            <p>浙ICP备12005806号 |
                食品流通许可证：SP3301041510054925 |
                出版物经营许可证：新出发零字第00086号</p>
            <p class="mt-8">© 2014-2017 <a style="color: #999" href="http://www.husor.com/" target="_blank"			>贝贝集团 </a>All Rights Reserved. 客服热线：10107788</p>
            </div>
    	</div>

    	
    	<script>
        //一、定义了一个获取元素的方法
        function getEle(selector){
            return document.querySelector(selector);
        }
        //二、获取到需要用到的DOM元素
        var box = getEle("#box"),//容器
            bgColor = getEle(".bgColor"),//背景色
            txt = getEle(".txt"),//文本
            slider = getEle(".slider"),//滑块
            icon = getEle(".slider>i"),
            successMoveDistance = box.offsetWidth- slider.offsetWidth,//解锁需要滑动的距离
            downX,//用于存放鼠标按下时的位置
            isSuccess = false;//是否解锁成功的标志，默认不成功

        //三、给滑块添加鼠标按下事件
        slider.onmousedown = mousedownHandler;

        //3.1鼠标按下事件的方法实现
        function mousedownHandler(e){
            bgColor.style.transition = "";
            slider.style.transition = "";
            var e = e || window.event || e.which;
            downX = e.clientX;
            //在鼠标按下时，分别给鼠标添加移动和松开事件
            document.onmousemove = mousemoveHandler;
            document.onmouseup = mouseupHandler;
        };

        //四、定义一个获取鼠标当前需要移动多少距离的方法
        function getOffsetX(offset,min,max){
            if(offset < min){
                offset = min;
            }else if(offset > max){
                offset = max;
            }
            return offset;
        }

        //3.1.1鼠标移动事件的方法实现
        function mousemoveHandler(e){
            var e = e || window.event || e.which;
            var moveX = e.clientX;
            var offsetX = getOffsetX(moveX - downX,0,successMoveDistance);
            bgColor.style.width = offsetX + "px";
            slider.style.left = offsetX + "px";

            if(offsetX == successMoveDistance){
                success();
            }
            //如果不设置滑块滑动时会出现问题（目前还不知道为什么）
            e.preventDefault();
        };

        //3.1.2鼠标松开事件的方法实现
        function mouseupHandler(e){
            if(!isSuccess){
                bgColor.style.width = 0 + "px";
                slider.style.left = 0 + "px";
                bgColor.style.transition = "width 0.8s linear";
                slider.style.transition = "left 0.8s linear";
            }
            document.onmousemove = null;
            document.onmouseup = null;
        };

        //五、定义一个滑块验证成功的方法
        function success(){
            isSuccess = true;
            txt.innerHTML = "验证成功";
            bgColor.style.backgroundColor ="lightgreen";
            slider.className = "slider active";
            icon.className = "iconfont icon-xuanzhong";
            //滑动成功时，移除鼠标按下事件和鼠标移动事件
            slider.onmousedown = null;
            document.onmousemove = null;
        };
    </script>
    <script type="text/javascript" src="js/jquery-1.4.2.js"></script>
    <script type="text/javascript">
    	function check(){
    		var tel = $(".tel").val().trim();
    		if(tel == ""){
    			$("#hint").html("Username couldn't be null");
    			return;
    		}
    		var url = "/sso/userExist";
    		$("#hint").load(url,{"username":tel});
    	}
    	$(function(){
			$("#i111").click(function(){
				var str = $("#hint").html();
				var pwd = $(".pwd").val();
				if(str != "请输入密码" || pwd == null || pwd == ""){
					return;
				}
				$.get("sso/zhuce",{"username":$(".tel").val(),"password":pwd},function(data){
					if(data.status == 200){
						$("#hint").html("注册成功, 请<a href='denglu' style='color:red;'>登录</a>")
					}
				});
			});
        })
    </script>
	</body>
</html>









