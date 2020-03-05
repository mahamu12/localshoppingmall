<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/shoppingmall/css/style.css" />
</head>
<body>
<div id="header">
	<div id="logo" class="box">
		<img clas="noborder" id="logo" src="/shoppingmall/images/mollalogo3.png"/>
	</div>
	<div id="auth" class="box">
		<%-- 관리자용 로그인 --%>
		<c:if test="${type ==0 }">
			<jsp:include page="mngr/logon/mLoginForm.jsp"/>
		</c:if>
		<%-- 사용자용 로그인 --%>
		<c:if test="${type ==1 }">
			<jsp:include page="member/loginForm.jsp"/>
		</c:if>	
	</div>
</div>
<div id="content" class="box2">
	<jsp:include page="${cont }"/>
</div>
</body>
</html>
