<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
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

<style>
#fileName:hover {
   text-decoration: underline;
}
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
							<h2 class="content-header-title float-left mb-0 ">${ team.teamName }</h2>
						</div>
					</div>


					

			<c:if test="${ loginVO.memberid eq team.ownerId }">
				<button type="button" name="modify" id="modifyBtn"
					class="btn btn-success mb-3 mr-1" onclick="modifyFunc(${ team.teamId })"
					data-toggle="modal" data-target="#updateTeam">팀 수정</button>
				<button type="button" name="delete" class="btn btn-danger mb-3"
					value="${ team.teamId }">팀 삭제</button>
			</c:if>

			<!-- 	<section id="form-and-scrolling-components"> -->






			<div>


				<section id="draggable-cards">
				<div class="row" id="card-drag-area">
				
				
				<div class="col-xl-3 col-md-6 col-sm-6">
						 <div class="card">
                                    <div class="card-header d-flex justify-content-between">
                                        <h4>팀 구성원</h4>
                                        <i class="feather icon-more-horizontal cursor-pointer"></i>
                                    </div>
                                    <div class="card-body">
                         <c:set var="count1" value="0" scope="page" />
						<c:forEach items="${ members }" var="member">
						<c:set var="count" value="${count + 1}" scope="page"/>
						
						<c:choose>
                                <c:when test="${ not empty member.profile }">                            
                                
                                
                                
                                
                                
                                
                                <div class="d-flex justify-content-start align-items-center mb-1">
                                            <div class="avatar mr-50">
                                                <img src="${ member.profile }" alt="avtar img holder" height="35" width="35">
                                            </div>
                                            <div class="user-page-info">
                                                <h5 class="mb-0" style="font-weight:600;">${member.name }</h5>
                                                <span class="font-small-3">파일 제출 완료</span>
                                            </div>
                                        </div>                           
                                
                                
                            	</c:when>
                            	<c:otherwise>
                            	<div class="d-flex justify-content-start align-items-center mb-1">
                                            <div class="avatar ${colorlist[count%5]} mr-50">
															<div class="avatar-content"
																<c:set var = "membername" value = "${ member.name }"/>
																<c:set var = "firstletter" value = "${fn:substring(membername, 0, 1)}"/>>${firstletter}
															</div>
														</div>
                                            <div class="user-page-info">
                                                <h5 class="mb-0" style="font-weight:600;">${member.name }</h5>
                                                <span class="font-small-3">파일 제출 완료</span>
                                            </div>
                                        </div>                         	
                            	</c:otherwise>
                            	</c:choose>					
						
						</c:forEach>               
                                        
                                        <button type="button" class="btn btn-primary w-100 mt-1"><i class="feather icon-plus mr-25"></i>Load More</button>
                                    </div>
                                </div>
					</div>
				
				
				
				
				
					<div class="col-xl-3 col-md-6 col-sm-6">
						<div class="card" id="showdetail">
							<div class="card-content">

									<div class="card-header">
										<h2 class="card-title">초대할 사람의 <strong>ID</strong>를 <br> 입력해주세요</h2>
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


<%-- 					<c:forEach var="task" items="${ taskList }" varStatus="status"> --%>
<!-- 						<div class="col-xl-3 col-md-6 col-sm-6"> -->
<!-- 							<div class="card" id="showdetail"> -->
<!-- 								<div class="card-content"> -->
<!-- 									<div class="card-body"> -->
<!-- 										<div class="card-header"> -->
										
<%-- 											<h1 class="card-title" style="font-weight:600; color:#7E72F2; font-size:1.55rem;">${ task.title }</h1> --%>
<!-- 										</div> -->

<!-- 										<ul class="list-group list-group-flush"> -->
<!-- 										<li class="list-group-item"> -->
<%-- 										<div class="fonticon-wrap"><i class="fa fa-user mr-1" style="font-size:2rem;"></i>${ task.writerName }</div> --%>
<!-- 										</li> -->
<%-- 										<c:set var="count" value="0" scope="page" /> --%>
<%-- 										<c:set var="randomcolor" value="" scope="page" />										 --%>
<%-- 										<c:forEach var="board" items="${ boardList[status.index] }"> --%>
<%-- 										<c:set var="rand"><%= java.lang.Math.round(java.lang.Math.random() * 4) %></c:set>										 --%>
<%-- 										<c:set var="count" value="${count + 1}" scope="page"/> --%>
<!--                                         <li class="list-group-item"> -->
<%--                                             <span class="badge badge-pill ${colorlist[count%5]} float-right">${count}</span> --%>
<!--                                            <h4 id="boardTitle"  -->
<%-- 														onClick="boardDetailFunc(${ board.boardId })">${ board.title }</h4> --%>
<!--                                         </li> -->
                                       
<%-- 										</c:forEach> --%>
<!-- 										 </ul> -->
<!-- 										<button type="submit" class="btn btn-primary btn-block round mb-1" -->
<%-- 											id="addBoard" onClick="writeBoard(${ task.taskId })">Board --%>
<!-- 											추가하기</button> -->
<!-- 										<div> -->
<%-- 										<c:if test="${ loginVO.memberid eq task.writerId }"> --%>
<%-- 											                     <button name="modifyTask" value="${ task.taskId }">수정</button> --%>
<!-- 											<button name="deleteTask" class="btn btn-danger btn-block round" -->
<%-- 												value="${ task.taskId }">Task 삭제하기</button> --%>
<%-- 										</c:if> --%>
<!-- 										</div> -->
<!-- 									</div> -->
<!-- 								</div> -->
<!-- 							</div> -->
<!-- 						</div> -->

<%-- 					</c:forEach> --%>


					
				



							<c:forEach var="task" items="${ taskList }" varStatus="status">
							
							
							<div class="col-xl-3 col-md-6 col-sm-6">
						<div class="card" id="showdetail">
							<div class="card-content">

									<div class="card-header">
										<h2 class="card-title">${ task.title }</h2>
									</div>
									<div class="card-body">
									<h1>writer: ${ task.writerName }</h1>
									<h5>content: ${ task.content }</h5>
									<h5>제출기한: ${ taskDeadline[status.index] }</h5>
									<h1>첨부파일: </h1>
								<c:forEach var="taskFile" items="${ taskFileList[status.index] }">
								                        <li class="list-group-item">
										<h6 class="text-nowrap"
											style="white-space: nowrap; display: inline;" id="fileName"
											onClick="taskFileDown('filePath=${ taskFile.filePath }&fileNameKey=${ taskFile.fileNameKey }&fileName=${ taskFile.fileName }')">${ taskFile.fileName }</h6>
										<c:choose>
											<c:when test="${ taskFile.fileSize >= 1024 }">
												<h6 id="strong" style="display: inline;">
													(
													<fmt:formatNumber value="${ taskFile.fileSize / 1024 }"
														pattern=".00" />
													MB)
												</h6>
											</c:when>
											<c:otherwise>
												<h6 id="strong" style="display: inline;">(${ taskFile.fileSize }KB)</h6>
											</c:otherwise>
										</c:choose>
										</br>
										 </li>
								</c:forEach>
								
								<h5>담당자: </h5>
								<ul class="list-unstyled users-list d-flex">
                                               
                                                
                                            </ul>
								<c:forEach var="charge" items="${ chargeMembers[status.index] }">								
								 <li data-toggle="tooltip" data-popup="tooltip-custom" data-placement="bottom" data-original-title="${ charge.name }" class="avatar pull-up ml-0">
                                                    <img class="media-object rounded-circle" src="{$charge.profile}" alt="Avatar" height="30" width="30">
                                                </li>
								
								</c:forEach>
								<h5>미제출자: </h5>
								<c:forEach var="submitNmem" items="${ submitN[status.index] }">
								<h5>${ submitNmem.name }</h5>
								</c:forEach>
								
									
									
								<button type="button" class="btn btn-primary w-100 mt-1" onClick="taskDetail(${ task.taskId })"><i class="feather icon-plus mr-25"></i>제출하러 가기</button>	
								<div>
									<c:if test="${ loginVO.memberid eq task.writerId }">
										<%--                      <button name="modifyTask" value="${ task.taskId }">수정</button> --%>
										<button name="deleteTask"
											class="btn btn-danger btn-block round"
											value="${ task.taskId }">Task 삭제하기</button>
									</c:if>
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
							<form method="post" enctype="multipart/form-data"
								action="${pageContext.request.contextPath}/teamdetail/${ team.teamId }/task"
								name="createTaskForm">
								<input type="hidden" name="writerId" id="writerId"
									value="${ loginVO.memberid }"> <input type="hidden"
									name="writerName" id="writerName" value="${ loginVO.name }">
								<input type="hidden" name="teamId" id="teamId"
									value="${ team.teamId }">
								<div class="modal-body">
									<label>Title: </label>
									<div class="form-group">
										<input type="text" class="form-control" name="title" id="title"></input>
									</div>
									<label>Content: </label>
									<div class="form-group">
										<textarea class="form-control" name="content" id="content"
											rows="5"></textarea>
									</div>
									<div style="color: black;" id="taskFileForm">
										<button type="button"
											class="btn btn-outline-primary round btn-block"
											name="taskFileBtn" id="taskFileBtn">파일 추가</button>
									</div>
									<label>deadline: (선택입니다) </label>
														<div class="form-group">
															<input type="date" name="deadline" id="deadline"
																placeholder="Deadline" class="form-control">
														</div>
									<label>담당자: </label>
<!-- 									<div class="form-group"> -->
<!-- 										<input type="text" class="form-control" name="chargeMemberid" id="chargeMemberid"></input> -->
<!-- 									</div> -->
									<select class="select2 form-control" id="selectMulti2" multiple="multiple">
									<option></option>
									</select> <input type="hidden" name="chargeMemberid" id="chargeMemberid"
													value="$('#selectMulti2').select2('data')">
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
	
	</c:otherwise>
	</c:choose>



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
	
	var index = 0;

	$("button[name='taskFileBtn']").click(function() {
	   $('#taskFileForm').append('<br name="taskfileBr' + index +'"><input type="file" id="taskFiles[' + index + ']" name="taskFiles[' + index + ']" value="">');
	   $('#taskFileForm').append('<button type="button" name="taskbtn'+index+'" class="btn black ml15" style="padding: 3px 5px 6px 5px; color: red;" onClick="deletetaskFile(' + index + ')">X</button>');
	   console.log('<br><input type="file" id="taskFiles[' + index + ']" name="taskFiles[' + index + ']" value="">')
	   index += 1;
	});



	function deletetaskFile(idx) {
	   $("br[name='taskfileBr" + idx + "']").remove();
	   $("input[name='taskFiles[" + idx + "]']").remove();
	   $("button[name='taskbtn" + idx + "']").remove();
	   console.log(idx);
	}
	
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
	   
	   var cnt = 0;
	   var fileList = new Array();
	   for(i = 0; i < index; i++) {
	      if(document.getElementById('taskFiles[' + i + ']')) {
	      if ($("input[name='taskFiles[" + i + "]']").val() != ""){
	         document.getElementById('taskFiles[' + i + ']').setAttribute('name', 'taskFiles[' + cnt + ']');
	         fileList.push($("input[name='taskFiles[" + i + "]']").val());
	         cnt ++;
	      }else {
	         $("br[name='taskfileBr" + i + "']").remove();
	         $("input[name='taskFiles[" + i + "]']").remove();
	         $("button[name='taskbtn" + i + "']").remove();
	      }
	      }
	   }
	   
	    var chargeArray = $('#selectMulti2').select2('data');
	    var chargeIndex= $('#selectMulti2').select2('data').length;
	    for(i=0;i<chargeIndex;i++){
			   $('#chargeMemberid').append('<input type="hidden" name="chargeMems['+i+']" value="'+chargeArray[i].id+'" />');
	    }  
	   
	    var createTaskForm = document.createTaskForm;
	    
	  	createTaskForm.submit();


//        var data = {writerId : $('#writerId').val(),
//     		   	   writerName : $('#writerName').val(),
//     		   	   teamId : $('#teamId').val(),
//     		   	   title : $('#title').val,
//     		   	   content : $('#content').val(),
//     		   	   deadline : $('#deadline').val()
//     		   	   };
       
//        $.ajax({
//           type : 'POST',
//           enctype: 'multipart/form-data',
//           url : '/teamdetail/${ team.teamId }/task',
//           data : JSON.stringify(data),
//           contentType : "application/json",
//           success : function(data) {
//         	  console.log(data);
//         	  location.reload();
//           },
//           error : function(error) {
//         	  console.log(error);
//           }
//        });
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
	
	function taskFileDown(file){
	    location.href = "${ pageContext.request.contextPath}/fileDownload?" + file;
	}
	
	
	function taskDetail(id) {
		location.href = "/taskdetail/" + id;
	}

   
   
</script>
</body>
</html>