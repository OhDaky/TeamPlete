<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

.teamCard {

	width: 200px;
	heigth: auto;
	background-color: #ffffff;
}

#deadlineTxt {
	color: red;
}



</style>
	

</head>
<body>
	<header> <jsp:include page="/WEB-INF/jsp/include/navbar.jsp" />
	</header>
	
	<section>

	<div style="margin-left: 22%; margin-right: 2%; padding-top: 10%;">
		<c:if test="${ not empty loginVO }">
<%-- 						<a href="${ pageContext.request.contextPath }/calendar">캘린더</a> --%>
			<div>
				<table id="list" class="table">
				<c:set var="i" value="0" />
				<c:set var="j" value="4" />
				<c:set var="cnt" value="1" />

					<c:forEach var="team" items="${ teamList }" varStatus="status">
						<c:if test="${ i%j == 0 }">
							<tr>
						</c:if>
						<td><div class="teamCard"
								onclick="teamDetail(${ team.teamId })" id="showdetail">
								<img class="teamImg" style="width: 100%; height: auto;"
								src="https://source.unsplash.com/400x300/?business"
								alt="avatar">

								
								<br>
								<c:out value="${ team.teamName }" />
								<br>
								<c:out value="팀원: " />
								<c:out value="${ team.members }" />
								<br>
								<c:out value="남은 과제 제출 기한: " />
								<span id="deadlineTxt"><c:out
										value="${ deadline[status.index] }" /></span>
							</div>
						</td>
						<c:if test="${ i%j == j-1 }">
							</tr>
						</c:if>
						<c:set var="i" value="${i+1}" />
						<c:set var="cnt" value="${cnt + 1}" />
					</c:forEach>

				</table>
			</div>

			<!-- 			<section id="form-and-scrolling-components"> -->
			<div class="row match-height">
				<div class="col-md-4 col-sm-12">
<!-- 					<div class="card"> -->
<!-- 						<div class="card-content"> -->
<!-- 							<div class="card-body"> -->
<!-- 								<div class="form-group"> -->
									<!-- Button trigger modal -->
									<h1 class="btn btn-outline-success"
										data-toggle="modal" data-target="#inlineForm" style="font-size:100px">+</h1>

									<!-- Modal -->
									<div class="modal fade text-left" id="inlineForm" tabindex="-1"
										role="dialog" aria-labelledby="myModalLabel33"
										aria-hidden="true">
										<div
											class="modal-dialog modal-dialog-centered modal-dialog-scrollable"
											role="document">
											<div class="modal-content">
												<div class="modal-header">
													<h4 class="modal-title" id="myModalLabel33">Inline
														Create Team Form</h4>
													<button type="button" class="close" data-dismiss="modal"
														aria-label="Close">
														<span aria-hidden="true">&times;</span>
													</button>
												</div>
												<form method="post"
													action="${pageContext.request.contextPath}/team/${loginVO.memberid}"
													name="createTeamForm">
													<input type="hidden" name="ownerId"
														value="${ loginVO.memberid }">
													<div class="modal-body">
														<label>Team Name: </label>
														<div class="form-group">
															<input type="text" name="teamName" id="teamName"
																placeholder="Team Name" class="form-control">
														</div>
														<div class="modal-footer">
										<button type="button" class="btn btn-outline-success"
										data-toggle="modal" data-target="#inlineForm2">next
										Modal</button>

								<!-- Modal2 -->		
								<div class="modal fade text-left" id="inlineForm2" tabindex="-1"
										role="dialog" aria-labelledby="myModalLabel33"
										aria-hidden="true">
										<div
											class="modal-dialog modal-dialog-centered modal-dialog-scrollable"
											role="document">
											<div class="modal-content">
												<div class="modal-header">
													<h4 class="modal-title" id="myModalLabel33">Inline
														Create Team Form</h4>
													<button type="button" class="close" data-dismiss="modal"
														aria-label="Close">
														<span aria-hidden="true">&times;</span>
													</button>
												</div>
													<div class="modal-body">
														<label>deadline: (선택입니다) </label>
														<div class="form-group">
															<input type="date" name="deadline" id="deadline"
																placeholder="Deadline" class="form-control">
														</div>
														<div class="modal-footer">
															<button type="button" onClick="submit()"
																class="btn btn-primary" data-dismiss="modal">Create</button>
														</div>
													</div>
											</div>
										</div>
									</div>

														</div>
													</div>
												</form>
											</div>
										</div>
									</div>

									
									
								</div>
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</div> -->
			</div>
<!-- 			</section> -->
		</c:if>
	</div>
	</section>

	<footer> </footer>

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


	<script>
   function submit(){
	    var form = document.createTeamForm;
	    
	    form.submit();
	}
   
   function teamDetail(teamId) {
	    location.href = "${ pageContext.request.contextPath}/teamdetail/" + teamId;
	}
   
</script>

</body>
</html>