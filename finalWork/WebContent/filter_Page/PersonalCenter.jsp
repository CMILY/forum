<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title>个人中心</title>
	<link rel="shortcut icon" href="../images/favicon.png" />
	<!-- Style Sheet-->
	<style type="text/css">
       *{margin:0; padding:0; font-size:0;}
       div{
       	width:100%;
       	float:left;
       }
       iframe{
       	width:100%;
       	height:100%;
       }
       .head_Div{
       	width:100%;
       	height:342px;
       }
       .main_Div{
       	width:68%;
       	height:890px;
       	margin:auto;
       	float:none;
       }
	       .navigation_Div{
	       	width:20%;
	       	height:100%;
	       }
	       .content_Div{
	       	width:80%;
	       	height:100%;
	       }
       .bottom_Div{
       	width:100%;
       	height:445px;
       }
   </style>
</head>
<body>
<%
	String contextPath=request.getContextPath();
	String u_id = (String)session.getAttribute("u_id");
	String u_count = (String)session.getAttribute("u_count");
	String u_level = (String)session.getAttribute("u_level");
%>
	<div class="head_Div">
		<iframe class="head_Frame" src="HeadFrame.jsp" scrolling="no" frameborder="0"></iframe>
	</div>
	<div>
		<div class="main_Div">
			<div class="navigation_Div">
				<iframe   src="NavigationFrame.jsp"  frameborder="0"></iframe>
			</div>
			<div class="content_Div" >
				<iframe  name="contentFrame" src="ContentFrame.jsp"  frameborder="0"></iframe>
			</div>
		</div>
	<div>
	<div class="bottom_Div">
		<iframe class="bottom_Frame" src="BottomFrame.jsp" scrolling="no" frameborder="0"></iframe>
	</div>
	
</body>
</html>