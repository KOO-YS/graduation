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
			                <div class="col-md-4 border-right">
			                    <h4>경회루 특별관람</h4>
			                </div>
			                <div class="col-md-8">
				                <button class="btn btn-primary" onclick="location.href='/admin/reservation'">목록</button>
			                </div>
			            </div>
			            <hr>
			            <div class="row">
			            	<div class="col-md-9">
				            	<div class="col-md-12 bg-light card-body">
		        		            <h4>예약 관리</h4>
		        		            
		        		        </div>
			            	</div>
			            </div>
			            
			        </div>
			    </div>
			</div>
		</div>
	</div>
</body>
</html>
