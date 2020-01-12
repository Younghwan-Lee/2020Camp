<%@ page import="jsp3.CrudUserDao"%>
<jsp:useBean id="u" class="jsp3.CrudUser"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
int i = CrudUserDao.save(u);
if(i > 0) {
	response.sendRedirect("adduser-success.jsp");
} else {
	response.sendRedirect("adduser-error.jsp");
}
%>