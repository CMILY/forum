<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>登录</title>
<!-- Meta tag Keywords -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Career Multi Forms Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements" />
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
				<div class="videologin">
				<div class="top-login first">
					<div class="border">
						<span><i class="fa fa-user-circle-o" aria-hidden="true"></i></span>
					</div>
				</div>
				<h2>Login Form</h2>
					<div class="header-bottom">
						<div class="header-right w3agile">
							<div class="header-left-bottom agileinfo">
								<form action="<%=contextPath%>/LoginServlet" method="post">
									<div class="icon1">
										<i class="fa fa-user-o" aria-hidden="true"></i>
										<input  type="text" name="count" placeholder="用户名"/>
									</div>
									<div class="icon1">
										<i class="fa fa-unlock-alt" aria-hidden="true" ></i>
										<input type="password" name="password" placeholder="密码"/>
									</div>
					
									<a href="<%=contextPath%>/Register.jsp">Register</a>
									<a href="<%=contextPath%>/Index.jsp">HomePage</a>
									
									<div class="bottom">
										<input type="submit" value="Login" />
									</div>
									
							</div>
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
			<!--copyright end here-->
		</div>
	<!--header end here-->
	</div>
</div>
</body>
</html>