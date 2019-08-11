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
	<!-- <link rel="icon" href="images/favicon.ico" type="image/ico" /> -->

   	<title>test</title>
   	
   	<link rel="stylesheet" href="/static/css/bootstrap.min.css">
   	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

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
			                    <h4>Notice</h4>
			                </div>
			                <div class="col-md-6">
			                    <button type="button" class="btn btn-sm btn-primary" onclick="location.href='/admin/notice'">목록</button>
			                </div>
			                
			            </div>
			            <hr>
			            <div class="row">
			            	<div class="col-md-9">
				            	<div class="col-md-12 bg-light card-body">
		        		            <h4>가이드북 추가</h4>
		        		            <form id="brochureForm">
		        		            <div class="row">
		                                <div class="col-md-12">
		                                  <label for="title" class="col-12 col-form-label">제목</label>
		                                	<div class="col-md-12">  
		                                  		<input type="text" class="form-control" id="title" name="title">
		                                  	</div>
		                                </div>
		                            </div>
		        		            <div class="row">
		                                <div class="col-md-6">
		                                	<label for="language" class="col-12 col-form-label">언어</label> 
			                                <div class="col-12">
			                                  	<!-- 국가 코드 -->
			                                  	<!-- http://www.iegate.net/country_code.php -->
			                                  	<!-- 참조 -->
			                                  	<!-- https://hiworldbye.tistory.com/43 -->
			                                  	<!-- 이렇게 하고, DB에 selbox의 value 값을 넣어줄 때는, java단에서 selbox와 selboxDirect의 값을 체크하여 올바른 값을 넣고 DB 처리 해주면됨. -->
			                                  <select class="form-control" id="language" name="language">
			                                  	<option value="korean">한국어</option>
			                                  	<option value="english">영어</option>
			                                  	<option value="chinese">중국어</option>
			                                  	<option value="japanese">일본어</option>
			                                  	<option value="direct">직접입력</option>
			                                  </select>
			                                  <input type="text" class="form-control" id="directValue" name="directValue"/>
			                                </div>
		                                </div>
		                                <div class="col-md-6">
		                                	<label for="file" class="col-12 col-form-label">가이드북 - pdf</label> 
			                                <div class="col-12">
			                                  <input id="file" name="file" class="form-control here" type="file">
			                                </div>
		                                </div>
		        		            </div>
		        		            <div class="row" style="margin-top:20px;">
		                                <div class="col-md-12">
			                                <div class="col-md-12">
			                                  <button name="submitBtn" type="button" class="btn btn-primary btn-sm" style="width:100%;">추가</button>
			                                </div>
		                                </div>
		                            </div>
		                            </form>
		        		        </div>
			            	</div>
			            </div>
			            
			        </div>
			    </div>
			</div>
		</div>
	</div>
<script>
$(document).ready(function() {
	
$("#directValue").hide();
$("#language").change(function() {
		if($("#language").val() == "direct") {
			$("#directValue").show();
		}  else {
			$("#directValue").hide();
		}
	});

    $("button[name='submitBtn']").click(function() {
   		var form = $("#brochureForm")[0];	
   	    var formData = new FormData(form);

       $.ajax({
              url: '/admin/insertBrochure',
              type: 'POST',
              enctype: "multipart/form-data",
              data: formData,
              contentType: false,
              processData: false,
              success: function(data, textStatus, jqXHR) {
                  alert("확인");
                  location.href='/admin/brochure';
              },
              error: function (request, status, error) {
                    console.log("code:"+request.status+"\n"+"error:"+error+"\n"+"message:"+request.responseText);
              }
        });
    });
});
	    
</script>
</body>
</html>

