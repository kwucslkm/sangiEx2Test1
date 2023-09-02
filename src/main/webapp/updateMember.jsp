<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.test.test1.model.MemberDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>updateMember.jsp</h2>
		<%
			request.setCharacterEncoding("utf-8");
			String id = request.getParameter("id");
			String name = request.getParameter("name");
			String dept = request.getParameter("dept");
			String position = request.getParameter("position");
			String duty = request.getParameter("duty");
			String phone = request.getParameter("phone");
			
			MemberDAO memberDAO = new MemberDAO();
			int result = memberDAO.updateMember(id, name, dept, position, duty, phone);
			if (result >0){
		%>
		<script>
			alert("수정성공");
			location.href="index.jsp";
		</script>
		<%
			}else {
		%>
		<script>
			alert("수정실패");
			location.href="saveMemberForm.jsp";
		</script>		
		<%		
			}
		%>
</body>
</html>