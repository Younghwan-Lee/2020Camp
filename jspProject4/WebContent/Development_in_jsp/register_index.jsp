<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>REGISTER PAGE</title>
</head>
<body>
<form action="register_process.jsp">
<input type="text" name="uname" value="Name..." onclick="this.value=''"/><br/>
<input type="text" name="uemail" value="Email ID..." onclick="this.value=''"/><br/>
<input type="password" name="upass" value="Password..." onclick="this.value=''"/><br/>
<input type="submit" value="register"/>
</form>
</body>
</html>