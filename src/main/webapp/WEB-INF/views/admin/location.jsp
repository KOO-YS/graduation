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
			                    <h4>location info</h4>
			                </div>
			                <div class="col-md-6">
			                    <button type="button" class="btn btn-sm btn-primary">sample button</button>
			                </div>
			                
			            </div>
			            <hr>
			            <div class="row">
	        		        <div class="col-md-12">
	        		            <div id="map" style="width:100%;height:350px; margin: 50px 0;"></div>
	        		        </div>
	        		    </div>
						<div class="row">
	        		        <div class="col-md-6">
       		            		<label>x 좌표:</label>
          						<input type="text" class="form-control" id="company" name="company">
          						<label>y 좌표:</label>
          						<input type="text" class="form-control" id="company" name="company">
       		            	</div>
       		            	<div class="col-md-6">
       		            		<button type="button" class="btn btn-sm btn-primary" style="margin-top:100px;">sample button</button>
       		            	</div>
       		            </div>
			        </div>
			    </div>
			</div>
		</div>
	</div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=117569877c4f0f88d82995089cb983ae"></script> <!-- 임시키 -->
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
mapOption = { 
    center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
    level: 3 // 지도의 확대 레벨
};

//지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
var map = new kakao.maps.Map(mapContainer, mapOption); 
</script>
	
  </body>
</html>
