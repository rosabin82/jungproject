<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
</head>
<script>	
	$(function() {
		$("#btn_login").click(function() {
			location.href = "main.jsp";
		});
		$("#btn_register").click(function() {
			location.href = "register.jsp";
		});
	});
</script>
<body>
	<form>
	<h1>로그인</h1>
	ID : <input type="text" name="id"/><br/>
	PW : <input type="password" name="pw" /><br/>
	<button type="button" id="btn_login">로그인 </button><br/>
	<button type="button" id="btn_register">회원가입 </button>
	</form>
</body>
</html>