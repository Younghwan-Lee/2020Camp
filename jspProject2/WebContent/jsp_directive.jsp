<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DIRECTIVE</title>
</head>
<body>
<h1>Page Directive</h1>

<h2>Import</h2>
<p>to import class, interface, or all the members of a package.</p>
<%@ page import="java.util.Date" %>
Today is: <%= new Date() %>

<br><h2>contentType</h2>
<p>Defined on the top of this page</p>

<br><h2>info</h2>
<p> sets the information of the JSP page which is retrieved later by using getServletInfo() method of Servlet</p>
<%@ page info="composed by Sonoo Jaiswal" %>
Today is: <%= new java.util.Date() %>

<br><h2>buffer</h2>
<p>sets the buffer size in kilobytes</p>
<%@ page buffer="16kb" %>
Today is: <%= new java.util.Date() %>

<br><h2>isELIgnored</h2>
<p>If isELIgnored value is true, EL will be ignored</p>
<%@ page isELIgnored="true" %>

<br><h2>errorPage</h2>
<p>to define the error page, if exceptions occur.</p>
<%@ page errorPage="myErrorPage.jsp" %>


<br><h2>isErrorPage</h2>
<p>to declare that the current page is the error page.</p>
<%@ page isErrorPage="true" %>
The exception is: <%= exception %>

<br><h1>Include Directive</h1>
<h2>include file</h2>
<%@ include file="myErrorPage.jsp" %>
Today is: <%= java.util.Calendar.getInstance().getTime() %>

<br><h1>Taglib Directive</h1>
<h2>taglib uri, prefix</h2>
<p>to define a tag library that defines many tags.</p>
<p>&lt;%@ taglib uri="http://www.javatpoint.com/tags" prefix="mytag" %&gt;</p>
<p>&lt;mytag:currentDate/&gt;</p>
</body>
</html>