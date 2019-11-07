<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
				<table id="list" class="table">
				<tr>
					<th width="10%">팀이름</th>
					<th width="10%">팀장이름</th>
				</tr>
				<c:forEach items="${ teamList }" var="team">
					<tr>
						<td>${ team.teamName }</td>
<%-- 						<td><a href="#" onclick="doAction2(${ hospital.no })" --%>
<%-- 							id="showdetail"> <c:out value="${ hospital.title }" /> --%>
<!-- 						</a></td> -->
						<td class="locactn">${ team.ownerId }</td>
					</tr>
				</c:forEach>
			</table>
	</div>
</body>
</html>