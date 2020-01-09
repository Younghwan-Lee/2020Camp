<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sign In</title>
</head>
<body>
<h2>회원 가입</h2>
<form method="post" action="jsp_EL_middle.jsp">
  <p>아이디</p>
  <input type="text" name="userId" placeholder="아이디">
  
  <p>패스워드</p>
  <input type="password" name="passwd" placeholder="패스워드">
  
  <p>이메일</p>
  <input type="text" name="email" placeholder="이메일">
  
  <p>이메일 수신 여부</p>
  <input type="radio" name="emailAgree" value="yes">예
  <input type="radio" name="emailAgree" value="no" checked>아니오
  
  <p>관심 사항</p>
  <input type="checkbox" name="interest" value="IT">IT/인터넷
  <input type="checkbox" name="interest" value="movie">영화
  <input type="checkbox" name="interest" value="music">음악
  <input type="checkbox" name="interest" value="book">책
  <input type="checkbox" name="interest" value="food">음식
  
  <p>핸드폰</p>
  <select name="hp_1">
  	<option value="home">집 전화</option>
  	<option value="mobile">휴대 전화</option>
  </select>
  <input type="text" name="hp_2" placeholder="번호 입력">
  
  <p>자기소개</p>
  <textarea name="introduce" placeholder="자기소개" cols="30"></textarea>
  <br/><br/>
  
  <input type="submit" value="전송">
</form>
</body>
</html>