<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title><spring:message code="title.sample" /></title>
    <link type="text/css" rel="stylesheet" href="<c:url value='/css/egovframework/sample.css'/>"/>
    <script>
    </script>
</head>

<body>
	<div>
		hello world
	</div>
	<div>
		<form action="<spring:message code="url.login" />" method="post">
			<input type="hidden" name="token" value="1234" />
			id:<br>
			<input type="text" name="id" /><br>
			password:<br>
			<input type="password" name="password" /><br>
			age:<br>
			<input type="number" name="age" /><br>
			<button type="submit" >로그인</button>
		</form>
	</div>
</body>
</html>
