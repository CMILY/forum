<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title>Knowledge Base Theme</title>
	<link rel="shortcut icon" href="../images/favicon.png" />
	<!-- Style Sheet-->
	<link rel='stylesheet' id='bootstrap-css-css'  href='../css/bootstrap5152.css?ver=1.0' type='text/css' media='all' />
	<link rel='stylesheet' id='responsive-css-css'  href='../css/responsive5152.css?ver=1.0' type='text/css' media='all' />
	<link rel='stylesheet' id='pretty-photo-css-css'  href='../js/prettyphoto/prettyPhotoaeb9.css?ver=3.1.4' type='text/css' media='all' />
	<link rel='stylesheet' id='main-css-css'  href='../css/main5152.css?ver=1.0' type='text/css' media='all' />
	<link rel='stylesheet' id='custom-css-css'  href='../css/custom5152.html?ver=1.0' type='text/css' media='all' />
</head>
<body>
	<%
	String contextPath=request.getContextPath();
	String u_id = (String)session.getAttribute("u_id");
	String u_count = (String)session.getAttribute("u_count");
	String u_level = (String)session.getAttribute("u_level");
	%>
	<div class="header-wrapper">
	   <header>
	     <div class="container">
	       <div class="logo-container">
	                <!-- Website Logo -->
	                <a href="<%=contextPath%>/Index.jsp"  title="分享·知道·生活">
	               			 <img src="<%=contextPath%>/images/logo.png" alt="分享·知道·生活">
	                </a>
	                <span class="tag-line">分享·知道·生活</span>
	       </div>
           <!-- Start of Main Navigation -->
           <nav class="main-nav">
                   <div class="menu-top-menu-container">
                           <ul id="menu-top-menu" class="clearfix">
                                 <li><a href="<%=contextPath%>/Index.jsp" target="_blank">首页</a></li>
               				 	 <li><a href="<%=contextPath%>/filter_Page/PersonalCenter.jsp" target="_blank"><%=u_count%></a>
                               	 <ul class="sub-menu">
                                        <li><a href="<%=contextPath%>/filter_Page/PersonalCenter.jsp">个人中心</a></li>
                                       	<li><a href="<%=contextPath%>/Login.jsp" target="_top">切换账号</a></li>
                               	 </ul>
                       		  	 </li>
                       		  	 <li><a href="<%=contextPath%>/QuitServlet" target="_top">退出登录</a></li>
                                 <li><a href="">联系我们</a></li>
                           </ul>
                   </div>
           </nav>
           <!-- End of Main Navigation -->
	     </div>
	   </header>
    </div>
    <!-- End of Header -->
    <!-- Start of Search Wrapper -->
    <div class="search-area-wrapper">
            <div class="search-area container">
            		 <h3 class="search-header">圈子·故事？</h3>
                    <p class="search-tag-line">找一份归属，分享美好。快来发现你的兴趣圈！</p>
                    <form id="search-form" class="search-form clearfix" method="get" action="#" autocomplete="off">
                            <input class="search-term required" type="text" id="s" name="s" placeholder="输入圈子名称..." title="* 输入关键词!" />
                            <input class="search-btn" type="submit" value="搜索圈子" />
                            <div id="search-error-container"></div>
                    </form>
            </div>
    </div>

     <!-- script -->
    <script type='text/javascript' src='../js/jquery-1.8.3.min.js'></script>
    <script type='text/javascript' src='../js/jquery.easing.1.3.js'></script>
    <script type='text/javascript' src='../js/prettyphoto/jquery.prettyPhoto.js'></script>
    <script type='text/javascript' src='../js/jflickrfeed.js'></script>
	<script type='text/javascript' src='../js/jquery.liveSearch.js'></script>
    <script type='text/javascript' src='../js/jquery.form.js'></script>
    <script type='text/javascript' src='../js/jquery.validate.min.js'></script>
    <script type='text/javascript' src='../js/custom.js'></script>
   
</body>
</html>