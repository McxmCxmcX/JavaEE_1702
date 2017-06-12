<%@ page import="com.mysql.jdbc.Driver" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--
  Created by IntelliJ IDEA.
  User: 石磊
  Date: 2017/6/10
  Time: 8:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        *{
            margin: auto;
            padding: 0;
        }
        #BT {
           margin: auto;
            background: gainsboro;
            height: 140px;
            text-align: center;
            size: 200px;
        }
        #CX {

            margin:20px 0 20px 0;
            text-align: center;
        }
        #JW {
            margin-bottom: auto;
            padding-top: 20px;
            background: gainsboro;
            color: #8a6d3b;
            height: 90px;
            text-align: center;
        }
    </style>
</head>
<body>
<form action="register" method="post">
    <input type="inquire" name="inquire" placeholder="查询"><br>
</form>
<%
    String message = (String) request.getAttribute("message");
    if (message != null) {
        out.print(message);
    }
%>
<h1 id="BT">IP SEARCH</h1>
    <input type="text" name="address" placeholder="请输入要查询的IP地址">
    <input id="CX" type="submit" value="查询">

<h5 id="JW">166.111.3.111<br>北京市 清华大学计算机与信息管理中心</h5>
</body>
</html>