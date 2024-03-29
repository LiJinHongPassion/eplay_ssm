<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>500</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"></head>
<style type="text/css">
	html,body {
		font-family:"Microsoft YaHei",Arial,Helvetica,sans-serif;font-size:14px;
		color:#fff;margin:0;padding:0;height:100%;overflow:hidden;overflow-y:auto;
	}
	body{background:#061536;}
	a{ color:#18b9d6; text-decoration:none;}
	a:visited{ color:#ab4c2a; text-decoration:none;}
	a:hover{ color:#f9300f; text-decoration:none;}
	table{ empty-cells:show;border-collapse:collapse; margin:0; padding:0;width:100%;}
	ul,li,ol,dl,dt,dd{list-style:none;margin:0;padding:0;}
	li,p{line-height:22px;}
	h1,h2,h3,h4,p,th,td,form,input{margin:0;padding:0;font-size:14px;font-weight:normal;text-align:left;}
	
	.main{background:url(<%=request.getContextPath()%>/500/error_bg.jpg) no-repeat 50% 0;min-height:655px;width:1830px;margin:0 auto;position:relative;}
	.foot{width:1830px;margin:0 auto;height:640px;background:url(error_bottom.png) 50% 0 no-repeat;}
	.code{width:420px;height:140px;position:absolute;left:50%;top:50%;margin:-200px -210px;}
	.c500{background:url(<%=request.getContextPath()%>/500/500.png) 0 0 no-repeat;}
	.c502{background:url(<%=request.getContextPath()%>/500/502.png) 0 0 no-repeat;}
	.c404{background:url(<%=request.getContextPath()%>/500/404.png) 0 0 no-repeat;}
	.c493{background:url(<%=request.getContextPath()%>/500/493.png) 0 0 no-repeat;margin-top:-172px;}
	.cwaf{background:none;}
	.btn{vertical-align:middle;text-align:center;position:absolute;left:0;top:410px;width:100%;}
	.btn a{font-weight:bold;font-size:14px;display:inline-block;color:#fff;width:220px;height:50px;line-height:50px;background:#0e9780;border-radius:30px;}
	.btn a:visited{color:#fff;}
	.btn a:hover{background:#0ac1a2;}
	.detail{text-align:center;width:100%;color:#0e9780;margin-top: -160px;position: relative;z-index: 2;}
	.detail h2{text-align:center;font-size:32px;width:900px;line-height:1.5em;margin:0 auto 10px;font-weight:normal;}
	.detail .en{text-align:center;font-size:16px;line-height:32px;}
	.msg_list{margin:10px auto 0;width:980px;}
	.budle{width:100%;height:70px;background:url(<%=request.getContextPath()%>/500/t-bubble.png) 180px 0 no-repeat;}
	.list{border-radius:30px;background:#000;background:rgba(0,0,0,0.3);padding:40px;text-align:left;font-size:14px;}
	.list .btxt{margin-top:50px;}
	.list ul{margin-bottom:30px;}
	.list li{margin:10px 0;vertical-align:middle;position:relative;padding-left:30px;}
	.list .nop li{padding-left:0;}
	.list li em{font-style:normal;vertical-align:middle;position:absolute;left:0;top:0;}
	.event{text-align:center;width:100%;margin:0 auto 20px;color:#18b9d6;}
	.event p{text-align:center;}
</style>
<body>
	<div class="main">
		<div class="code c500"></div>
		<div class="btn">
			<a href="<%=request.getContextPath()%>/index.jsp">首&nbsp;&nbsp;页</a>
		</div>
	</div>
	<div class="detail">
		<div class="event">
			<!--p>您的IP：</p-->
			<p></p>
		</div>
		<h2>抱歉！源站出现问题，暂时无法访问！</h2>
		<p class="en">Sorry，Source WebSite is going wrong and it can’t be accessed temporarily!</p>
		<!--div class="msg_list">
			<div class="budle"></div>
			<div class="list">
				<p>使用云防护后，为什么会出现502、快照？</p>
				<p>原因可能有以下几点：</p>
				<ul>
					<li><em>1.</em>源站宕机、间歇性卡顿。  请检查源站的存活状态。<a href="http://bbs.360.cn/thread-6776749-1-1.html">如何检查源站状态</a>。</li>
					<li><em>2.</em>源站响应超时30秒。   超过30秒未响应的请求会被云防护断开，显示502。</li>
					<li><em>3.</em>请核查在云防护DNS设置配置的源站IP是否正确，是否还留存错误的、已经不使用的服务器IP。</li>
					<li><em>4.</em>请检查源站防火墙是否拦截云防护节点IP。   <a href="http://bbs.360.cn/thread-6776666-1-1.html">详见FAQ</a></li>
					<li><em>5.</em>当前页面由于敏感信息已经被网站卫士屏蔽，请删除相关违规信息。</li>
				</ul>
				<ul>
					<li><em>-</em>如果域名服务商的防火墙拦截云防护节点IP， 请与域名服务商联系解封并加白IP段。</li>
					<li><em>-</em>如果服务器防火墙（安全狗等）拦截云防护节点IP，请将云防护的IP段添加到服务器防火墙白名单中。</li>
					<li><em>-</em>如果您服务器未配置任何防火墙，请与您的机房联系，将云防护的IP段添加到机房防火墙白名单中。</li>
				</ul>
				<div class="btxt">
					<p>Why there will be 502, snapshots after using WebGuard?</p>
					<p>The reason may as follow:</p>
					<ul>
						<li><em>1.</em>The source website down or intermittent seriously slow.Please check the survival  status of source website . <a href="http://bbs.360.cn/thread-6776749-1-1.html">How to check the source website status</a></li>
						<li><em>2.</em>The response time of source website exceed 30 seconds.The request time more than 30 seconds will be disconected by WebGuard ,and Display 502.</li>
						<li><em>3.</em>Please check if the source IP in the  DNS configuration of WebGuard  is correct, whether there remains IPS is wrong or no longer in use.</li>
						<li><em>4.</em>Please check if the firewall of source website blocked the IPs of WebGuard nodes. <a href="http://bbs.360.cn/thread-6776666-1-1.html">see the FAQ for details</a></li>
					</ul>
					<ul>
						<li><em>-</em>If the firewall of ISP blocked ,the IPs of WebGuard nodes. please contact the ISP to unlock and add the IP segments to whitelist.</li>
						<li><em>-</em>If the firewall of  server (safedog, etc.) blocked the IPs of WebGuard nodes, please add the IP segments to the whitelist of the server firewall.</li>
						<li><em>-</em>if you have not any firewall on server, please contact with your IDC, and add the IP segments of WebGuard to the whitelist of the IDC</li>
					</ul>
				</div>
			</div>
		</div>
	</div-->	
</body>
</html>

