<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>인사관리시스템</h2>
	<h4>인사관리 메인메뉴</h4>
	<div id="buttonBox">
		<button onclick="location.href = 'findMemberForm.jsp'">조회</button>
		<button onclick="location.href = 'saveMemberForm.jsp'">사원등록</button>
		<button onclick="location.href = 'updateMemberForm.jsp'">정보수정</button>
		<button onclick="location.href = 'deleteMemberForm.jsp'">퇴사</button>
		<button onclick="window.close()">종료</button>
	</div>
	
</body>
<script>
	
</script>
</html>