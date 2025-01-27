<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User List</title>
</head>
<body>
	<h1>유저 조회하기</h1> 
	<!-- JSTL 형식으로 작성할 예정 -->
	<table border="1">
		<thead>
		<tr>
			<th>ID</th>
			<th>이름</th>
			<th>이메일</th>
		</tr>
		</thead>
			<c:forEach var="user" items="${users}">
				<tr>
					<td>${user.id }</td>
					<td>${user.username }</td>
					<td>${user.useremail }</td>
				</tr>
			</c:forEach>
	</table>
	
	
	
	
	
	<h2>유저 추가하기</h2>
	<form action="/addUser" method="post">
		이름: <input type="text" name="username" />
		이메일: <input type="email" name="useremail" />
		버튼: <input type="submit" value="saveUser" />
	</form>
</body>
</html>