<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>catch를 이용해서 예외 처리</title>
</head>
<body>
	<h1>catch를 이용해서 예외 처리 사용하기</h1>
	<pre>특정 문제나 에러가 발생했을 때 예외처리를 작성할 수 있음
	
		c:catch 특정 문제가 발생할 것을 대비해서 감싸주는 것 에러 방지 
		
		c:if 를 사용할 때 catch 안에 많이 사용
	</pre>
	
	<c:catch var="e"> 
		<c:set var="result" value="${10/0 }"/> <!-- 10/0 계산 표현할 수 없다는 에러가 발생하는 방식 -->
	</c:catch>
	
	<c:if test="${not empty e }">
		에러가 발생했습니다. ${e.message }
	</c:if>
</body>
</html>