<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<base href="<%=basePath%>">

	<title>Services</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style>
		.services {
			padding: 15em 3px 6em 0px;
			position: relative;
		}
		.service-top {
			width:228px;
			height:236px;
		}
	</style>
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
	<script src="js/bootstrap.js"></script>
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
						<li><a href="services.jsp" class="active">服务</a></li>
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
<div class="services">
	<div class="container">
		<div class="ser-top ">
			<h3>运动伙伴</h3>
		</div>

		<div class="ser-top-head">
			<div class="col-md-3 service wow fadeInLeft animated" data-wow-delay=".5s">
				<div class="service-top">
					<div class="ser-head">
						<i class="glyphicon glyphicon-star-empty ser-ic"></i>
						<h5 class="ser-text">跑步</h5>
						<div class="clearfix"> </div>
					</div>
					<p>队长：李佳阳</p>
					<p>队员1：白胡顺</p>
					<p>队员2：李锦洪</p>
					<p>队员3：王淑</p>
					<p>队员4：康晓亚</p>
					<span>时间:2019-4-6 15:00</span>
					<span>地点:重庆理工大学（花溪）操场</span><br>
				</div>
				<button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">我要加入</button>

			</div>

			<div class="col-md-3 service wow fadeInLeft animated" data-wow-delay=".5s">
				<div class="service-top">
					<div class="ser-head">
						<i class="glyphicon glyphicon-star-empty ser-ic"></i>
						<h5 class="ser-text">打篮球</h5>
						<div class="clearfix"> </div>
					</div>
					<p>队长：乔布斯</p>
					<p>队员1：待加入</p>
					<p>队员2：待加入</p>
					<p>队员3：待加入</p>
					<span>时间:2019-4-16 15:00</span>
					<span>地点:重庆理工大学（花溪）体育馆</span><br>
				</div>
				<button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">我要加入</button>
			</div>

			<!--<div class="col-md-3 service wow fadeInLeft animated" data-wow-delay=".5s">
				<div class="service-top">
					<div class="ser-head">
						<i class="glyphicon glyphicon-star-empty ser-ic"></i>
						<h5 class="ser-text"> Duis sed</h5>
						<div class="clearfix"> </div>
					</div>
					<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature </p>
				</div>
			</div>
			<div class="col-md-3 service wow fadeInLeft animated" data-wow-delay=".5s">
				<div class="service-top">
					<div class="ser-head">
						<i class="glyphicon glyphicon-star-empty ser-ic"></i>
						<h5 class="ser-text">Consectetur </h5>
						<div class="clearfix"> </div>
					</div>
					<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature </p>
				</div>
			</div>-->
			<div class="clearfix"> </div>
		</div>
	</div>

	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">队伍详情</h4>
				</div>
				<div class="modal-body">
					<p>队长：李佳阳，学号：11621380118</p>
					<p>队员1：白胡顺，学号：11621380103</p>
					<p>队员2：李锦洪，学号：11621380101</p>
					<p>队员3：王淑，学号：116213801xx</p>
					<p>队员4：康晓亚，学号：116213801xx</p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
					<button type="button" class="btn btn-primary">确认加入</button>
				</div>
			</div><!-- /.modal-content -->
		</div><!-- /.modal -->
	</div>


</div>

<!---->
<div class="services-bottom">
	<div class="container">
		<div class="ser-bottom-top ">
			<h3>新增服务</h3>
		</div>

		<div class="ser-top-bottom">
			<div class="col-md-5 ser-top-in animated wow fadeInLeft" data-wow-duration="1000ms">
				<div class=" ser-top-in4">
					<div class="view view-first">
						<img src="images/se1.jpg" alt="" class="img-responsive   ">
						<div class="mask">
							<h4 class="ser-text-b">瘦臂</h4>
							<p>卧推有助于人们瘦臂.</p>
						</div>
					</div>
				</div>
				<div class="ser-top-in1">
					<div class="col-md-6 ser-top-in2 ">
						<div class="view view-first">
							<img src="images/se2.jpg" alt="" class="img-responsive  ">
							<div class="mask">
								<h4 class="ser-text-b1">拳击 </h4>
								<p>偶尔的拳击是很好的发泄方式</p>
							</div>
						</div>
					</div>
					<div class="col-md-6 ser-top-in3">
						<div class="view view-first">
							<img src="images/se3.jpg" alt="" class="img-responsive  ">
							<div class="mask">
								<h4 class="ser-text-b1">哑铃 </h4>
								<p>练出二头肌</p>
							</div>
						</div>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
			<div class="col-md-7 img-ser animated wow fadeInRight" data-wow-duration="1000ms">
				<div class="view view-first">
					<img src="images/se.jpg" alt="" class="img-responsive ">
					<div class="mask">
						<h4>仰卧起坐</h4>
						<p>正确的仰卧起坐，快速练出腹肌.</p>
					</div>
				</div>
			</div>
			<div class="clearfix"> </div>
		</div>
		<div class="ser-top-bottom1">
			<div class="col-md-8 ser-bottom1 animated wow fadeInRight" data-wow-duration="1000ms">
				<h2 > 这里有各种不同的锻炼方式</h2>
				<p >游泳消耗的能量大。这是由于游泳时水的阻力远远大于陆上运动时空气的阻力，在水里走走都费力，再游游水，肯定消耗较多的热量。同时，水的导热性大于空气24倍，水温一般低于气温，这也有利于散热和热量的消耗。
					<span>1.增强体质 2.锻炼人的协调能力 3.乐观精神态度 4.团对合作能力 5.协调能力 6.促进新陈代谢 7.提高小腿肌肉反应 8.锻炼人的心志 9.锻炼身体各个部位的肌肉 10.增强心脏功能 11.控制体重与改变体形 12.有效预防心血管病。</span></p>

			</div>
			<div class="col-md-4 animated wow fadeInLeft" data-wow-duration="1000ms">
				<ul class="simply">
					<li ><span class="glyphicon glyphicon-menu-right" aria-hidden="true"></span> NO1：跳绳</li>
					<li ><span class="glyphicon glyphicon-menu-right" aria-hidden="true"></span>NO2：游泳</li>
					<li ><span class="glyphicon glyphicon-menu-right" aria-hidden="true"></span>NO3:篮球运动</li>
					<li ><span class="glyphicon glyphicon-menu-right" aria-hidden="true"></span>NO4：引体向上</li>
					<li ><span class="glyphicon glyphicon-menu-right" aria-hidden="true"></span>NO5：深蹲</li>
					<li ><span class="glyphicon glyphicon-menu-right" aria-hidden="true"></span>NO6：健美操</li>
				</ul>

			</div>
			<div class="clearfix"> </div>
		</div>

	</div>
	<!---->

</div>

<!--//gallery-->

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
<!--class-end-->
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
