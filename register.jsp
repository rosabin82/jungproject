<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
</head>
<script>	
	$(function() {
		$("#btn").click(function() {
			alert('가입되었습니다. 로그인 해주세요.');
			location.href = "Login.jsp";
		});
	});
</script>
<body>
	<form>
		<h1>회원가입</h1>
		ID : <input type="text" name="id"/><br/>
		PW : <input type="password" name="pw" /><br/>
		Name : <input type="text" name="name"/><br/>
		<button type="button" id="btn"> 작성완료 </button>
	</form>
</body>
</html>