<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div style="width:30%;">
<h3>Login Form</h3>
<p><a href="register_index.jsp">sign in</a></p>
<hr/>

<%
String profile_msg = (String)request.getAttribute("profile_msg");
if(profile_msg != null) {
	out.print(profile_msg);
}
String login_msg = (String)request.getAttribute("lonin_msg");
if(login_msg != null) {
	out.print(login_msg);
}
%>

<br/>
<form action="login_loginprocess.jsp" method="post">
Email:<input type="text" name="email"/><br/><br/>
Password:<input type="password" name="pass"/><br/><br/>
<input type="submit" value="login"/>
</form>
</div>
</body>
</html>