<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Config_result</title>
</head>
<body>
<%   
out.println("Welcome "+request.getParameter("uname"));  
  
String driver=config.getInitParameter("dname");  
out.println("driver name is="+driver);  

%>
</body>
</html>