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


<script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
<style>
.sec {
	margin-left: 25%;
	padding-top: 10%;
}

</style>
</head>
<body>

	<header> <jsp:include page="/WEB-INF/jsp/include/navbar.jsp" />
	</header>
	
	<section class="sec" id="sec">
	
	<form method="post" enctype="multipart/form-data" 
	action="${ pageContext.request.contextPath}/board/${ taskInfo.taskId }/write"
            name="boardWriteForm">
            <input type="hidden" name="writerId" value="${ loginVO.memberid }">    
            <input type="hidden" name="writerName" value="${ loginVO.name }">
            <table id="writeForm">
					<tr>
						<th width="23%" style="color:black;">제목</th>
						<td><input type="text" name="title" style="width:100%;"
							autofocus="autofocus"></td>
					</tr>
					<tr>
						<th width="23%" style="color:black;">내용</th>
						<td><textarea rows="15" name="content" style="width:100%;"></textarea></td>
					</tr>
<!-- 					<tr> -->
<!-- 						<th scope="row">첨부파일</th> -->
<!-- 						<td><input type="file" accept="image/*" id="files[0]" name="files[0]" value=""> -->
<!-- 						</td> -->
<!-- 					</tr> -->
					
				</table>
				<button type="submit" class="btn btn-default">등록</button>
			</form>
	
	
	</section>
	
	
	<footer>
	</footer>




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


</script>
</body>
</html>