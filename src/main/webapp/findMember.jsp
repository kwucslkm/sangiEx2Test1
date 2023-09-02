<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="com.test.test1.model.MemberDAO" %>
<%@ page import="com.test.test1.model.MemberDTO" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	* {
		padding : 0;
		margin : 0;
	}
	table, th,td,tr {
		border : solid 1px;
		border-collapse : collapse;
		text-align : center;
	}
</style>
</head>
<body>
	<h2>직원정보조회결과</h2>

	<div id="findMemberTable">
		<table>
			<tr>
				<th>성명</th>
				<th>사번</th>
				<th>직급</th>
				<th>직책</th>
				<th>연락처</th>
				<th>소속부서</th>
			</tr>
			<%
				request.setCharacterEncoding("utf-8");
				String searchType = request.getParameter("searchType");
				String idValue = request.getParameter("idValue");
				String deptValue = request.getParameter("deptValue");
				System.out.println("jsp searchType + idValue + deptValue "+" "+searchType+" "+idValue+" "+deptValue);
				MemberDAO memberDAO = new MemberDAO();
			
				List<MemberDTO> memberList = memberDAO.findMember(searchType, idValue, deptValue);
				for (MemberDTO m : memberList){
			%>
			<tr>
				<td><%=m.getName() %></td>
				<td><%=m.getId() %></td>
				<td><%=m.getPosition() %></td>
				<td><%=m.getDuty() %></td>
				<td><%=m.getPhone() %></td>
				<td><%=m.getDept() %></td>
			</tr>
			<%
				}
			%>
			
		
		
		
		</table>
	
	</div>
	
</body>
</html>