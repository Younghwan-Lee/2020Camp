<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="bean.ConnectionProvider" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PROFILE</title>
</head>
<body>
<%
PreparedStatement ps = null;
ResultSet rs = null;
String sql = "select * from user432 where email=?";
String uemail = request.getParameter("uemail");
String name = null, email = null;

try {
	Connection con = ConnectionProvider.getCon();
	ps = con.prepareStatement(sql);
	ps.setString(1, uemail);
	rs = ps.executeQuery();
	while(rs.next()) {
		name = rs.getString("name");
		email = rs.getString("email");
	}
} catch(SQLException e) {
	e.printStackTrace();
}
%>
<div
>
	<h2>User Info</h2>
	<p><a href="register_index.jsp">sign in</a></p>
	<hr/>
	<p>Name: <%=name%></p>
	<p>Email: <%=email%></p>
	<p><a href="login_logout.jsp">logout</a></p>
</div>
</body>
</html>