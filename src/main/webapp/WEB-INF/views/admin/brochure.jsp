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
   	<script src="/static/js/bootstrap.min.js"></script>
<!-- <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script> -->
<!-- <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css"> -->
<!-- <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> -->
<!-- <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet" integrity="#" crossorigin="anonymous"> -->
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
			                    <h4>Brochure</h4>
			                </div>
			                <div class="col-md-6">
			                    <button type="button" class="btn btn-sm btn-primary">추가</button>
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
	                                    <th>언어</th>
	                                    <th>변경날짜</th>
	                                    <th>이미지</th>
	                                    <th>간행물 첨부파일</th>
	                                    <th></th>
	                                  </tr>
	                                </thead>
	                                <tbody>
	                                  <tr>
	                                    <td>
	                                        <div class="form-check-inline">
	                                          <label class="form-check-label">
	                                            <input type="checkbox" class="form-check-input" value="">
	                                           </label>
	                                       </div>
	                                    </td>  
	                                    <td><a href="#"><small>admin</small></a></td>
	                                    <td><small>Doe</small></td>
	                                    <td><small>john@example.com</small></td>
	                                    <td><a href="#"><small>5</small></a></td>
	                                    <td><button type="button" class="btn btn-sm btn-primary">수정하기</button></td>
	                                  </tr>
	                              
	                                 
	                                 
	                                </tbody>
	                              </table>
	        		        </div>
	        		    </div>
			        </div>
			    </div>
			</div>
		</div>
	</div>

	
  </body>
</html>

