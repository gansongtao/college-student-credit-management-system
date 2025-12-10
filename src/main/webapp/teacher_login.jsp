<%--
  Created by IntelliJ IDEA.
  User: 15901
  Date: 2025/7/7
  Time: 16:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <title>Title</title>
  <link href="style.css" rel="stylesheet"/>
</head>
<body>
<form action="teacherServlet.do" method="GET" id="form">
  <label>Name:<input type="text" id="name"/></label>
  <input type="hidden" id="stuID" value="-1"/>
  <input type="submit" value="Teacher"/>
</form>
</body>
</html>
