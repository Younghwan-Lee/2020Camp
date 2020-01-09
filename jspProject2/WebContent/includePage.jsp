<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3><i>This is a page that will be included</i></h3>

<i><% out.print("Today is:"+java.util.Calendar.getInstance().getTime()); %></i>
</body>
</html>