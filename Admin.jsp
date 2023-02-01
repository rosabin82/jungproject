<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="com.hb.dao.*" %>
<%@ page import="com.hb.dto.*" %>
<%
	memberdao bdao = new memberdao();
	ArrayList<memberdto> list = bdao.getmemberlist();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원관리</title>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<style>
		table {
			border-collapse: collapse; 
		}
		td {
			border: 1px solid grey;
			padding: 10px;
		}
</style>
<script>

</script>
</head>
<body>
	<h1>회원관리</h1>
	<div>
		<button type="button" id="btn_login" style="margin-left: 1000px;">로그인</button>
	</div>
	<table>
		<tr>
			<th>ID</th>
			<th>PW</th>
			<th>Name</th>
			<th>Point</th>
			<th>수정</th>
			<th>삭제</th>
		</tr>
		<%
			for(memberdto board : list){
		%>
		<tr>
			<td><%=board.getId() %></td>
			<td><%=board.getPassword() %></td>
			<td><%=board.getName() %></td>
			<td><%=board.getPoint() %></td>
			<td><button id="update">수정</button></td>
			<td><button id="delete">삭제</button></td>
		<%
			}
		%>
		</tr>
	</table>
	<h1>스케줄러 관리</h1>
	<button type="button" id="" >스케줄러(20초마다 포인트 1 증가)실행 시작</button>
	<button type="button" id="" >스케줄러 실행 종료</button>
</body>
</html>