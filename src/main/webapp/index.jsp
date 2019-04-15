<%@ page language="java" import="java.util.*" import="java.util.Map" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<base href="<%=basePath%>">
	<title>E-Play</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<title>Home</title>
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
	<!--start-smoth-scrolling-->
	<script type="text/javascript" src="js/move-top.js"></script>
	<script type="text/javascript" src="js/easing.js"></script>
	<script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event){
				event.preventDefault();
				$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
			});
		});
	</script>
	<!--start-smoth-scrolling-->
	<!--pop-up-box-->
	<script type="text/javascript" src="js/modernizr.custom.53451.js"></script>
	<link href="css/popuo-box.css" rel="stylesheet" type="text/css" media="all"/>
	<link href="css/index.css" rel="stylesheet" type="text/css" media="all"/>
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
</head>

<body>

<!--banner-->
<div id="home" class="banner">
	<div class="login">

		<p><% Map<String, Object> map = (Map<String, Object>) session.getValue("user_msg");
			if( map == null || map.equals("") ){
		%>
			<a href="login.jsp">登录</a>
			<%
			}
			else {
				map = (Map<String, Object>) session.getValue("user_msg");
			%>
			<a href="personal.jsp"><%=map.get("user_name")%></a>
			<%}
			%></p>

	</div>
	<div class="container">
		<div class="header-info">
			<div class="logo">
				<h1 class="logo-head"><a href="index.jsp" >E-玩吧</a></h1>
			</div>
			<div class="header-info-right">
				<div class=" top-nav">
					<span class="menu"><img src="images/menu.png" alt=""/></span>
					<ul class="nav1">
						<li><a href="index.jsp" class="active">首页</a></li>
						<li><a href="services.jsp">服务</a></li>
						<li><a href="gallery.jsp">照片墙</a></li>
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
		<div class="banner-text">
			<div class="banner-left animated wow fadeInRight" data-wow-duration="1000ms">
				<h2>最合理 最健康的健康方式</h2>
				<h3>这里有专业的教练</h3>
				<p>健身俱乐部提供专业教练，可以一对一教育，也可团队教学.</p>

			</div>
			<div class="b-right animated wow fadeInLeft" data-wow-duration="1000ms">
				<div class="b2" onclick="join('yy')">
					<h4>游泳</h4>
					<p>$150</p>
				</div>
				<div class="b2" onclick="join('ppq')">
					<h4>乒乓球</h4>
					<p>$20</p>
				</div>
				<div class="b2" onclick="join('jr')">
					<h4>练局部肌肉 </h4>
					<p>$35</p>
				</div>
				<div class="b2" onclick="join('yj')">
					<h4>瑜伽</h4>
					<p>$30</p>
				</div>
			</div>
			<script>
				function join(id)
				{
					if(id=='yy')
						alert("游泳项目暂无资源！");
					if(id=='ppq')
						alert("乒乓球项目暂无资源！");
					if(id=='jr')
						alert("局部肌肉练习项目暂无资源！");
					if(id=='yj')
						alert("瑜伽项目暂无资源！");
				}
			</script>
			<div class="clearfix"></div>
		</div>
		<div class="bnr-img animated wow fadeInDown" data-wow-duration="1000ms">
			<img src="images/gg.png" alt="" />
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
<!--class-starts-->
<div class="class">
	<div class="container">
		<div class="class-top heading">
			<h3>热门课程</h3>
		</div>
		<div class="class-bottom">
			<div class="col-md-4 class-left animated wow fadeInLeft" data-wow-duration="1000ms">
				<figure>
					<img src="images/c2.jpg" alt="" class="img_responsive">
				</figure>

				<h6>7PM - 9PM</h6>
				<div class="c-btm">
					<h4>举重-胸肌锻炼</h4>
					<p> 哑铃是非常适合进行力量练习的器械，练习时以站立位或坐位为主，进行上肢前举、侧平举及屈肘举，以加强上肢、肩部、胸部肌肉的力量训练。</p>
				</div>
			</div>
			<div class="col-md-4 class-left animated wow fadeInUp" data-wow-duration="1000ms">
				<figure>
					<img src="images/c1.jpg" alt="" class="img_responsive">
				</figure>
				<h6>10AM - 12PM</h6>
				<div class="c-btm">
					<h4>手臂锻炼</h4>
					<p> 什么样的手臂最迷人？当然是肌肉匀称、细直紧实的啦。只要手臂细了，立刻给人身材匀称的感觉哦。</p>
				</div>
			</div>
			<div class="col-md-4 class-left animated wow fadeInRight" data-wow-duration="1000ms">
				<figure>
					<img src="images/c3.jpg" alt="" class="img_responsive">
				</figure>
				<h6>4PM - 6PM</h6>
				<div class="c-btm">
					<h4>瑜伽-练出好身材</h4>
					<p> 一个女性坚持对瑜伽的体位法的长期操练，可以使其胸部更加健美，曲线更加分明；可以使女性腰部柔软有力；能够避免女性臀肌下垂。</p>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
</div>

<div class="features">
	<div class="container">
		<div class="features-top heading1">
			<h3>未来展望</h3>
		</div>
		<div class="features-bottom">
			<div class="col-md-4 feature-left animated wow fadeInRight" data-wow-duration="1000ms">
				<div class="feature-one">
					<span class="glyphicon glyphicon-thumbs-up" aria-hidden="true"></span>
					<h4 class="">拉近人与人之间的距离</h4>
					<p>在运动时，同学们更加容易接受别人和展示自己。以篮球为例，多人以统一目的运动，很快就能使大家互相了解互相接洽。</p>
				</div>
			</div>
			<div class="col-md-4 feature-left animated wow fadeInDown" data-wow-duration="1000ms">
				<div class="feature-one">
					<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
					<h4>解决部分同学兼职问题</h4>
					<p>如今大学的宗旨不仅仅让学生学到书本上的知识，还有让学生学习如何锻炼自己的能力，在这里既能展示自己也能完善自己。</p>
				</div>
			</div>
			<div class="col-md-4 feature-left animated wow fadeInRight" data-wow-duration="1000ms">
				<div class="feature-one">
					<span class="glyphicon glyphicon-globe" aria-hidden="true"></span>
					<h4>全面提高身体素质</h4>
					<p>运动对同学的身体有很多好处，其实运动最有益的地方就是提高新陈代谢，当代谢加速自然睡眠质量也会提高很多。</p>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
</div>
<!--features-end-->
<!--training-starts-->
<div class="train animated wow fadeInRight" data-wow-duration="1000ms">
	<div class="container">
		<div class="train-top">
			<h3>开始你的运动</h3>
			<a class="play-icon popup-with-zoom-anim" href="#small-dialog5"><span> </span></a><br />
		</div>
	</div>
</div>
<!--training-end-->
<!--people-starts-->
<div class="people">
	<div class="container">
		<div class="people-top heading2">
			<h3>我们的健康教练</h3>
		</div>
		<div class="people-bottom">
			<section class="slider">
				<div class="flexslider">
					<ul class="slides">
						<li>
							<div class="people-one">
								<div class="p-btm">
									<img src="images/coach_1.png" alt="" />
									<div class="p1">
										<h4>上肢健身教练</h4>
										<h6>程然</h6>
									</div>
								</div>
								<p>性别：男，年龄35岁，山西师范大学毕业，国家体育总局一级社会体育指导员，运动营养师导师，国家健身营养师导师，私人教练培训导师 亚洲形体健身学院培训导师，哥伦比亚运动营养师</p>
							</div>
						</li>
						<li>
							<div class="people-one">
								<div class="p-btm">
									<img src="images/pi.jpg" alt="" />
									<div class="p1">
										<h4>瑜伽教练</h4>
										<h6>杨夏</h6>
									</div>
								</div>
								<p>性别：女，年龄28岁。 2014年开始接触瑜伽，其后通过专业瑜伽教练培训机构系统全面学习传统哈他初中高级瑜伽，
									掌握瑜伽呼吸法、体位法、冥想法、唱诵法、体位调整辅助手法等技巧，伴随着不断的自我学习和提升，对瑜伽有了深刻的见解和感悟。</p>
							</div>
						</li>
						<li>
							<div class="people-one">
								<div class="p-btm">
									<img src="images/pi2.jpg" alt="" />
									<div class="p1">
										<h4>Our goddess</h4>
										<h6>秦倩</h6>
									</div>
								</div>
								<p>性别：女，年龄26岁。中国女子游泳运动员，里约奥运会女子100米仰泳季军。2017年毕业于天津医科大学康复与运动医学系。</p>
							</div>
						</li>
					</ul>
				</div>
			</section>
		</div>
	</div>
</div>
<!--people-end-->
<!--FlexSlider-->
<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
<script defer src="js/jquery.flexslider.js"></script>
<script type="text/javascript">
	$(window).load(function(){
		$('.flexslider').flexslider({
			animation: "slide",
			start: function(slider){
				$('body').removeClass('loading');
			}
		});
	});
</script>
<!--End-slider-script-->
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
