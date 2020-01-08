<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Scriptlet Tag</h1>
<%  
String name=request.getParameter("uname");  
out.print("Welcome "+name);  
%>  

<h1>Expression Tag</h1>
<%= "Welcome "+request.getParameter("uname") %>
<p>Current Time: <%= java.util.Calendar.getInstance().getTime() %></p>

<h1>Declaration Tag</h1>
<%! int data=50; %>  
<%= "Value of the variable is:"+data %>   
</body>
</html>