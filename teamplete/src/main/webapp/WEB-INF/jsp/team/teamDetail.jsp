<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>

<%
List<String> colorlist = new ArrayList<>();
colorlist.add("bg-primary");
colorlist.add("bg-info");
colorlist.add("bg-warning");
colorlist.add("bg-success");
colorlist.add("bg-danger");
request.setAttribute("colorlist", colorlist);
%>


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
	href="${ pageContext.request.contextPath }/resources/css/select2.min.css">



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
<script>
</script>

</head>
<body>

	<header> <jsp:include page="/WEB-INF/jsp/include/navbar.jsp" />
	</header>

	<div class="app-content content">
		<div class="content-wrapper" id="contentWrapper">

			<div class="content-header row">
				<div class="content-header-left col-md-9 col-12 mb-2">
					<div class="col-12">
						<h2 class="content-header-title float-left mb-0 ">${ team.teamName }</h2>

						<c:forEach items="${ members }" var="member">

							<div class="avatar bg-success mr-1">
								<div class="avatar-content"
									style="text-overflow: elipisis !important;">${ member.memberid }
								</div>
							</div>
						</c:forEach>
					</div>
				</div>
			</div>


			<c:if test="${ loginVO.memberid eq team.ownerId }">
				<button type="button" name="modify" id="modifyBtn"
					class="btn btn-success" onclick="modifyFunc(${ team.teamId })"
					data-toggle="modal" data-target="#updateTeam">팀 수정</button>
				<button type="button" name="delete" class="btn btn-danger"
					value="${ team.teamId }">팀 삭제</button>
			</c:if>

			<!-- 	<section id="form-and-scrolling-components"> -->






			<div>


				<section id="draggable-cards">
				<div class="row" id="card-drag-area">
					<div class="col-xl-3 col-md-6 col-sm-6">
						<div class="card" id="showdetail">
							<div class="card-content">

									<div class="card-header">
										<h4 class="card-title">초대할 사람의 <strong>ID</strong>를 <br> 입력해주세요</h4>
									</div>
									<div class="card-body">
											<form method="post"
												action="${pageContext.request.contextPath}/teamdetail/${ team.teamId }"
												name="createTeamForm">
												<input type="hidden" name="teamId" id="teamId"
													value="${ team.teamId }"> <select
													class="select2 form-control" id="selectMulti"
													multiple="multiple">
													<option></option>
												</select> <input type="hidden" name="memberId" id="memberId"
													value="$('#selectMulti').select2('data')">

												<button type="button" onClick="submitMember()"
													class="btn btn-primary round btn-block mt-1">초대하기</button>
											</form>
									</div>
							</div>
						</div>
					</div>


					<c:forEach var="task" items="${ taskList }" varStatus="status">
						<div class="col-xl-3 col-md-6 col-sm-6">
							<div class="card" id="showdetail">
								<div class="card-content">
									<div class="card-body">
										<div class="card-header">
											<h1 class="card-title">작성자: ${ task.writerName }<br> 태스크
												이름: ${ task.content }</br></h1>
										</div>

										<ul class="list-group list-group-flush">
										<c:set var="count" value="0" scope="page" />
										<c:set var="randomcolor" value="" scope="page" />										
										<c:forEach var="board" items="${ boardList[status.index] }">
										<c:set var="rand"><%= java.lang.Math.round(java.lang.Math.random() * 4) %></c:set>										
										<c:set var="count" value="${count + 1}" scope="page"/>
                                        <li class="list-group-item">
                                            <span class="badge badge-pill ${colorlist[count%5]} float-right">${count}</span>
                                           <h4 id="boardTitle" class="primary"
														onClick="boardDetailFunc(${ board.boardId })">${ board.title }</h4>
                                        </li>
                                       
										</c:forEach>
										 </ul>
										<button type="submit" class="btn btn-primary btn-block round mb-1"
											id="addBoard" onClick="writeBoard(${ task.taskId })">Board
											추가하기</button>
										<div>
											<%--                      <button name="modifyTask" value="${ task.taskId }">수정</button> --%>
											<button name="deleteTask" class="btn btn-danger btn-block round"
												value="${ task.taskId }">Task 삭제하기</button>
										</div>
									</div>
								</div>
							</div>
						</div>

					</c:forEach>
				</div>

				<!-- 태스크 등록 Modal -->
				<button id="createTaskBtn" class="btn btn-success"
					data-toggle="modal" data-target="#createTask">태스크 등록</button>

				<div class="modal fade text-left" id="createTask" tabindex="-1"
					role="dialog" aria-labelledby="myModalLabel33" aria-hidden="true">
					<div
						class="modal-dialog modal-dialog-centered modal-dialog-scrollable"
						role="document">
						<div class="modal-content">
							<div class="modal-header">
								<h4 class="modal-title" id="myModalLabel33">태스크를 추가해주세요.</h4>
								<button type="button" class="close" data-dismiss="modal"
									aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>
							<form method="post"
								action="${pageContext.request.contextPath}/teamdetail/${ team.teamId }/task"
								name="createTaskForm">
								<input type="hidden" name="writerId" id="writerId"
									value="${ loginVO.memberid }"> <input type="hidden"
									name="writerName" id="writerName" value="${ loginVO.name }">
								<input type="hidden" name="teamId" id="teamId"
									value="${ team.teamId }">
								<div class="modal-body">
									<label>Content: </label>
									<div class="form-group">
										<textarea class="form-control" name="content" id="content"
											rows="5"></textarea>
									</div>
									<div class="modal-footer">
										<button type="button" id="taskSubmit" class="btn btn-primary"
											onClick="submitTask()" data-dismiss="modal">Create</button>

									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
			</section>
		</div>
	</div>
	</div>
	</section>
	</div>

	<!-- Modal3 (수정) -->
	<div class="modal fade text-left" id="updateTeam" tabindex="-1"
		role="dialog" aria-labelledby="myModalLabel33" aria-hidden="true">
		<div
			class="modal-dialog modal-dialog-centered modal-dialog-scrollable"
			role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title" id="myModalLabel33">팀의 정보를 수정해주세요.</h4>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<form method="post" name="modifyTeam">

					<div class="modal-body">
						<div class="form-group">
							<label>Team Name: </label>
							<div>
								<input type="text" name="teamName" id="teamNameM"
									class="form-control" value="${ team.teamName }" />
							</div>
							<label>deadline: (선택입니다) </label>
							<div class="form-group">
								<input type="date" name="deadline" id="deadlineM"
									class="form-control" value="${ team.deadline }" />
							</div>
							<div class="modal-footer">
								<button type="button" id="modifyButton" onClick="submit2()"
									class="btn btn-primary" data-dismiss="modal">Modify</button>
							</div>
						</div>
				</form>
			</div>
		</div>
	</div>
	</div>

	<!-- 태스크 조회, 태스크 추가 -->

  
	
	


	<footer>
	</footer>
	
	



	<!-- BEGIN: Vendor JS-->
	<script
		src="${ pageContext.request.contextPath }/resources/js/vendors.min.js"></script>
	<!-- BEGIN Vendor JS-->

	<!-- BEGIN: Page Vendor JS-->
	<script
		src="${ pageContext.request.contextPath }/resources/js/jquery.sticky.js"></script>
	    <script src="${ pageContext.request.contextPath }/resources/js/dragula.min.js"></script>
	<script src="${ pageContext.request.contextPath }/resources/js/drag-drop.js"></script>    	
	<!-- END: Page Vendor JS-->

	<!-- BEGIN: Theme JS-->
	<script
		src="${ pageContext.request.contextPath }/resources/js/app-menu.js"></script>
	<script src="${ pageContext.request.contextPath }/resources/js/app.js"></script>
	<script
		src="${ pageContext.request.contextPath }/resources/js/components.js"></script>
	<!-- END: Theme JS-->

	<script
		src="${ pageContext.request.contextPath }/resources/js/select2.full.min.js"></script>
			<script
		src="${ pageContext.request.contextPath }/resources/js/form-select2.js"></script>
	<!-- BEGIN: Page JS-->
	<!-- END: Page JS-->


	<script>
	
	var id = '';
	
	function modifyFunc(modifyTeamId) {
		   id = modifyTeamId;
		   
	}
	function boardDetailFunc(boardId) {
	      location.href = "${ pageContext.request.contextPath}/board/" + boardId;
	   }
	
	var taskId = "";
	
	function writeBoard(taskId) {
		taskId = taskId;
		location.href = "${ pageContext.request.contextPath}/board/" + taskId + "/write";
		   
	}

	
	   function submit2(){
		    var form2 = document.modifyTeam;
		    form2.action = "${pageContext.request.contextPath}/team/update/" + id;
		    form2.submit();
		}
	   
	   
   function submitMember(){
	    var form = document.createTeamForm;
	   
	    var array = $('#selectMulti').select2('data');
	    var memberList2=[];
	    var index= $('#selectMulti').select2('data').length;
	    for(i=0;i<index;i++){
			   memberList2.push(array[i].id);
	    }   
	    var result = confirm(memberList2 + "님을 팀에 추가하시겠습니까?");
	    if(result) {
// 	   
	       $.ajax({
	          type : 'POST',
	          url : '/teamdetail/${ team.teamId }',
	          data : JSON.stringify(memberList2),
	          contentType : "application/json",
	          success : function(data) {
	        	  console.log(data);

// 	         	  $('#membersView').load(document.URL +  ' #membersView');
	        	  location.reload();
	          },
	          error : function(error) {
	        	  console.log(error);
	          }
	       });
	    }else {
	    	return;
	    }
	    
	}
   
   
   
   function submitTask(){

// 	    var createTaskForm = document.createTaskForm;
	    
// 	    createTaskForm.submit();

       var data = {writerId : $('#writerId').val(),
    		   	   writerName : $('#writerName').val(),
    		   	   teamId : $('#teamId').val(),
    		   	   content : $('#content').val()
    		   	   };
       $.ajax({
          type : 'POST',
          url : '/teamdetail/${ team.teamId }/task',
          data : JSON.stringify(data),
          contentType : "application/json",
          success : function(data) {
        	  console.log(data);

//         	  $('#taskTable').load(document.URL +  ' #taskTable');
        	  location.reload();
          },
          error : function(error) {
        	  console.log(error);
          }
       });
   }
   
   	var taskId = '';
	$(document).ready(function() {
		
		$("button[name='deleteTask']").click(function() {
			
			taskId = this.value;
			console.log(taskId);
			if(confirm("삭제하시겠습니까?")){
				$.ajax({
					url : '/task/delete/' + taskId,
					type : 'DELETE'
				});
// 				$('#taskTable').load(document.URL +  ' #taskTable');
				location.reload();
			} else return;

		});
		
	});
	
	var id = "";
	
	$("button[name='delete']").click(function() {
		id = this.value;
		console.log(id);
		if(confirm("팀을 삭제하시겠습니까?")){
			$.ajax({
				url : '/team/delete/' + id,
				type : 'DELETE'
			});
			
			location.href = "${ pageContext.request.contextPath}/team/${ loginVO.memberid }";
		} else return;

	});


   
   
</script>
</body>
</html>