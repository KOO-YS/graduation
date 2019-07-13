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
   	
   	<link rel="stylesheet" href="/css/bootstrap.min.css">
   	

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
			                    <button type="button" class="btn btn-sm btn-primary">sample button</button>
			                </div>
			                
			            </div>
			            <hr>
			            <div class="row">
			            	<div class="col-md-9">
				            	<div class="col-md-12 bg-light card-body">
		        		            <h4>공지사항 추가</h4>
		        		            <form>
		                              <div class="form-group row">
		                                <label for="text" class="col-12 col-form-label">글 제목</label> 
		                                <div class="col-12">
		                                  <input id="title" name="title" class="form-control here" type="text">
		                                </div>
		                              </div>
		                              <div class="form-group row">
		                                <label for="description" class="col-12 col-form-label">내용</label> 
		                                <div class="col-12">
		                                  <textarea id="description" name="description" cols="40" rows="4" class="form-control"></textarea>
		                                </div>
		                              </div> 
		                              <div class="form-group row">
		                                <label for="slug" class="col-12 col-form-label">이미지</label> 
		                                <div class="col-12">
		                                  <input id="image" name="image" class="form-control here" type="file">
		                                </div>
		                              </div>
		                              <div class="form-group row">
		                                <div class="col-12">
		                                  <button name="submit" type="submit" class="btn btn-primary btn-sm">추가</button>
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

<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="/js/bootstrap.min.js"></script>
</body>
</html>
