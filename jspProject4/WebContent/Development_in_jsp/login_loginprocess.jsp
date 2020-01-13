<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%@ page import="bean.LoginDao" %>
<jsp:useBean id="obj" class="bean.LoginBean"/>
<jsp:setProperty property="*" name="obj"/>

<%
boolean status = LoginDao.validate(obj);

if(status) {
	out.println("You are successfully logged in");
	session.setAttribute("session", "TRUE");
}
else {
	out.println("Sorry, email or password error");
%>
<jsp:include page="login_index.jsp"></jsp:include>
<%
}
%>
</body>
</html>