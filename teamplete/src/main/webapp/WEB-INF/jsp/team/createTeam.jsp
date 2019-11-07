<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
<%-- 		<form:form method="post" modelAttribute="memberVO" class="login-form"> --%>
<!-- 			<div class="form-group"> -->
<!-- 				<label for="team_name" class="text-uppercase">Team Name</label><br /> -->

<%-- 				<form:input path="team_name" id="team_name" class="form-control" --%>
<%-- 					size="35px" /> --%>
<!-- 				<br> -->
<%-- 				<form:errors path="team_name" class="error" /> --%>
<!-- 				<div id="checkMsg"></div> -->
			
<!-- 			<button type="submit" class="btn btn-login float-right">Create Team</button> -->

<%-- 		</form:form> --%>

			<form method="post" action="${ pageContext.request.contextPath }/team/createteam"
            name="inputForm">
            <input type="hidden" name="ownerId" value="${ loginVO.memberid }">    
            <table id="writeform">
					<tr>
						<th width="23%">팀이름</th>
						<td><input type="text" name="teamName" style="width:100%;"
							autofocus="autofocus"></td>
					</tr>
					
					    <tr>
<!--                   <th width="25%">팀장아이디</th> -->
<%--                   <td>${ loginVO.memberid }</td> --%>
               </tr>
				</table>
				<button type="submit" class="btn btn-default">등록</button>
			</form>
	</div>

</body>
</html>