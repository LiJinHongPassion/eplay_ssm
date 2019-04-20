<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"
import="com.cqut.li.eplay_ssm.entity.Sport"
%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>course</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" type="text/css" href="css/index.css">
  </head>
  
  <body>
   <div id="course">
<div align="right">
<input name=""courseid"" type="text" id="sport_id" class="search" />
	<input type="button" value="搜索" onClick="searchSport()" />
	<script type="text/javascript">
	function searchSport(){
	
	var sport_id = document.getElementById("sport_id").value;

	window.location="servlet/GetCourseInfoServlet?sport_id="+sport_id;
	}
	</script>
<a href="jsp/addCourse.jsp">增加</a>&nbsp;<a href="servlet/GetCourseListServlet">刷新</a></div>
<table id="customers" >
<tbody>
<tr><th width="70">运动ID</th><th>运动名</th><th>价格</th><th>简介</th><th width="115">操作</th></tr>
<%

	List<Map<String, Object>> sportList = (List<Map<String, Object>>) request.getSession().getAttribute("sport_list_msg");
							if(sportList == null || sportList.size() == 0)
							{
				%>		
					<tr><td style="text-aligin:center; padding:5px;" colspan='5'><a class="notice" href="/GeneralCourseSystem/jsp/addSport.jsp">暂时还没有数据哟，点击添加</a></td></tr>
				<%
					}else
							{
								for(int i = 0; i < sportList.size(); i++ )
								{
									Map<String, Object> sport = sportList.get(i);
				%>
<tr class="alt">
	<td><%=sport.get("sport_id") %></td>
	<td><%=sport.get("sport_name") %></td>
	<td><%=sport.get("price") %></td>
	<td><%=sport.get("introduce") %></td><td>
		<div class="operator"><a style="margin-right: 30px;" href="#">编辑</a>
<a href="servlet/DeleteCourseServlet?sport_id=<%=sport.get("sport_id") %>">删除</a></div></td></tr></td></tr>
<%
					}
				}
				%>
</tbody>
</table>
</div>
  </body>
</html>
