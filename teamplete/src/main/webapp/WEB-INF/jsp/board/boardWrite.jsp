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
							autofocus="autofocus" required></td>
					</tr>
					<tr>
						<th width="23%" style="color:black;">내용</th>
						<td><textarea rows="15" name="content" style="width:100%;"></textarea></td>
					</tr>
<!-- 					<tr> -->
<!-- 						<th width="23%" style="color:black;">다중 첨부파일</th> -->
<!-- 						<td style="color:black;"><input type="file" id="files" name="files" value="" multiple></td> -->
<!-- 					</tr> -->
					<tr>
						<th width="23%" style="color:black;">첨부파일</th>
						<td style="color:black;" id="fileForm">
						<button type="button" name="fileBtn" id="fileBtn">파일 추가</button>
<!-- 							<input type="file" id="files[0]" name="files[0]" value=""><br> -->
<!-- 							<input type="file" id="files[1]" name="files[1]" value=""><br> -->
<!-- 							<input type="file" id="files[2]" name="files[2]" value=""><br> -->
<!-- 							<input type="file" id="files[3]" name="files[3]" value=""><br> -->
<!-- 							<input type="file" id="files[4]" name="files[4]" value=""> -->
						</td>
					</tr>
					
				</table>
				<button type="button" onClick="checkForm()" class="btn btn-default">등록</button>
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

var index = 0;

$("button[name='fileBtn']").click(function() {
	$('#fileForm').append('<br name="fileBr' + index +'"><input type="file" id="files[' + index + ']" name="files[' + index + ']" value="">');
	$('#fileForm').append('<button type="button" name="btn'+index+'" class="btn black ml15" style="padding: 3px 5px 6px 5px; color: red;" onClick="deleteFile(' + index + ')">X</button>');
	console.log('<br><input type="file" id="files[' + index + ']" name="files[' + index + ']" value="">')
	index += 1;
});


function deleteFile(idx) {
	$("br[name='fileBr" + idx + "']").remove();
	$("input[name='files[" + idx + "]']").remove();
	$("button[name='btn" + idx + "']").remove();
	console.log(idx);
}


function checkForm() {
	
	var form = document.boardWriteForm;
	
	if (!form.title.value) {
		alert('제목은 필수항목입니다.');
		form.title.focus();
		return false;
	}
		
	var cnt = 0;
	for(i = 0; i < index; i++) {
		if(document.getElementById('files[' + i + ']')) {
		if ($("input[name='files[" + i + "]']").val() != ""){
			document.getElementById('files[' + i + ']').setAttribute('name', 'files[' + cnt + ']');
			cnt ++;
		}else {
			$("br[name='fileBr" + i + "']").remove();
			$("input[name='files[" + i + "]']").remove();
			$("button[name='btn" + i + "']").remove();
		}
		}
	}
	
	form.submit();
}

</script>
</body>
</html>