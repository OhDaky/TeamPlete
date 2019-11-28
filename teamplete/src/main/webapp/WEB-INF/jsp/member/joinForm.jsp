<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
<script>
   $(document).ready(function() {
      $('#checkbtn').on('click', function() {
         $.ajax({
            type : 'POST',
            url : '/checkSignUp',
            data : {
               "idCheck" : $('#memberid').val() 
            },
            success : function(result) {
               if ($.trim(result) == 0) {
            	   console.log(result);
                  $('#checkMsg').html('<p style="color:blue">사용가능</p>');
               } else {
            	   console.log(result);
                  $('#checkMsg').html('<p style="color:red">사용불가능</p>');
               }
            }
         });
      });
   });
</script>
<style>
.error {
   color: red;
}
</style>
</head>
<body>
	<div>
		<form:form method="post" commandName="memberVO" class="login-form">
			<div class="form-group">
				<label for="id" class="text-uppercase">ID</label><br />

				<form:input path="memberid" id="memberid" class="form-control"
					size="35px" />
				<br>
				<form:errors path="memberid" class="error" />
				<div id="checkMsg"></div>
				<button type="button" id="checkbtn" class="btn btn-default"
					style="margin-top: 2%;">중복확인</button>

			</div>
			<div class="form-group">
				<label for="name" class="text-uppercase">Username</label><br />


				<form:input path="name" class="form-control" size="35px" />
				<form:errors path="name" class="error" />
				<br>
				
				<form:hidden path="profile" value="" />
				<form:hidden path="kakao" value="N" />
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