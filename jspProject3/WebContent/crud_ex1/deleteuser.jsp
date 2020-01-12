<%@page import="jsp3.CrudUserDao"%>  
<jsp:useBean id="u" class="jsp3.CrudUser"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<%  
CrudUserDao.delete(u);  
response.sendRedirect("viewusers.jsp");  
%>  