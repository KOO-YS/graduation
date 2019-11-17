<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

  <head>
    <title> 관람안내</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="/static/css/bootstrap.min.css">

    <link rel="stylesheet" href="/static/css/bootstrap-datepicker.css">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,900" rel="stylesheet">
    <link rel="stylesheet" href="/static/css/jquery-ui.css">
    <link rel="stylesheet" href="/static/fonts/icomoon/style.css">

    <link rel="stylesheet" href="/static/css/aos.css">

    <link rel="stylesheet" href="/static/css/style.css">
    
  </head>
  <body>
  
  <div class="site-wrap">

    <div class="site-mobile-menu site-navbar-target">
      <div class="site-mobile-menu-header">
        <div class="site-mobile-menu-close mt-3">
          <span class="icon-close2 js-menu-toggle"></span>
        </div>
      </div>
      <div class="site-mobile-menu-body"></div>
    </div>
    
    <c:import url="/WEB-INF/views/structure/subHeader.jsp"></c:import>

    <section class="site-section" id="info-section">
      <div class="container">
        <div class="row">
          <div class="col-md-3 text-left">
            <h2 class="section-title mb-3" style="padding-top:30px;">관람안내</h2>
          </div>
            <div class="col-md-9">
	          <p class="section-sub-title" style="padding-top:60px;">
	          	오시는길
		       	<b style="font-weight:600; float:right;">메인 > 관람안내 > 오시는길</b>	
	          </p>
            </div>
        </div>
        <div class="row">
		  <!-- 사이드바 col-md-3 -->
          <c:import url="/WEB-INF/views/contents/guide/guide_category.jsp"></c:import>
          <!-- 사이드바 끝 -->
          <!-- 포스트 -->
          <!-- DB에 저장된 좌표값 -->
          <div class="col-md-9 blog-content">
		     <input type="hidden" id="nowX" value="${getCoord.coordX}">
	    	 <input type="hidden" id="nowY" value="${getCoord.coordY}">
            <blockquote class="bg-light">
            	<!-- <div id="map" style="width:100%;height:350px;"></div> -->
            	<div id="map" style="width:100%;height:350px; margin: 50px 0;"></div>
            </blockquote>
          </div>
          <!-- 포스트 끝 -->
        </div>

        </div>
    </section>

	<c:import url="/WEB-INF/views/structure/footer.jsp"></c:import>

  </div> <!-- .site-wrap -->


   <script src="/static/js/jquery-3.3.1.min.js"></script>
  <script src="/static/js/jquery-migrate-3.0.1.min.js"></script>
  <script src="/static/js/jquery-ui.js"></script>
  <script src="/static/js/popper.min.js"></script>
  <script src="/static/js/bootstrap.min.js"></script>
  <script src="/static/js/owl.carousel.min.js"></script>
  <script src="/static/js/jquery.stellar.min.js"></script>
  <script src="/static/js/jquery.countdown.min.js"></script>
  <script src="/static/js/bootstrap-datepicker.min.js"></script>
  <script src="/static/js/jquery.easing.1.3.js"></script>
  <script src="/static/js/aos.js"></script>
  <script src="/static/js/jquery.fancybox.min.js"></script>
  <script src="/static/js/jquery.sticky.js"></script>


  
  <script src="/static/js/main.js"></script>
  <script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=117569877c4f0f88d82995089cb983ae&libraries=services"></script> <!-- 임시키 -->
	<script>
	
	var container = document.getElementById('map'); // 지도를 담을 영역의 DOM 레퍼런스 
	var options = { //지도를 생성할 때 필요한 기본 옵션 
		  center: new daum.maps.LatLng($("#nowX").val(), $("#nowY").val()), // 지도의 중심좌표.
		  level: 5 // 지도의 레벨(확대, 축소 정도) 
		}; 
	
	var map = new daum.maps.Map(container, options); // 지도 생성 및 객체 리턴
	//마커 표시될 위치
	var markerPosition  = new daum.maps.LatLng($("#nowX").val(),$("#nowY").val());
	//마커 생성
	var marker = new daum.maps.Marker({
	    position: markerPosition
	});
	
	//마커를 지도 위에 표시
	marker.setMap(map);
	
	// 인포 윈도우 생성
	var iwContent = '<div style="font-weight:700;">&ensp;경복궁 &emsp;&emsp;<a href="https://map.kakao.com/?map_type=TYPE_MAP&target=car&rt=,,494898,1132795&rt1=&rt2=%EA%B2%BD%EB%B3%B5%EA%B6%81&rtIds=,18619553" target="_blank" >길찾기</a>';
	var infowindow = new kakao.maps.InfoWindow({
		position : markerPosition,
		content : iwContent
	});	
	// 인포위도우를 마커위에 표시 
	// 두번째 marker를 넣어주지 않으면 지도 위에 표시
	infowindow.open(map, marker);
	</script>
  </body>
</html>