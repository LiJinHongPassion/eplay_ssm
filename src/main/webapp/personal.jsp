<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<base href="<%=basePath%>">

	<title>selfPage</title>

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
	<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!--//meta tags ends here-->
	<!--booststrap-->
	<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
	<!--//booststrap end-->
	<!-- font-awesome icons -->
	<link href="css/font-awesome.css" rel="stylesheet">
	<!-- //font-awesome icons -->
	<!-- Nav-CSS -->
	<link href="css/nav.css" rel="stylesheet" type="text/css" media="all" />
	<!-- //Nav-CSS -->
	<link rel="stylesheet" href="css/lightbox.css">
	<!--gallery-->
	<script src="js/modernizr.custom.js"></script>
	<!--stylesheets-->
	<link href="css/style2.css" rel='stylesheet' type='text/css' media="all">
	<!--//stylesheets-->

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
						<li><a href="gallery.jsp" class="active">照片墙</a></li>
						<li><a href="contact.jsp">联系我们</a></li>
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

<!-- container -->
<div class="introduce_container">
	<div class="about" id="about">
		<div class="container">
			<div class="col-md-4 about-left ">
				<img src="images/ab2.jpg" class="img-responsive" alt="">
			</div>
			<div class="col-md-7 about-right">
				<div class="about-me">

					<% Map<String, Object> map = (Map<String, Object>) session.getValue("user_msg");
					%>


					<h2>姓名:<%=map.get("user_name") %> </h2>
					<h4>重庆理工大学</h4>
				</div>
				<div class="w3layouts_more-buttn">
					<p>生命不息，运动不止。</p>
				</div>

			</div>
			<div class="clearfix"> </div>
			<div class="my-ser-info">
				<div class="col-md-5 my-datas">
					<h3>个人资料</h3>
					<ul class="address">
						<li>
							<ul class="address-text ">
								<li><b>姓名 </b></li>
								<li>:<%=map.get("user_name") %></li>
							</ul>
						</li>
						<li>
							<ul class="address-text ">
								<li><b>出生年月 </b></li>
								<li>:<%=map.get("birthday") %></li>
							</ul>
						</li>
						<li>
							<ul class="address-text">
								<li><b>电话 </b></li>
								<li>:+134 3608 3658</li>
							</ul>
						</li>
						<li>
							<ul class="address-text">
								<li><b>地址 </b></li>
								<li>:<%=map.get("address") %></li>
							</ul>
						</li>
						<li>
							<ul class="address-text">
								<li><b>邮箱 </b></li>
								<li>:<%=map.get("email") %></li>
							</ul>
						</li>

					</ul>
				</div>
				<div class="col-md-7 aboutmy-services">

					<div class="col-md-6 col-sm-6 col-xs-6 about-ser-grid">
						<div class="about-gap">
							<h3>打篮球<p>[组队中]</p></h3>
							<ul class="address-text">
								<li><b>截止时间</b></li>
								<li>2019-4-20 15:20</li>
							</ul>

							<ul class="address-text">
								<li><b>要求人数</b></li>
								<li>6</li>
								<li><b>篮球场地</b></li>
								<li>理工大学后门篮球场</li>
							</ul>
							<a href="#" class="there-more">
								查看
							</a>

						</div>
						<div class="clearfix"> </div>
					</div>

				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="clearfix"> </div>

		</div>
	</div>
	<!-- about end -->
	<div class="experience" id="experience">
		<div class="container">
			<div class="experience-info">
				<div class="col-md-7 exp-matter">
					<div class="exp-left">
						<h6>2018</h6>
						<h5>打篮球</h5>
						<p>重庆理工大学后门篮球场</p>
					</div>
					<div class="exp-left back-shadow clr-green">
						<h6>2019</h6>
						<h5>跑步</h5>
						<p>重庆理工大学足球操场</p>
					</div>

					<div class="exp-left">
						<h6>2018</h6>
						<h5>游泳</h5>
						<p>重庆理工大学体育馆</p>
					</div>
					<div class="exp-left back-shadow clr-green">
						<h6>2019</h6>
						<h5>打篮球</h5>
						<p>重庆理工大学后门篮球场</p>

					</div>
				</div>
				<div class="col-md-5 exp-info-right">
					<h4>历史组队</h4>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!-- experience -->
</div>
<!-- container-end -->


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
