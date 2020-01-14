<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div style="width:30%">
<h2>Logged Out</h2>
<hr/><br/>
<%
session.setAttribute("session", "FALSE");
%>

<p>Complete.</p>
<br><a href="login_login.jsp">login</a>
</div>
</body>
</html>