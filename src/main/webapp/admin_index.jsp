<%--
  Created by IntelliJ IDEA.
  User: 15901
  Date: 2025/7/6
  Time: 22:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <title>Administrator</title>
  <link href="style.css" rel="stylesheet"/>
</head>
<body>
  <form action="admin.do" method="GET">
    <label>Student ID: <input type="text" id="stuID"/></label><br/>
    <label>
      <input type="radio" value="all_class" name="search"/>All Classes<br/>
      <input type="radio" value="avg_class" name="search"/>Curriculum Average<br/>
      <input type="radio" value="region" name="search"/>Region Statistics<br/>
      <input type="radio" value="one" name="search"/>Freshman Score<br/>
      <input type="radio" value="two" name="search"/>Sophomore Score<br/>
      <input type="radio" value="ranking" name="search"/>Rankings<br/>
    </label>
    <input type="submit" value="Submit"/>
  </form>
</body>
</html>
