<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>注册</title>
<!-- ajax -->
<script type="text/javascript" src="js/ajax.js"></script>
<!-- Meta tag Keywords -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Career Multi Forms Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements" />
<script type="text/javascript"> 
	function show(){
		document.getElementById("D_BOX").style.display="";
	}
	function hide(){
		document.getElementById("D_BOX").style.display="none";//隐藏
	}
</script>
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Meta tag Keywords -->
<!-- css files -->
<link rel="stylesheet" href="css/style.css" type="text/css" media="all" /> <!-- Style-CSS --> 
<link rel="stylesheet" href="css/font-awesome.css"> <!-- Font-Awesome-Icons-CSS -->
<!-- //css files -->
<link href="//fonts.googleapis.com/css?family=Montserrat:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&amp;subset=latin-ext,vietnamese" rel="stylesheet">
<!-- js -->
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<!-- //js -->
</head>
<body>
<script src="js/jquery.vide.min.js"></script>
<!-- main -->
<%String contextPath=request.getContextPath();%>
<div data-vide-bg="video/Ipad">
	<div class="center-container">
		<div class="w3ls-header">
			<div class="header-main">	
			
			<div class="videoregister">
					<div class="header-bottom">
						<div class="header-right w3agile">
							<div class="header-left-bottom agileinfo">
								<form action="RegisterServlet" method="post">
									<div class="icon1">
										<i class="fa fa-user-o" aria-hidden="true"></i>
										<input  type="text" name="count" placeholder="用户名"/>
									</div>
									<div class="icon1">
										<i class="fa fa-envelope-o" aria-hidden="true"></i>
										<input type="email" name="email" placeholder="邮箱"/>
									</div>
									<div class="icon1">
										<i class="fa fa-phone" aria-hidden="true" ></i>	
										<input type="tel" name="phone" placeholder="手机号"/>
									</div>
									<div class="icon1">
										<i class="fa fa-unlock-alt" aria-hidden="true"></i>
										<input type="password" name="password1" placeholder="密码"/>
									</div>
									<div class="icon1">
										<i class="fa fa-unlock-alt" aria-hidden="true"></i>
										<input type="password" name="password2" placeholder="用户名"/>
									</div>
									<div class="icon1" title="选择身份">
       									<span><input name="level" type="RADIO" value="0" onclick="show()"/>管理员 </span>
            							<span><input name="level" type="RADIO" value="1" onclick="hide()" checked/>普通用户</span>
									</div>
									<div class="icon1" id="D_BOX" style="display: none;" >
										<i class="fa fa-unlock-alt" aria-hidden="true"></i>
       									<input name="code" type="password" placeholder="权限码"/>
            							
									</div>
									<div class="bottom">
										<input type="submit" value="Register" />
									</div>
									<a href="<%=contextPath%>/Login.jsp">Login</a>
									<a href="<%=contextPath%>/Index.jsp">HomePage</a>
								</form>	
							</div>
						</div>
					</div>
				</div>
				<div class="clear"></div>
			</div>
			<!-- copyright start here -->
			<div class="copyright">
				<p>© 2017 Career Multi Forms. All rights reserved | Design by  <a href="http://w3layouts.com/" target="_blank">  W3layouts </a></p>
			</div>
		</div>
	<!--header end here-->
	</div>
</div>
</body>

</html>