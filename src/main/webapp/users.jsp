<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"
import="com.cqut.li.eplay_ssm.entity.User"
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
	
	var user_id = document.getElementById("user_id").value;

	window.location="servlet/GetCourseInfoServlet?user_id="+user_id;
	}
	</script>
<a href="jsp/addUser.jsp">增加</a>&nbsp;<a href="servlet/GetCourseListServlet">刷新</a></div>
<table id="customers">
<tbody>
<tr><th width="70">用户ID</th><th>用户名</th><th>生日</th><th>地址</th><th>邮箱</th><th width="115">操作</th></tr>
<%

	List<Map<String, Object>> userList = (List<Map<String, Object>>) request.getSession().getAttribute("user_list_msg");

							if(userList == null || userList.size() == 0)
							{
				%>		
					<tr><td style="text-aligin:center; padding:5px;" colspan='5'><a class="notice" href="/GeneralCourseSystem/jsp/addUser.jsp">暂时还没有数据哟，点击添加</a></td></tr>
				<%
					}else
							{
								for(int i = 0; i < userList.size(); i++ )
								{
									Map<String, Object> map = userList.get(i);
				%>
<tr class="alt">
	<td><%=map.get("user_id") %></td><td><%=map.get("user_name") %></td>
	<td><%=map.get("birthday") %></td><td><%=map.get("address") %></td>
	<td><%=map.get("email") %></td><td>
	<div class="operator">
		<a style="margin-right: 30px;" %>编辑</a>
<a href="servlet/DeleteCourseServlet?user_id=<%=map.get("user_id") %>">删除</a></div></td></tr></td></tr>
<%
					}
				}
				%>
</tbody>
</table>
</div>
  </body>
</html>
