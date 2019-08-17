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
			                <div class="col-md-2 border-right">
			                    <h4>Reservation</h4>
			                </div>
			            </div>
			            <hr>
			            <div class="row">
			            	<div class="col-md-9">
				            	<div class="col-md-12">
		        		            <h4>예약 관리</h4>
		        		            <div class="row bg-light card-body">
			        		            <div class="col-md-6">
				        		            <button class="btn btn-primary" onclick="location.href='/admin/reservation/special'" style="margin:20px 0;">경회루 특별관람 예약</button>
				        		            <p id="s_today"></p>
				        		            <p>00명</p>
				        		            <p>당일 예약 접수 : 00 건</p>
			        		            </div>
			        		            <div class="col-md-6">
				        		            <button class="btn btn-primary" onclick="location.href='/admin/reservation/korean'" style="margin:20px 0;">한국어 단체관람 예약</button>
    				        		        <p id="k_today"></p>
				        		            <p>00명</p>
				        		            <p>당일 예약 접수 : 00 건</p>
			        		            </div>
			        		        </div>
		        		        </div>
			            	</div>
			            </div>
			            
			        </div>
			    </div>
			</div>
		</div>
	</div>
<script>
var date = new Date();
var year = date.getFullYear();
var month = date.getMonth()+1;
var day = date.getDate();

document.getElementById('s_today').innerHTML = "* "+year+"년 "+month+"월 "+day+"일 예약 인원 :";
document.getElementById('k_today').innerHTML = "* "+year+"년 "+month+"월 "+day+"일 예약 인원 :";
</script>
</body>
</html>

