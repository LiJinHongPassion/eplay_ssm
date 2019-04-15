<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Contact</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link href="css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
<link href="css/style.css" type="text/css" rel="stylesheet" media="all">
<!--Custom-Theme-files-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--//Custom-Theme-files-->
<!--js-->
<script src="js/jquery-1.11.1.min.js"></script>
<!--//js-->

<!--pop-up-box-->
		<script type="text/javascript" src="js/modernizr.custom.53451.js"></script>
		<link href="css/popuo-box.css" rel="stylesheet" type="text/css" media="all"/>
		<script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
		 <script>
						$(document).ready(function() {
						$('.popup-with-zoom-anim').magnificPopup({
							type: 'inline',
							fixedContentPos: false,
							fixedBgPos: true,
							overflowY: 'auto',
							closeBtnInside: true,
							preloader: false,
							midClick: true,
							removalDelay: 300,
							mainClass: 'my-mfp-zoom-in'
						});																
						});
				</script>	
	<!--pop-up-box-->
	<link href="css/ihover.css" type="text/css" rel="stylesheet" media="all">
	<link rel="stylesheet" type="text/css" href="css/style1.css"/>

  </head>
  
  <body>
   <!--banner-->
	<div id="home" class="banner  banner1">
		<div class="container">
			<div class="header-info">
					<div class="logo">
						<h1 class="logo-head"><a href="index.jsp" >E-玩吧</a></h1>
					</div>
				<div class="header-info-right">
						<div class=" top-nav">
				<span class="menu"><img src="images/menu.png" alt=""/></span>
				<ul class="nav1">
					<li><a href="index.jsp" >首页</a></li>
					<li><a href="services.jsp">服务</a></li>
					<li><a href="gallery.jsp">照片墙</a></li>
					<li><a href="contact.jsp" class="active">联系我们</a></li>
				</ul>	
				<!-- script-for-menu -->
				 <script>
				   $( "span.menu" ).click(function() {
					 $( "ul.nav1" ).slideToggle( 300, function() {
					 // Animation complete.
					  });
					 });
				</script>
				<!-- /script-for-menu -->
			</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		
		</div>
	</div>
	<!--/header-banner-->
	<!--script-nav -->	
	<script>
		$("span.menu").click(function(){
			$("ul.navigatoin").slideToggle("300" , function(){
			});
		});
	</script>
	<!--gallery-->
	<div class="contact">
		<div class="container">
			<div class="contact-top ">
				<h3>联系我们</h3>
			</div>
		
		
			<div class="grid-contact ">
				<div class="col-md-6 contact-bottom animated wow fadeInRight" data-wow-duration="1000ms">
					<form>
					<input type="text" value="姓名" onfocus="this.value='';" onblur="if (this.value == '') {this.value = 'your name';}">
					<input type="text" value="邮箱" onfocus="this.value='';" onblur="if (this.value == '') {this.value = 'your email';}">
					<input type="text" value="电话" onfocus="this.value='';" onblur="if (this.value == '') {this.value = 'your phone number';}">
				
				
					<textarea  vaule="" onfocus="this.value='';" onblur="if (this.value == '') {this.value = 'message';}">你要留下的消息 </textarea>
				
			<div class="send">
				<label class="hvr-sweep-to-left">
					<input type="submit" value="提交">
				</label>
			</div>
			</form>
			</div>
			<div class="col-md-6 contact-bottom animated wow fadeInLeft" data-wow-duration="1000ms">
			<div class="address">
					      <h2>地址</h2>
					      <p> 重庆理工大学</p>
						  <p>9园区 </p>
						  <p>电话 : +134 3608 3658</p>
						  <p>Email : <a href="mailto:example@gmail.com">e_play@email.com</a></p>
					 </div>
			</div>
			<div class="clearfix"> </div>
			</div>
		
	</div>	
</div>
<!--<div class="map wow fadeInUp animated" data-wow-delay=".5s">
<iframe src="#"  allowfullscreen></iframe>-->
</div>
<!---->

	</div>
	</div>
	<!--//gallery-->

	<!--letter-starts-->
	<div class="letter">
		<div class="container">
			<div class="letter-top heading3">
				<h3>留下你的Email</h3>
			</div>
			<div class="letter-bottom">
				<div class="col-md-8 letter-left animated wow fadeInRight" data-wow-duration="1000ms">
					<form>
						<input type="text" value="Enter Your Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Enter Your Email';}">
						<input type="submit" value="提交">
					</form>
				</div>
				<div class="col-md-4 letter-right animated wow fadeInLeft" data-wow-duration="1000ms">
					<span class="glyphicon glyphicon-earphone" aria-hidden="true"></span>
					<p>+134 3608 3658</p>
				</div>
				<div class="letter-bottom"></div>
			</div>
		</div>
	</div>
	<!--letter-end-->
	<!--footer-starts-->
	<div class="footer animated wow fadeInDown" data-wow-duration="1000ms">
		<div class="container">
			<div class="footer-top">
				<ul>
					<li><a href="#"><span class="fb"></span></a></li>
					<li><a href="#"><span class="twit"></span></a></li>
					<li><a href="#"><span class="drbl"></span></a></li>
					<li><a href="#"><span class="rss"></span></a></li>
				</ul>
				<p>Copyright &copy; 2018.E-玩吧.</p>
			</div>
		</div>
	</div>
	<!--footer-end-->
	<!-- animated-css -->
		<link href="css/animate.css" rel="stylesheet" type="text/css" media="all">
		<script src="js/wow.min.js"></script>
		<script>
		 new WOW().init();
		</script>
<!-- animated-css -->

  </body>
</html>
