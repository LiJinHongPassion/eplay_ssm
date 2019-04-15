<%--
  Created by IntelliJ IDEA.
  User: Li
  Date: 2019/4/15
  Time: 9:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <title>文件上传</title>
</head>
<body>


    <%--enctype  文件编码格式--%>


    <h1>上传文件</h1>
    <form method="post" action="<%=request.getContextPath() %>/form" enctype="multipart/form-data">
        <input type="text" name="name"/>
        <input type="file" name="file"/>
        <input type="submit"/>
    </form>
</body>
</html>
