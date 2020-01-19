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

<div style="width:30%;">
<h2>Logged In</h2>
<p><a href="register_index.jsp">sign in</a></p>
<hr/><br/>
<%
boolean status = LoginDao.validate(obj);


if(status) {
	out.println("You are successfully logged in\n");
	session.setAttribute("session", "TRUE");
	String uemail = request.getParameter("email");
%>
<br/><br/><a href="login_profile.jsp?uemail=<%=uemail%>">Check Profile</a>

<%
}
else {
	out.println("Sorry, email or password error");
%>
<br/><jsp:include page="login_index.jsp"></jsp:include>
<%
}
%>
</div>
</body>
</html>