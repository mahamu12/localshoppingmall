<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
	<script src="/shoppingmall/member/register.js"></script>
</head>
<body>
	<div id="regForm" class="box">
	<ul>
	<li><label for="id">아이디</label>
	<input id="id" name="id" type="email" size="20"
	maxlength="50" placeholder="mahmau@naver.com">
	<button id="checkId">ID중복확인</button>
	<li><label for="passwd">비밀번호</label>
	<input id="passwd" name="passwd" type="password" size="20"
	maxlength="16" placeholder="6~16자 숫자/문자">
	<li><label for="repass">비밀번호 재입력</label>
	<input id="repass" name="repass" type="password" size="20"
	maxlength="16" placeholder="비밀번호 재입력">
	<li><label for="name">이름</label>
	<input id="name" name="name" type="text" size="20"
	maxlength="10" placeholder="황규현">
	<li><label for="address">주소</label>
	<input id="address" name="address" type="text" size="30"
	maxlength="50" placeholder="주소입력">
	<li><label for="tel">전화번호</label>
	<input id="tel" name="tel" type="tel" size="20"
	maxlength="20" placeholder="전화번호 입력">
	<li class="label2"><button id="process">가입하기</button>
	<button id="cancle">취소</button>
	</ul>
	</div>
</body>
</html>