<%@page import="jsp3.CrudUserDao"%>  
<jsp:useBean id="u" class="jsp3.CrudUser"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<%  
int i=CrudUserDao.update(u);  
response.sendRedirect("viewusers.jsp");  
%> 