<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "com.test.test1.model.MemberDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		String name = request.getParameter("name");
		String id = request.getParameter("id");
		MemberDAO memberDAO = new MemberDAO();
		int result = memberDAO.deleteMember(id, name);
		System.out.println("jsp 딴 결과"+result);
		if (result >0){
	%>
	<script>
		alert(" 님 퇴사처리 되었습니다.");
		location.href="index.jsp";
	</script>
	<%		
		} else {
	%>
	<script>
		alert("퇴사실패");
		location.href="deleteMemberForm.jsp";
	</script>	
	<%		
		}
	%>
</body>
</html>