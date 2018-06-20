<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
	
</script>
	<!-- 프로젝트 생성 Modal 창 -->
	<div class="modal fade" id="project-insert" role="dialog">
		<div class="modal-dialog modal-add-project-dialog">
			<div class="modal-content modal-add-project-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Project 생성</h4>
				</div>
				<div class="modal-body">
				
					 <form id="project-add-form" method="post" onsubmit="return false;">
						<fieldset>
							<div class="row">
								<br>
								<div class="col-sm-6 project-setting-left">
									<input type="text" name="pname"  id="add-project-name"
										placeholder="프로젝트명을 입력하세요"
										class="text ui-widget-content ui-corner-all"><br>
									<br> 
									<div class="modal-title">
										<p>방법론</p>
									</div>
										<input type="radio" id="method" name="methodologyid" value="3"
										checked><span class="method"> Customizing</span> <br>
									<div>
										<!-- Customizing 설명 작성  -->
										가나다라마바사아자차카타파하 커스텀마이징 설명작성 필요
									</div>
									<br> <input type="radio" id="method" name="methodologyid" value="2"><span
										class="method"> Agile</span><br>
									<div>
										<!-- Agile 설명 작성  -->
										가나다라마바사아자차카타파하 애자일 설명작성 필요
									</div>
									<br> <input type="radio" id="method" name="methodologyid" value="1"><span
										class="method"> Waterfall</span><br>
									<div>
										<!-- Waterfall 설명 작성  -->
										가나다라마바사아자차카타파하 폭포수 설명작성 필요
									</div>
									<br> <br>
								</div>
								<!-- Allow form submission with keyboard without duplicating the dialog button -->
								<div class="col-sm-6 project-setting-right">
									<div class="modal-title">
										<p>기간 설정</p>
									</div>
									<br>
									<div class="col-sm-6">
										<div class="modal-title">
											<p>시작일</p>
										</div>
										<input type="text" id="insert-project-sday-id" name="sday" placeholder="Start Date" class="date sdate-img">
									</div>
									<div class="col-sm-6">
										<div class="modal-title">
											<p>종료일</p>
										</div>
										<input type="text" id="insert-proejct-eday-id" name="eday" placeholder="End Date" class="date edate-img">
										<br><br>
									</div>
									<div class="modal-title">
										<p>상세설명</p>
									</div>
									<textarea rows="7%" cols="49%" id="project-detail" name="detail" placeholder="내용을 입력하세요"></textarea>
								</div>
							</div>
							<!-- 아래는 임시로 작성해둔 것임 -->
							<input type="hidden" name="mid" value="${mid}">
		
						<br>
						<div align="center">	
							<input type="button" class="btn add-btn" id="insert-project-btn" value="생성">&nbsp;&nbsp;&nbsp;
							<input type="button" class="btn cancel-btn"
								data-dismiss="modal" value="취소">
						</div>
						</fieldset>
					</form>
				</div>
			</div>
		</div>
	</div>

	<!-- Folder 생성 Modal 창 -->
	<div class="modal fade" id="add-folder" role="dialog">
		<div class="modal-dialog modal-add-folder-dialog">
			<!-- Modal content-->
			<div class="modal-content modal-add-folder-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Folder 생성</h4>
				</div>
				<div class="modal-body">
					<form id="insert-folder-form" method="post" onsubmit="return false;">
						<fieldset>
							<input type="text" id="add-folder-name" name="fname" class="add-folder-text" placeholder="folder명을 입력하세요">
							<input type="hidden" id="add-folder-pid" name="pid">
							<br><br>
							<div align="center">
								<input type="button" class="btn add-btn" id="insert-folder-btn" value="생성">&nbsp;&nbsp;&nbsp;
								<input type="button" class="btn cancel-btn" data-dismiss="modal" value="취소">
							</div>
						</fieldset>
					</form>
				</div>
				<br>
			</div>
		</div>
	</div>

<!-- 스텝 생성 Modal 창 -->
	<div class="modal fade" id="insert-step" role="dialog">
		<div class="modal-dialog modal-add-step-dialog">
			<!-- Modal content-->
			<div class="modal-content modal-add-step-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Step 생성</h4>
				</div>
				<div class="modal-body">
				
					<form id="step-add-form" method="post" onsubmit="return false;">
						<fieldset>
							<div class="modal-title">
								<p>Step명</p>
							</div>
							<input type="text" name="sname" class="add-step-name" placeholder="step명을 입력하세요">
							<br><br>
							<div class="modal-title">
								<p>책임자</p>
							</div>
							<div >
								<select name="mid" id="add-step-mgr-assignee">
									
								</select> 
							</div>
							<br>
							<div class="modal-title">
								<p>기간 설정</p>
							</div>
							<div class="col-sm-6">
								<div class="modal-title">
									<p>시작일</p>
								</div>
								<input type="text" id="insert-step-sday-id" name="sday" placeholder="Start Date"
									class="date sdate-img"><br>
							</div>
							<div class="col-sm-6">
								<div class="modal-title">
									<p>종료일</p>
								</div>
								<input type="text" id="insert-step-eday-id" name="eday" placeholder="End Date"
									class="date edate-img"><br><br><br>
							</div>
							<div class="modal-title">
								<p>상세설명</p>
							</div>
							<textarea rows="7%" cols="68%" id="step-detail" name="detail" placeholder="내용을 입력하세요"></textarea>
								<br><br>
							<!-- 아래는 임시로 작성해둔 것임 -->
							<input type="hidden" id="insert-step-methodologyid" name="methodologyid" >
							<input type="hidden" id="insert-step-pid" name="pid" >
							<input type="hidden" id= "insert-step-fid" name="fid">
							<div align="center">
								<input type="button" class="btn add-btn" id="insert-step-btn" value="생성">&nbsp;&nbsp;&nbsp;
								<input type="button" class="btn cancel-btn" data-dismiss="modal" value="취소">
							</div>
						</fieldset>
					</form>
				</div>
				<br>
			</div>
		</div>
	</div>


	<!-- 프로젝트 수정 Modal 창 -->
	<div class="modal fade" id="update-project" role="dialog">
		<div class="modal-dialog modal-update-project-dialog">
			<div class="modal-content modal-update-project-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Project 수정</h4>
				</div>
				<div class="modal-body">
					<form>
						<fieldset>
							<div class="row">
								<br>
								<div class="col-sm-6 project-setting-left">
									<input type="text" name="pname" id="add-project-name"
										placeholder="프로젝트명을 입력하세요"
										class="text ui-widget-content ui-corner-all"><br>
									<br> 
									<div class="modal-title">
										<p>방법론</p>
									</div>
										<input type="radio" name="methodologyid" value="customizing"
										checked><span class="method"> Customizing</span> <br>
									<div>
										<!-- Customizing 설명 작성  -->
										가나다라마바사아자차카타파하 커스텀마이징 설명작성 필요
									</div>
									<br> <input type="radio" name="methodologyid" value="agile"><span
										class="method"> Agile</span><br>
									<div>
										<!-- Agile 설명 작성  -->
										가나다라마바사아자차카타파하 애자일 설명작성 필요
									</div>
									<br> <input type="radio" name="methodologyid" value="waterfall"><span
										class="method"> Waterfall</span><br>
									<div>
										<!-- Waterfall 설명 작성  -->
										가나다라마바사아자차카타파하 폭포수 설명작성 필요
									</div>
									<br> <br>
								</div>
								<!-- Allow form submission with keyboard without duplicating the dialog button -->
								<div class="col-sm-6 project-setting-right">
									<div class="modal-title">
										<p>기간 설정</p>
									</div>
									<br>
									<div class="col-sm-6">
										<div class="modal-title">
											<p>시작일</p>
										</div>
										<input type="text" name="sday" placeholder="Start Date" class="date sdate-img">
									</div>
									<div class="col-sm-6">
										<div class="modal-title">
											<p>종료일</p>
										</div>
										<input type="text" name="eday" placeholder="End Date" class="date edate-img">
										<br><br>
									</div>
									<div class="modal-title">
										<p>상세설명</p>
									</div>
									<textarea rows="7%" cols="49%" name="detail" placeholder="내용을 입력하세요"></textarea>
								</div>
							</div>
							<br><br>
						<div align="center">
							<input type="submit" class="btn add-btn" value="수정">&nbsp;&nbsp;&nbsp;
							<input type="button" class="btn cancel-btn"
								data-dismiss="modal" value="취소">
						</div>
						</fieldset>
					</form>
				</div>
			</div>
		</div>
	</div>	
	

<!-- Project 완료 Modal 창 -->
	<div class="modal fade" id="move-project" role="dialog">
		<div class="modal-dialog modal-delete-project-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 id="move-project-header" class="modal-title"></h4>
				</div>
				<div class="modal-body">
					<input type="hidden" id="move-project-pid">
					<input type="hidden" id="move-project-pstatuscode">
					<p id="move-project-message"></p>
				</div>
				<div align="center">
					<input id="move-project-btn" type="button" class="btn delete-btn" value="확인">&nbsp;&nbsp;&nbsp;
					<input type="button" class="btn cancel-btn"
						data-dismiss="modal" value="취소">
				</div>
				<br>
			</div>
		</div>
	</div>	



<!-- Task 수정/삭제 Modal 창 -->
	<div class="modal fade modal-task-dialog" id="Task_RUD_Modal" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">

				<div class="modal-header">
				<!-- row 1 -->
				<div class="row">
					<div class="col-sm-6">
						<h4 class="modal-title" id="Task_Modal_tname">Task_Modal_tname</h4>
					</div>

					<div class="col-sm-6" id="star_trash">
						<span id="span_task_star"></span>&nbsp&nbsp
						<i class="fas fa-trash" id="task_trash" data-toggle="modal" data-target="#Trash_Modal"></i>&nbsp&nbsp&nbsp
						<button type="button" class="close" data-dismiss="modal" id="task_dismiss_btn">&times;</button>
					</div>
					
					<div class="col-sm-12" id="Task_Modal_snames">
					<br>여기는 소속된 스텝들이 뜨는 공간입니다&nbsp<i class="fas fa-plus-circle"></i>
					</div>
					
				</div>
				<!-- end row 1 -->
				<hr>
							
							
				<!-- row 2 -->
				<div class="row">
					<div class="col-sm-3" id="Task_Modal_tstatus">
							<select>
							<option>New</option>
							<option>Development</option>
							<option>Testing</option>
							<option>Reopened</option>
							<option>Ready</option>
							<option>Completed</option>
							<option>On hold</option>
							<option>Cancelled</option>
							</select>
					</div>
	
		
					<div class="col-sm-9" id="Task_Modal_assignee"">여기는 담당자들이 뜨는 공간입니다&nbsp<i class="fas fa-plus-circle"></i></div>
				</div>
				<!-- end row 2 -->
				<hr>
				<!-- end modal-header -->

				<div class="modal-body">

					<!-- row 1 -->
					<div class="row">
                	<div class="col-sm-12 modal-title">기간 설정</div><br /><br />

					<div class="col-sm-6">
	                    <div class="modal-title">
	                    <p>시작일</p>
	                    </div>
                   		<input id="Task_Modal_sday" type="text" name="sday" placeholder="Start Date" class="date date-img">
					</div>

					<div class="col-sm-6">
	                    <div class="modal-title">
	                      <p>종료일</p>
	                    </div>
	                    <input id="Task_Modal_eday" type="text" name="eday" placeholder="End Date" class="date date-img">
	                    <br><br>
					</div>
					</div>
					<!-- end row 1 -->

                <hr />
					<div class="modal-title">파일 업로드</div><br />
	                <div id="Task_Modal_files">파일들이 여기 잡히게 된다</div>
	                <br>
	                <input id="Task_Modal_add_file_btn" type="button" value="파일추가"><br /><br />
                <hr>

				<div class="modal-title">Sub Task</div><br />
				 <div id="Task_Modal_subtasks">subtask들이 들어가게 된다</div><br>
					<input type="text" name="pname" id="add_sub_task"
							placeholder="Sub Task 입력"
							class="text ui-widget-content ui-corner-all">
					<input type="button" value="Sub Task 추가">
                <hr />
                
				<div class="modal-title">
					<p>상세설명</p>
					<textarea id="Task_Modal_detail" rows="7%" cols="49%" name="detail" placeholder="내용을 입력하세요"></textarea>
				</div>
                <hr />
                
					<div class="modal-title">Comment</div><br />
					<div id="Task_Modal_comments">여기는 코멘트 들이 추가되는 공간입니다
					<br>
					<br>
					<br>
					</div>
					<input type="text" placeholder="코멘트 입력.." class="">
					<input id="Task_Modal_enter_comments" type="button" value="전송">
					<input type="hidden" id="tidhidden" value="">
					
					
			 	</div>
			 	<!-- end modal-body -->
				
			</div>
		</div>
	</div>
</div>	

	<!-- 프로필 모달 -->
	<c:set var="member" value="${profileinfolist}"></c:set>
	<div class="modal fade" id="profile-modal-dialog" role="dialog">
		<div class="modal-dialog profile-modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Profile</h4>
				</div>
				<div class="modal-body">
					<div class="col-sm-3">
						
					</div>
					<div class="col-sm-9">
						<table>
							<tr>
								<td>이름</td>
								<th id="profile-modal-mname"></th>
							</tr>
							<tr>
								<td>이메일</td>
								<th></th>
							</tr>
							<tr>
								<td>휴대폰번호</td>
								<th></th>
							</tr>
							<tr>
								<td>부서명</td>
								<th></th>
							</tr>
							<tr>
								<td>직위</td>
								<th></th>
							</tr>
						</table>
					</div>
				</div>
				<div align="center">
					<input type="submit" class="btn delete-btn" value="삭제">&nbsp;&nbsp;&nbsp;
					<input type="button" class="btn cancel-btn"
						data-dismiss="modal" value="취소">
				</div>
				<br>
			</div>
		</div>
	</div>
	

<!-- Task 삭제 창 -->
	<div class="modal fade" id="Trash_Modal" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content modal-sm">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" id="task_delete_dismiss_btn">&times;</button>
					<h4 class="modal-title">Task 삭제</h4>
				</div>
				
				<div class="modal-body" style="text-align:center">
				<h4>해당 Task를 삭제하시겠습니까?<br><h5 style="color:red">(삭제 후 복구 불가능합니다)</h5></h4>					

					<div align="center">
						<input type="button" class="btn add-btn" id="task_trash_btn" value="삭제">&nbsp;&nbsp;&nbsp;
						<input type="button" class="btn cancel-btn"
							data-dismiss="modal" value="취소">
					</div>
				</div>
				<br>
			</div>
		</div>
	</div>
