<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
String id = request.getParameter("id");
String subject = request.getParameter("subject");
String fileName1 = request.getParameter("fileName1");
String fileName2 = request.getParameter("fileName2");
String orgfileName1 = request.getParameter("orgfileName1");
String orgfileName2 = request.getParameter("orgfileName2");
String uploadPath = application.getRealPath("forUpload");
String uploadPath1 = uploadPath + "/" + fileName1;
String uploadPath2 = uploadPath + "/" + fileName2;
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
아이디: <%=id%><br>
제목: <%=subject%><br>
첨부파일(클릭 시 다운로드)<br>
- 파일1: <a href="fileDownload.jsp?fileName=<%=fileName1%>"><%=orgfileName1%></a><br>
<img src="<%=uploadPath1%>" width="300px" height="200px"><br>
- 파일2: <a href="fileDownload.jsp?fileName=<%=fileName2%>"><%=orgfileName2 %></a><br>
<img src="<%=uploadPath2%>" width="300px" height="200px"><br>

</body>
</html>