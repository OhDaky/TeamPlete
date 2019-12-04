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
<link rel="stylesheet" type="text/css"
   href="${ pageContext.request.contextPath }/resources/css/quill.snow.css">
<!-- END: Page CSS-->


<script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
<style>


</style>
</head>
<body>

	<c:choose>
	<c:when test="${ empty loginVO }">
	<% 
	response.sendRedirect("/");
	%>
	</c:when>
	<c:otherwise>

   <header> <jsp:include page="/WEB-INF/jsp/include/navbar.jsp" />
   </header>
   <div class="app-content content">
	 <div class="content-wrapper" id="contentWrapper">
   
	<div class="content-header row">
                <div class="content-header-left col-md-9 col-12 mb-2">
                        <div class="col-12">
                            <h2 class="content-header-title float-left mb-0 ">할 일 작성하기</h2>                            
                        </div>
                </div>
            </div>

	<form method="post" enctype="multipart/form-data"
		action="${ pageContext.request.contextPath}/board/${ taskInfo.taskId }/write"
		name="boardWriteForm">
		<input type="hidden" name="writerId" value="${ loginVO.memberid }">
		<input type="hidden" name="writerName" value="${ loginVO.name }">
		<div class="col-xl-3 col-md-6 col-sm-6">
			<div class="card">
				<div class="card-content">
					<div class="card-header">
						<h4 class="card-title">할 일 추가하기</h4>
					</div>
					<div class="card-body">
						<div id="writeForm">
							<div class="form-body">
								<div class="form-group">
									<label for="title" class="sr-only">제목을 입력하세요</label> <input
										type="text" class="form-control form-control-plaintext" placeholder="제목을 입력하세요" name="title"
										required>
								</div>

								<div class="form-group">
									<label for="content" class="sr-only">내용</label>														
									
									<textarea id="content" rows="5" class="form-control form-control-plaintext" name="content" placeholder="내용을 입력하세요"></textarea>		
									<div style="color: black;" id="fileForm">
										<button type="button"
											class="btn btn-outline-primary round btn-block"
											name="fileBtn" id="fileBtn">파일 추가</button>
									</div>
								</div>


							</div>
						</div>
						<button type="button" onClick="checkForm()"
							id="submitbutton" class="btn btn-outline-success round btn-block">등록</button>
					</div>
				</div>
			</div>
		</div>
	</form>











   
   
   <footer>
   </footer>
	</div>
	</div>
	
	</c:otherwise>
	</c:choose>



   <!-- BEGIN: Vendor JS-->
   <script
      src="${ pageContext.request.contextPath }/resources/js/vendors.min.js"></script>
   <!-- BEGIN Vendor JS-->

   <!-- BEGIN: Page Vendor JS-->
   <script
      src="${ pageContext.request.contextPath }/resources/js/jquery.sticky.js"></script>
   <script
      src="${ pageContext.request.contextPath }/resources/js/quill.min.js"></script>   
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