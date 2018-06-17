<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- META TAGS -->
	<title>圈子</title>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	
	<link rel="shortcut icon" href="images/favicon.png" />
	<!-- Style Sheet-->
	<link rel='stylesheet' id='bootstrap-css-css'  href='css/bootstrap5152.css?ver=1.0' type='text/css' media='all' />
	<link rel='stylesheet' id='responsive-css-css'  href='css/responsive5152.css?ver=1.0' type='text/css' media='all' />
	<link rel='stylesheet' id='pretty-photo-css-css'  href='js/prettyphoto/prettyPhotoaeb9.css?ver=3.1.4' type='text/css' media='all' />
	<link rel='stylesheet' id='main-css-css'  href='css/main5152.css?ver=1.0' type='text/css' media='all' />
	<link rel='stylesheet' id='custom-css-css'  href='css/custom5152.html?ver=1.0' type='text/css' media='all' />
</head>
<body>
	<!-- Start of Header -->
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
	               			 <img src="images/logo.png" alt="分享·知道·生活">
	                </a>
	                <span class="tag-line">分享·知道·生活</span>
	       </div>
           <!-- Start of Main Navigation -->
           <nav class="main-nav">
                   <div class="menu-top-menu-container">
                           <ul id="menu-top-menu" class="clearfix">
                                   <li><a href="<%=contextPath%>/Index.jsp">首页</a></li>
                            		<%
                            			if(u_id==null){
                            		%>
                                   		<li><a href="<%=contextPath%>/Login.jsp" target="_blank">登录</a></li>
                                   		<li><a href="<%=contextPath%>/Register.jsp" target="_blank">注册</a></li>
                                   <%  }
                            			else{
                            		%>
                          				 	 <li><a href="<%=contextPath%>/filter_Page/PersonalCenter.jsp" target="_blank"><%=u_count%></a>
                                          	 <ul class="sub-menu">
                                                   <li><a href="<%=contextPath%>/filter_Page/PersonalCenter.jsp" target="_blank">个人中心</a></li>
                                                  	<li><a href="<%=contextPath%>/Login.jsp">切换账号</a></li>
                                          	 </ul>
                                  		  	 </li>
                                  		  	 <li><a href="<%=contextPath%>/QuitServlet">退出登录</a></li>
                            		<%	}%>
                                 
                                   <li><a href="">联系我们</a></li>
                           </ul>
                   </div>
           </nav>
           <!-- End of Main Navigation -->
	     </div>
	   </header>
	   <!-- End of Header -->
    </div>
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
    <!-- End of Search Wrapper -->
    <!-- Start of Page Container -->
    <div class="page-container">
        	<div class="container">
        		<div class="row"> 
        			<!-- start of page content -->
        			<div class="span8 page-content">
                           <!-- Basic Home Page Template -->
                           <div class="row separator">
                               <section class="span4 articles-list">
                                  <h3>热点文章</h3>
                                  <ul class="articles">
                                      <li class="article-entry standard">
                                              <h4><a href="single.html">Integrating WordPress with Your Website</a></h4>
                                              <span class="article-meta">25 Feb, 2013 in <a href="#" title="View all posts in Server &amp; Database">Server &amp; Database</a></span>
                                              <span class="like-count">66</span>
                                      </li>
                                      <li class="article-entry standard">
                                              <h4><a href="single.html">WordPress Site Maintenance</a></h4>
                                              <span class="article-meta">24 Feb, 2013 in <a href="#" title="View all posts in Website Dev">Website Dev</a></span>
                                              <span class="like-count">15</span>
                                      </li>
                                      <li class="article-entry video">
                                              <h4><a href="single.html">Meta Tags in WordPress</a></h4>
                                              <span class="article-meta">23 Feb, 2013 in <a href="#" title="View all posts in Website Dev">Website Dev</a></span>
                                              <span class="like-count">8</span>
                                      </li>
                                      <li class="article-entry image">
                                              <h4><a href="single.html">WordPress in Your Language</a></h4>
                                              <span class="article-meta">22 Feb, 2013 in <a href="#" title="View all posts in Advanced Techniques">Advanced Techniques</a></span>
                                              <span class="like-count">6</span>
                                      </li>
                                      <li class="article-entry standard">
                                              <h4><a href="single.html">Know Your Sources</a></h4>
                                              <span class="article-meta">22 Feb, 2013 in <a href="#" title="View all posts in Website Dev">Website Dev</a></span>
                                              <span class="like-count">2</span>
                                      </li>
                                      <li class="article-entry standard">
                                              <h4><a href="single.html">Validating a Website</a></h4>
                                              <span class="article-meta">21 Feb, 2013 in <a href="#" title="View all posts in Website Dev">Website Dev</a></span>
                                              <span class="like-count">3</span>
                                      </li>
                                  </ul>
                          </section>
                          <section class="span4 articles-list">
                                  <h3>近期发表</h3>
                                  <ul class="articles">
                                          <li class="article-entry standard">
                                                  <h4><a href="single.html">Integrating WordPress with Your Website</a></h4>
                                                  <span class="article-meta">25 Feb, 2013 in <a href="#" title="View all posts in Server &amp; Database">Server &amp; Database</a></span>
                                                  <span class="like-count">66</span>
                                          </li>
                                          <li class="article-entry standard">
                                                  <h4><a href="single.html">Using Javascript</a></h4>
                                                  <span class="article-meta">25 Feb, 2013 in <a href="#" title="View all posts in Advanced Techniques">Advanced Techniques</a></span>
                                                  <span class="like-count">18</span>
                                          </li>
                                          <li class="article-entry image">
                                                  <h4><a href="single.html">Using Images</a></h4>
                                                  <span class="article-meta">25 Feb, 2013 in <a href="#" title="View all posts in Designing in WordPress">Designing in WordPress</a></span>
                                                  <span class="like-count">7</span>
                                          </li>
                                          <li class="article-entry video">
                                                  <h4><a href="single.html">Using Video</a></h4>
                                                  <span class="article-meta">24 Feb, 2013 in <a href="#" title="View all posts in WordPress Plugins">WordPress Plugins</a></span>
                                                  <span class="like-count">7</span>
                                          </li>
                                          <li class="article-entry standard">
                                                  <h4><a href="single.html">WordPress Site Maintenance</a></h4>
                                                  <span class="article-meta">24 Feb, 2013 in <a href="#" title="View all posts in Website Dev">Website Dev</a></span>
                                                  <span class="like-count">15</span>
                                          </li>
                                          <li class="article-entry standard">
                                                  <h4><a href="single.html">WordPress CSS Information and Techniques</a></h4>
                                                  <span class="article-meta">24 Feb, 2013 in <a href="#" title="View all posts in Theme Development">Theme Development</a></span>
                                                  <span class="like-count">1</span>
                                          </li>
                                  </ul>
                          </section>
                  </div>
	          </div> 
	          <!-- end of page content -->
	          <!-- start of sidebar -->
	          <aside class="span4 page-sidebar">
	          		<section class="widget">
	                          <h3 class="title">标签</h3>
	                          <div class="tagcloud">
	                                  <a href="#" class="btn btn-mini">basic</a>
	                          </div>
	                  </section>
	          		<section class="widget">
	                          <div class="quick-links-widget">
	                                  <h3 class="title">链接</h3>
	                                  <ul id="menu-quick-links" class="menu clearfix">
	                                          <li><a href="#">首页</a></li>
	                                          <li><a href="#">文章列表</a></li>
	                                          <li><a href="#">FAQs</a></li>
	                                          <li><a href="#">联系我们</a></li>
	                                  </ul>
	                          </div>
	                  </section>
	
	                  
	                   <section class="widget">
	                          <div class="support-widget">
	                                  <h3 class="title">问题反馈</h3>
	                                  <p class="intro"> 使用过程中发现问题，获取更多帮助，向我们反馈，获取精美礼品</p>
	                          </div>
	                  </section>
	          </aside>
	          <!-- end of sidebar -->
  			</div>
 		</div>
  	</div>
    <!-- End of Page Container -->
    <!-- Start of Footer -->
    <footer id="footer-wrapper">
            <div id="footer" class="container">
                    <div class="row">
                            <div class="span3">
                                    <section class="widget">
                                            <h3 class="title">How it works</h3>
                                            <div class="textwidget">
                                                    <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. </p>
                                                    <p>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. </p>
                                            </div>
                                    </section>
                            </div>

                            <div class="span3">
                                    <section class="widget"><h3 class="title">Categories</h3>
                                            <ul>
                                                    <li><a href="#" title="Lorem ipsum dolor sit amet,">Advanced Techniques</a> </li>
                                                    <li><a href="#" title="Lorem ipsum dolor sit amet,">Designing in WordPress</a></li>
                                                    <li><a href="#" title="Lorem ipsum dolor sit amet,">Server &amp; Database</a></li>
                                                    <li><a href="#" title="Lorem ipsum dolor sit amet, ">Theme Development</a></li>
                                                    <li><a href="#" title="Lorem ipsum dolor sit amet,">Website Dev</a></li>
                                                    <li><a href="#" title="Lorem ipsum dolor sit amet,">WordPress for Beginners</a></li>
                                                    <li><a href="#" title="Lorem ipsum dolor sit amet, ">WordPress Plugins</a></li>
                                            </ul>
                                    </section>
                            </div>

                            <div class="span3">
                                    <section class="widget">
                                            <h3 class="title">Latest Tweets</h3>
                                            <div id="twitter_update_list">
                                                    <ul>
                                                            <li>No Tweets loaded !</li>
                                                    </ul>
                                            </div>
                                           
                                    </section>
                            </div>

                            <div class="span3">
                                    <section class="widget">
                                            <h3 class="title">Flickr Photos</h3>
                                            <div class="flickr-photos" id="basicuse">
                                            </div>
                                    </section>
                            </div>

                    </div>
            </div>
            <!-- end of #footer -->

            <!-- Footer Bottom -->
            <div id="footer-bottom-wrapper">
                    <div id="footer-bottom" class="container">
                            <div class="row">
                                    <div class="span6">
                                            <p class="copyright">
                                                    Copyright © 2013. All Rights Reserved by KnowledgeBase.Collect from 
                                            </p>
                                    </div>
                                    <div class="span6">
                                            <!-- Social Navigation -->
                                            <ul class="social-nav clearfix">
                                                    <li class="linkedin"><a target="_blank" href="#"></a></li>
                                                    <li class="stumble"><a target="_blank" href="#"></a></li>
                                                    <li class="google"><a target="_blank" href="#"></a></li>
                                                    <li class="deviantart"><a target="_blank" href="#"></a></li>
                                                    <li class="flickr"><a target="_blank" href="#"></a></li>
                                                    <li class="skype"><a target="_blank" href="skype:#?call"></a></li>
                                                    <li class="rss"><a target="_blank" href="#"></a></li>
                                                    <li class="twitter"><a target="_blank" href="#"></a></li>
                                                    <li class="facebook"><a target="_blank" href="#"></a></li>
                                            </ul>
                                    </div>
                            </div>
                    </div>
            </div>
            <!-- End of Footer Bottom -->

    </footer>
    <!-- End of Footer -->
    <a href="#top" id="scroll-top"></a>

    <!-- script -->
    <script type='text/javascript' src='js/jquery-1.8.3.min.js'></script>
    <script type='text/javascript' src='js/jquery.easing.1.3.js'></script>
    <script type='text/javascript' src='js/prettyphoto/jquery.prettyPhoto.js'></script>
    <script type='text/javascript' src='js/jflickrfeed.js'></script>
	<script type='text/javascript' src='js/jquery.liveSearch.js'></script>
    <script type='text/javascript' src='js/jquery.form.js'></script>
    <script type='text/javascript' src='js/jquery.validate.min.js'></script>
    <script type='text/javascript' src='js/custom.js'></script>
</body>
</html>