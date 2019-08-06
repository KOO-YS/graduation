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
	        		        	<input type="text" class="form-control" id="address" value="" placeholder="서울특별시 종로구 사직로 161 경복궁">
	        		        </div>
	        		        <div class="col-md-6">
	        		        	<button type="button" class="btn btn-outline-primary" value="좌표값 검색" onclick="checkAddr()">검색</button>
	        		        </div>
	        		    </div>
	        		    <div class="row">    
	        		        <div class="col-md-6">
       		            		<label>x 좌표:</label>
          						<input type="text" class="form-control" id="xValue" name="xValue">
          						<label>y 좌표:</label>
          						<input type="text" class="form-control" id="yValue" name="yValue">
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

<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=117569877c4f0f88d82995089cb983ae&libraries=services"></script> <!-- 임시키 -->
<script>
var address      = document.getElementById("address");
var mapContainer = document.getElementById("map");
var coordXY   = document.getElementById("coordXY");
var mapOption;
var map;
var x,y = "";

if (address.value=="") {

 mapOption = {
  center: new daum.maps.LatLng(33.450701, 126.570667), // 임의의 지도 중심좌표 , 제주도 다음본사로 잡아봤다.
  /* center: new daum.maps.LatLng($("#nowX").val(),$("#nowY").val()), // 기존 디비에 저장된 좌표 */
        level: 4            // 지도의 확대 레벨
 };
}

// 지도 생성
map = new daum.maps.Map(mapContainer, mapOption);


function checkAddr() {
 var gap = address.value; // 주소검색어
 if (gap=="") {
  alert("도로명 주소를 입력하세요.");
  address.focus();
  return;
 }
 
 // 주소-좌표 변환 객체를 생성
 var geocoder = new daum.maps.services.Geocoder();



 // 주소로 좌표를 검색
 geocoder.addressSearch(gap, function(result, status) {
  
  // 정상적으로 검색이 완료됐으면,
  if (status == daum.maps.services.Status.OK) {
   
   var coords = new daum.maps.LatLng(result[0].y, result[0].x);

   y = result[0].x;
   x = result[0].y;



   // 결과값으로 받은 위치를 마커로 표시합니다.
   var marker = new daum.maps.Marker({
    map: map,
    position: coords
   });



   // 인포윈도우로 장소에 대한 설명표시
   var infowindow = new daum.maps.InfoWindow({
    content: '<div style="width:150px;text-align:center;padding:5px 0;">경복궁</div>'
   });

   infowindow.open(map,marker);
   
   // 지도 중심을 이동
   map.setCenter(coords);

   coordXY.innerHTML = "<br>X좌표 : " + x + "<br><br>Y좌표 : " + y;
  }
 });
}
</script>
  </body>
</html>
