<%--
  Created by IntelliJ IDEA.
  User: 石磊
  Date: 2017/6/6
  Time: 11:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>index page</title>
</head>
<body>
<h1>登录<%=session.getId()%></h1>
<form action="login" method="post">
  <input type="text" name="mobile" placeholder="手机号"><br>
  <input type="password" name="password" placeholder="密码"><br>
  <input type="submit" value="登录">
</form>
<%--<%=(request.getAttribute("message") != null) ? request.getAttribute("message") : ""%>--%>
<p>
  <%
    String message = (String) request.getAttribute("message");
    if (message != null) {
      out.print(message);
    }
  %>
</p>
<a href="signup.jsp">注册</a>
</body>
</html>


