<%--<%--%>
<%--String identify =(String)session.getValue("name");--%>
<%--String userid =(String)session.getValue("userid");--%>
<%--String role = (String)session.getValue("role");--%>

<%--if(identify==null||identify.equals("")&&!"普通用户".equals(role))--%>
<%--	response.sendRedirect("login.jsp");--%>
<%--%>--%>
<%@ page language="java" import="java.util.*"
	import="com.cqut.li.eplay_ssm.entity.User"
	import="com.cqut.li.eplay_ssm.entity.Group"
	import="com.cqut.li.eplay_ssm.entity.Sport"
 pageEncoding="UTF-8"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>通用课程网站系统</title>
   
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="css/H-ui.min.css" />
	<link rel="stylesheet" type="text/css" href="css/H-ui.admin.css" />
	<link rel="stylesheet" type="text/css" href="css/1.0.8/iconfont.css" />
  </head>
  
  <body>
   <header class="navbar-wrapper">
	<div class="navbar navbar-fixed-top">
		<div class="container-fluid cl"> <a class="logo navbar-logo f-l mr-10 hidden-xs" >E-玩吧管理平台</a>
		
		<nav id="Hui-userbar" class="nav navbar-nav navbar-userbar hidden-xs">
			<ul class="cl">
				<li class="dropDown dropDown_hover">
					<a href="#" class="dropDown_A">管理员<i class="Hui-iconfont"></i></a>
					<ul class="dropDown-menu menu radius box-shadow">
						<li><a href="login.jsp">退出</a></li>
				</ul>
			</li>
			</ul>
		</nav>
	</div>
</div>
</header>
<aside class="Hui-aside">
	<div class="menu_dropdown bk_2">
		<dl id="menu-article">
			<dt><i class="Hui-iconfont"></i> 用户管理<i class="Hui-iconfont menu_dropdown-arrow"></i></dt>
			<dd>	
				<ul>
					<li><a data-href="<%=path%>/user/getUsers?page=1" data-title="用户列表" >用户列表</a></li>
			</ul>
		</dd>
	</dl>
		<dl id="menu-picture">
			<dt><i class="Hui-iconfont"></i> 队伍管理<i class="Hui-iconfont menu_dropdown-arrow"></i></dt>
			<dd>
				<ul>
					<li><a data-href="<%=path%>/group/getGroups?page=1" data-title="队伍列表" >队伍列表</a></li>
			</ul>
		</dd>
	</dl>
		<dl id="menu-product">
			<dt><i class="Hui-iconfont"></i> 运动管理<i class="Hui-iconfont menu_dropdown-arrow"></i></dt>
			<dd>
			<ul>
				<li><a data-href="<%=path%>/sport/getSports?page=1" data-title="运动列表"  >运动列表</a></li>
			</ul>
		</dd>
	</dl>

		
</div>
</aside>
<div class="dislpayArrow hidden-xs"><a class="pngfix" href="javascript:void(0);" onClick="displaynavbar(this)"></a></div>
<section class="Hui-article-box">
	<div id="Hui-tabNav" class="Hui-tabNav hidden-xs">
		<div class="Hui-tabNav-wp">
			<ul id="min_title_list" class="acrossTab cl">
				<li class="active">
					<span title="用户管理" >用户管理</span>
					</li>
		</ul>
	</div>
		<div class="Hui-tabNav-more btn-group"><a id="js-tabNav-prev" class="btn radius btn-default size-S" href="javascript:;"><i class="Hui-iconfont">&#xe6d4;</i></a><a id="js-tabNav-next" class="btn radius btn-default size-S" href="javascript:;"><i class="Hui-iconfont">&#xe6d7;</i></a></div>
</div>
	<div id="iframe_box" class="Hui-article">
		<div class="show_iframe">
			<div style="display:none" class="loading"></div>
			<iframe scrolling="yes" frameborder="0" src="<%=path%>/user/getUsers?page=1"></iframe>
	</div>
</div>
</section>
  </body>
  
 
<script type="text/javascript" src="js/jquery.min.js"></script> 
<script type="text/javascript" src="js/H-ui.min.js"></script>
<script type="text/javascript" src="js/H-ui.admin.js"></script> 
<script type="text/javascript" src="js/jquery.contextmenu.r2.js"></script>

</html>
