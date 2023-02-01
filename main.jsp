<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="com.hb.dao.*" %>
<%@ page import="com.hb.dto.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인 페이지</title>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<style>
	#bottom{
		border: 1px solid grey;
		padding: 10px;
		margin-left: 1000px;
	}
</style>
</head>
<script>	
	$(function() {
		$("#btn_login").click(function(){
			location.href="Login.jsp";
		});
	});
</script>
<body>
	<h1>메인페이지</h1>
	<div class="info">
		<button type="button" id="btn_login" style="margin-left: 1000px;">로그인</button>
	</div>
	<div>
		<h3>구입할 컨텐츠를 선택하세요</h3>
	</div>
	<div class="no1">
		<img src="image/Intro_350_408.png"> 
		<img src="image/Java_350_408.png">
		<img src="image/Cpp_350_408.png">
	</div>
	<div>
		<span style="margin-left: 100px;">100,000포인트</span>
		<span style="margin-left: 250px;">500,000포인트</span>
		<span style="margin-left: 300px;">300,000포인트</span>
	</div>
	<div id="bottom">
		<div><span><광고></span></div>
		<img src="image/korea_it.png">
	</div>
</body>
</html>