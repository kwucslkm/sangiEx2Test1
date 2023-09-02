<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#deleteMemberForm {
		border = solid 1px pray;
		
	}
	
</style>
</head>
<body>
	<h2>인사관리 퇴사처리 화면</h2>
	<h4>인사관리 퇴사자 정보</h4>
	<div id="deleteMemberForm">
		<form action = "deleteMember.jsp" method = "post">
			성명 <input type="text" name="name"><br>
			사원번호 <input type="text" name="id"><br>
			<input type = "submit" value="삭제">
			<input type = "button" onclick="location.href='index.jsp'" value="취소">
			
		</form>
	</div>
</body>
</html>