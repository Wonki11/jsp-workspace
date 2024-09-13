<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>유저리스트</title>
</head>
<body>
	<h1>유저 조회하기</h1> <!--  JSTL 형식으로 작성할 예정 -->
	<h2>유저 추가하기</h2>
	<form action="/addUser" method="post">
		이름 : <input type="text" name="username"/> 
		이메일 : <input type="text" name="useremail"/> 
		버튼 : <input type="submit" value="유저 저장하기"/> 
	</form>

</body>
</html>