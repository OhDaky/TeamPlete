<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
<style>

</style>
</head>
<body>
	<div>
		<form:form method="post" modelAttribute="memberVO" class="login-form">
			<div class="form-group">
				<label for="id" class="text-uppercase">ID</label><br />

				<form:input path="memberid" id="memberid" class="form-control"
					size="35px" />
				<br>
				<form:errors path="memberid" class="error" />
				<div id="checkMsg"></div>

			</div>
			<div class="form-group">
				<label for="name" class="text-uppercase">Username</label><br />


				<form:input path="name" class="form-control" size="35px" />
				<br>
				<form:errors path="name" class="error" />
			</div>


			<div class="form-group">
				<label for="password" class="text-uppercase">Password</label><br />

				<form:input path="password" type="password" class="form-control"
					size="35px" />
				<br>
				<form:errors path="password" class="error" />
			</div>


			<div class="form-group">
				<label for="email" class="text-uppercase">Email</label><br />

				<form:input path="email" class="form-control" size="12px" />
			</div>
			
			<button type="submit" class="btn btn-login float-right">Join</button>

		</form:form>
	</div>

</body>
</html>