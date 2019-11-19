<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
   	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   	<!-- Meta, title, CSS, favicons, etc. -->
   	<meta charset="utf-8">
   	<meta http-equiv="X-UA-Compatible" content="IE=edge">
   	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="icon" href="/static/images/favicon.ico" type="image/ico" />

   	<title>test</title>

   	<!-- Bootstrap -->
   	<link rel="stylesheet" href="/static/css/bootstrap.min.css">
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
   	<script src="/static/js/bootstrap.min.js"></script>

</head>

<body class="bg-light">
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-3 ">
			     <c:import url="/WEB-INF/views/admin/resources/category.jsp"></c:import> 
			</div>
			<div class="col-md-9">
			    <div class="card">
			        <div class="card-body">
			            <div class="row">
			                <div class="col-md-2 border-right">
			                    <h4>History</h4>
			                </div>
			                <div class="col-md-6">
			                    <button type="button" class="btn btn-sm btn-primary" data-toggle="modal" data-target="#addHistory">히스토리 추가</button>
			                </div>
			                
			            </div>
			            <hr>
			            	<div class="row">
	        		        <div class="col-md-12">
	        		            <table class="table table-hover ">
	                                <thead class="bg-light ">
	                                  <tr>
	                                    <th>
	                                      <div class="form-check-inline">
	                                          <label class="form-check-label">
	                                            <input type="checkbox" class="form-check-input" value="">
	                                           </label>
	                                       </div>
	                                    </th>  
	                                    <th>년도</th>
	                                    <th>제목</th>
	                                    <th>설명</th>
	                                    <th>삭제</th>
	                                  </tr>
	                                </thead>
	                                <tbody>
	                                <c:forEach var="his" items="${history }">
	                                  <tr>
	                                    <td>
	                                        <div class="form-check-inline">
	                                          <label class="form-check-label">
	                                            <input type="checkbox" class="form-check-input" value="">
	                                           </label>
	                                       </div>
	                                    </td>
	                                    <td>${his.year }</td>  
	                                    <td>${his.title }</td>
	                                    <td>${his.detail }</td>
	                                    <td><button class="btn btn-primary" onclick="location.href='/admin/deleteHistory/${his.year}'; alert('${his.year}년도 정보 삭제');">삭제</button></td>
	                                  </tr>
	                                </c:forEach>
	                                </tbody>
	                              </table>
	        		        </div>
	        		    </div>
			        </div>
			    </div>
			</div>
		</div>
	</div>
<!-- 히스토리 추가 폼 -->
<div class="modal fade" id="addHistory" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
      	<h4 class="modal-title" id="myModalLabel">히스토리 추가</h4>
        <button type="button" class="	close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
      </div>
     		<form id="historyForm" onsubmit="return checkForm()" action="/admin/insertHistory" method="post">
    			<div class="modal-body">
					<label>년도</label>
					<input type="number" class="form-control" id="year" name="year" min="1300" max="2100" step="100" placeholder="1300">
					<hr>
					<label>제목</label>
					<input type="text" class="form-control" id="title" name="title" placeholder="ex) 경복궁 창건">
					<hr>
					<label>설명</label>
					<input type="text" class="form-control" id="detail" name="detail" placeholder="ex) 조선 개국">
					
	     		</div>
		      	<div class="modal-footer">
		        	<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
		        	<button type="submit" class="btn btn-primary">등록</button>
		      	</div>
	       </form>
	   </div> <!-- 모달 콘텐츠 -->
	 </div> <!-- 모달 다이얼로그 -->
	</div> <!-- 모달 전체 윈도우 -->

<script type="text/javascript">
function checkForm(){
	if($("#year").val()==""){
		alert("년도를 입력해주세요");
		$("#year").focus();
		return false;
	}
	if($("#title").val()==""){
		alert("작품명을 입력해주세요");
		$("#title").focus();
		return false;
	}
	// 작가명 공백 확인
	if($("#detail").val()==""){
		alert("설명을 입력해주세요");
		$("#detail").focus();
		return false;
	}
}
</script>
  </body>
</html>
