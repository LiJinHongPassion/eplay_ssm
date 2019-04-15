<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Gallery</title>
    
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
<style type="text/css">
.col-md-8 {
    width: 66.66666667%;
   
}
.col-md-4 {
    width: 33.33333333%;
    height: 36%;
    }
.galley-1 {
    margin-top: 3em;
}
</style>

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
	<!--gallery-->
	<div class="gallery">
		<div class="container">
			<div class="gallery-top ">
				<h3>照片墙</h3>
			</div>
			<!--script-->
				<div class="gallery-grid">
				<!---->
				<div class="galley-1 animated wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="500ms">
					<div class="col-md-8 galley-2">
						<div class="ih-item square effect15 bottom_to_top">
					<a href="#img1">
						<div class="img"><img src="images/ga.jpg" alt="" class="img-responsive"></div>
						<div class="info">
						  <h3>瑜伽</h3>
						  <p>改善人们生理、心理、情感和精神</p>
						</div></a>
						</div>						
					</div>	
					<div class="col-md-4 galley-3">
						<div class="ih-item square effect15 bottom_to_top height-gallery">
							<a href="#img2">
								<div class="img"><img src="images/ga1.jpg" alt="" class="img-responsive "></div>
								<div class="info">
								  <h3 class="gallery-head">哑铃</h3>
								  <p>长期坚持练习哑铃,可以修饰肌肉线条</p>
								</div></a>
								</div>
							<div class="ih-item square effect15 bottom_to_top height-gallery">
								<a href="#img3">
									<div class="img"><img src="images/ga2.jpg" alt="" class="img-responsive "></div>
									<div class="info">
									  <h3 class="gallery-head">健身球</h3>
									  <p>健身球有很好的损伤恢复和康复功能</p>
									</div></a>
									</div>		
					</div>	
					<div class="clearfix"></div>					
				</div>	
				<!---->
				<div class="galley-1 animated wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="500ms">
						
					<div class="col-md-4 galley-3">
						<div class="ih-item square effect15 bottom_to_top height-gallery">
							<a href="#img4">
								<div class="img"><img src="images/ga3.jpg" alt="" class="img-responsive"></div>
								<div class="info">
								  <h3 class="gallery-head">拳击</h3>
								  <p>增强人体的力量 拳击比赛时要靠人体的爆发力来完成攻防动作</p>
								</div></a>
								</div>
							<div class="ih-item square effect15 bottom_to_top height-gallery">
								<a href="#img5">
									<div class="img"><img src="images/ga4.jpg" alt="" class="img-responsive"></div>
									<div class="info">
									  <h3 class="gallery-head">杠铃</h3>
									  <p>长期坚持练习杠铃,能锻炼上肢肌肉及腰、腹部肌肉</p>
									</div></a>
									</div>		
					</div>	
					<div class="col-md-8 galley-2">
						<div class="ih-item square effect15 bottom_to_top">
					<a href="#img6">
						<div class="img"><img src="images/ga5.jpg" alt="" class="img-responsive"></div>
						<div class="info">
						  <h3>推拉哑铃</h3>
						  <p>更多肌肉纤维来维持稳定,这有助於增加稳定性和协调性</p>
						</div></a>
						</div>						
					</div>
					<div class="clearfix"></div>					
				</div>		

		</div>
	</div>
	</div>

	<!--//gallery-->

<!-- lightbox container hidden with CSS -->
<div class="lightbox" id="img1">
  <div class="box">
	<a class="close" href="#">X</a>
    <p class="title">Lorem ipsum dolor sit amet</p>
    <div class="content">
    	<img src="images/ga.jpg" class="img-responsive" alt="">
        <p class="desc">Lorem ipsum dolor sit amet, consectetur adipiscing elit.Text Modal Window Nullam at volutpat ipsum. Nullam nec posuere ante.</p>
    </div>
    <a class="prev" href="#img3">Previous</a>
    <a class="next" href="#img2">Next</a>
    <div class="clear"></div>
  </div>
</div>    
    
<div class="lightbox" id="img2">
  <div class="box">
	<a class="close" href="#">X</a>
    <p class="title">Lorem ipsum dolor sit amet</p>
    <div class="content">
    	<img src="images/ga1.jpg" class="img-responsive" alt="">
        <p class="desc">Lorem ipsum dolor sit amet, consectetur adipiscing elit.Text Modal Window Nullam at.</p>
    </div>
    <a class="prev" href="#img2">Previous</a>
    <a class="next" href="#img3">Next</a>
    <div class="clear"></div>
  </div>
</div>  

<div class="lightbox" id="img3">
  <div class="box">
	<a class="close" href="#">X</a>
    <p class="title">Lorem ipsum dolor sit amet</p>
    <div class="content">
    	<img src="images/ga2.jpg" class="img-responsive" alt="">
        <p class="desc">Lorem ipsum dolor sit amet, consectetur adipiscing elit.Text Modal Window Nullam at .</p>
    </div>
    <a class="prev" href="#img2">Previous</a>
    <a class="next" href="#img1">Next</a>
    <div class="clear"></div>
  </div>
</div>   
<div class="lightbox" id="img4">
  <div class="box">
	<a class="close" href="#">X</a>
    <p class="title">Lorem ipsum dolor sit amet</p>
    <div class="content">
    	<img src="images/ga3.jpg" class="img-responsive" alt="">
        <p class="desc">Lorem ipsum dolor sit amet, consectetur adipiscing elit.Text Modal Window Nullam at.</p>
    </div>
    <a class="prev" href="#img3">Previous</a>
    <a class="next" href="#img2">Next</a>
    <div class="clear"></div>
  </div>
</div>    
    
<div class="lightbox" id="img5">
  <div class="box">
	<a class="close" href="#">X</a>
    <p class="title">Lorem ipsum dolor sit amet</p>
    <div class="content">
    	<img src="images/ga4.jpg" class="img-responsive" alt="">
        <p class="desc">Lorem ipsum dolor sit amet, consectetur adipiscing elit.Text Modal Window Nullam at .</p>
    </div>
    <a class="prev" href="#img2">Previous</a>
    <a class="next" href="#img3">Next</a>
    <div class="clear"></div>
  </div>
</div>  

<div class="lightbox" id="img6">
  <div class="box">
	<a class="close" href="#">X</a>
    <p class="title">Lorem ipsum dolor sit amet</p>
    <div class="content">
    	<img src="images/ga5.jpg" class="img-responsive" alt="">
        <p class="desc">Lorem ipsum dolor sit amet, consectetur adipiscing elit.Text Modal Window Nullam at volutpat ipsum. Nullam nec posuere ante.</p>
    </div>
    <a class="prev" href="#img2">Previous</a>
    <a class="next" href="#img1">Next</a>
    <div class="clear"></div>
  </div>
</div>   
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
