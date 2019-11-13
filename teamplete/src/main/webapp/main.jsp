<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="${ pageContext.request.contextPath }/resources/css/bootstrap.css">
<link rel="stylesheet" type="text/css"
	href="${ pageContext.request.contextPath }/resources/css/colors.css">
<link rel="stylesheet" type="text/css"
	href="${ pageContext.request.contextPath }/resources/css/components.css">
<link
	href="https://fonts.googleapis.com/cssf?family=Montserrat:300,400,500,600"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="https://cdn.jsdelivr.net/gh/moonspam/NanumSquare@1.0/nanumsquare.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,600">
<link rel="stylesheet" type="text/css"
	href="${ pageContext.request.contextPath }/resources/css/vendors.min.css">



<link rel="stylesheet" type="text/css"
	href="${ pageContext.request.contextPath }/resources/css/dark-layout.css">
<link rel="stylesheet" type="text/css"
	href="${ pageContext.request.contextPath }/resources/css/semi-dark-layout.css">

<!-- BEGIN: Page CSS-->
<link rel="stylesheet" type="text/css"
	href="${ pageContext.request.contextPath }/resources/css/horizontal-menu.css">
<link rel="stylesheet" type="text/css"
	href="${ pageContext.request.contextPath }/resources/css/palette-gradient.css">
<link rel="stylesheet" type="text/css"
	href="${ pageContext.request.contextPath }/resources/css/authentication.css">
<!-- END: Page CSS-->
<style>
p {
	color: black;
}

label {
	color: black;
}
</style>
</head>
<body
	class="horizontal-layout horizontal-menu 1-column  navbar-floating footer-static bg-full-screen-image  blank-page blank-page"
	data-open="hover" data-menu="horizontal-menu" data-col="1-column">



	<div class="app-content content">
		<div class="content-overlay"></div>
		<div class="header-navbar-shadow"></div>
		<div class="content-wrapper">
			<div class="content-header row"></div>
			<div class="content-body">
				<section class="row flexbox-container">
				<div class="col-xl-8 col-11 d-flex justify-content-center">
					<div class="card bg-authentication rounded-0 mb-0">
						<div class="row m-0">
							<div
								class="col-lg-6 d-lg-block d-none text-center align-self-center px-1 py-0">
								<img
									src="${ pageContext.request.contextPath }/resources/images/login.png"
									alt="branding logo">
							</div>
							<div class="col-lg-6 col-12 p-0">
								<div class="card rounded-0 mb-0 px-2">
									<div class="card-header pb-1">
										<div class="card-title">
											<h4 class="mb-0">로그인</h4>
										</div>
									</div>
									<p class="px-2">팀플리트에 오신 것을 환영합니다..</p>
									<div class="card-content">
										<div class="card-body pt-1">
											<form method="post" style="margin-top: 5%;"
												action="${ pageContext.request.contextPath }/login"
												name="inputForm" onsubmit="return checkForm()"
												class="login-form">
												<fieldset
													class="form-label-group form-group position-relative has-icon-left">
													<input type="text" class="form-control" name="memberid"
														id="user-name" placeholder="Username" required>
													<div class="form-control-position">
														<i class="feather icon-user"></i>
													</div>
													<label for="user-name">Username</label>
												</fieldset>

												<fieldset
													class="form-label-group position-relative has-icon-left">
													<input type="password" class="form-control" name="password"
														id="user-password" placeholder="Password" required>
													<div class="form-control-position">
														<i class="feather icon-lock"></i>
													</div>
													<label for="user-password">Password</label>
												</fieldset>
												<div
													class="form-group d-flex justify-content-between align-items-center">
													<div class="text-left">
														<fieldset class="checkbox">
															<div class="vs-checkbox-con vs-checkbox-primary">
																<input type="checkbox"> <span
																	class="vs-checkbox"> <span
																	class="vs-checkbox--check"> <i
																		class="vs-icon feather icon-check"></i>
																</span>
																</span> <span class="">Remember me</span>
															</div>
														</fieldset>
													</div>
													<div class="text-right">
														<a href="auth-forgot-password.html" class="card-link">Forgot
															Password?</a>
													</div>
												</div>
												<a href="${ pageContext.request.contextPath }/member/join"
													class="btn btn-outline-primary float-left btn-inline">회원가입</a>
												<button type="submit" class="btn btn-primary float-right btn-inline">로그인</button>
											</form>
										</div>
									</div>


									<div class="login-footer">
										<div class="divider">
											<div class="divider-text">OR</div>
										</div>
										<div class="footer-btn d-inline">
											<a href="#" class="btn btn-facebook"><span
												class="fa fa-facebook"></span></a> <a href="#"
												class="btn btn-twitter white"><span
												class="fa fa-twitter"></span></a> <a href="#"
												class="btn btn-google"><span class="fa fa-google"></span></a>
											<a href="#" class="btn btn-github"><span
												class="fa fa-github-alt"></span></a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				</section>
			</div>
		</div>
	</div>
	<!-- END: Content-->




	<!-- BEGIN: Vendor JS-->
	<script
		src="${ pageContext.request.contextPath }/resources/js/vendors.min.js"></script>
	<!-- BEGIN Vendor JS-->

	<!-- BEGIN: Page Vendor JS-->
	<script
		src="${ pageContext.request.contextPath }/resources/js/jquery.sticky.js"></script>
	<!-- END: Page Vendor JS-->

	<!-- BEGIN: Theme JS-->
	<script
		src="${ pageContext.request.contextPath }/resources/js/app-menu.js"></script>
	<script src="${ pageContext.request.contextPath }/resources/js/app.js"></script>
	<script
		src="${ pageContext.request.contextPath }/resources/js/components.js"></script>
	<!-- END: Theme JS-->

	<!-- BEGIN: Page JS-->
	<!-- END: Page JS-->


	<a href="${ pageContext.request.contextPath }/drag"
		class="btn btn-primary">drag</a>
	<a href="${ pageContext.request.contextPath }/practice"
		class="btn btn-danger">practice</a>

	<script>
	
 	<c:if test = '${ not empty loginVO }'>
    	location.href = "${ pageContext.request.contextPath}/team/${ loginVO.memberid }"
	</c:if>

		
   if ("${ param.msg }")
      alert("${ param.msg }");
   
   
</script>
</body>
</html>