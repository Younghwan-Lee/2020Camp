<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ACTION</title>
</head>
<body>
<h1>JSP Action Elements</h1>
<h2>jsp:forward</h2>
<p>&lt;jsp:forward page="forwardPage.jsp"&gt;</p>
<p>&lt;jsp:param name="name" value="javatpoint.com" /&gt;</p>
<p>&lt;/jsp:forward&gt;</p>

<br><h2>jsp:include</h2>
<jsp:include page="includePage.jsp" />

<br><br><h2>JavaBean Class</h2>
<jsp:useBean id="obj" class="jspProject2.Calculator"/>
<%  
int m=obj.cube(5);  
out.print("cube of 5 is "+m);  
%>  

<br><br><h2>Set & Get Property</h2>
<h3>To set all the values of incoming request</h3>
<p>&lt;jsp:setProperty name="bean" property="*" /&gt;</p>
<h3>To set value of the incoming specific property</h3>
<p>&lt;jsp:setProperty name="bean" property="username" /&gt;</p>
<h3>To set a specific value in the property</h3>
<p>&lt;jsp:setProperty name="bean" property="username" value="Kumar"/&gt;</p>

<br><h2>Bean Development</h2>
<jsp:include page="form.html" />

<jsp:useBean id="u" class="jspProject2.User"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  

<br>Record:<br>  
<jsp:getProperty property="name" name="u"/><br>  
<jsp:getProperty property="password" name="u"/><br>  
<jsp:getProperty property="email" name="u" /><br>
</body>
</html>