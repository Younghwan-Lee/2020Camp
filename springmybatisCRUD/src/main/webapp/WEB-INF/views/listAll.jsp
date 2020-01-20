<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 목록</title>
</head>
<body>
<form action="regist" method="get">
<table border="1" width="850">
	<tr>
		<td width="47">
			<p align="center">글번호</p>
		</td>
		<td width="297">
			<p align="center">제목</p>
		</td>
		<td width="167">
			<p align="center">작성자</p>
		</td>
		<td width="125">
			<p align="center">작성일</p>
		</td>
		<td width="60">
			<p align="center">조회수</p>
		</td>
	</tr>
	
	<c:forEach items="${list}" var="boardVO">
		<tr>
			<td>${boardVO.bno}</td>
			<td><a href="/read?bno=${boardVO.bno}">${boardVO.title}</a></td>
			<td>${boardVO.writer}</td>
			<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${boardVO.regdate}"/></td>
			<td><span class="badge bg-red">${boardVO.viewcnt}</span></td>
		</tr>
	</c:forEach>
</table>
<button type="submit">글쓰기</button>
</form>
</body>
</html>