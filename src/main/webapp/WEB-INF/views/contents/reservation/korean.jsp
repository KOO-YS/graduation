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
    
    <!-- datepicker -->
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
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
            <h2 class="section-title mb-3" style="padding-top:30px;">관람예약/신청</h2>
          </div>
            <div class="col-md-9">
	          <p class="section-sub-title" style="padding-top:60px;">
	          	한국어 단체해설 예약
		       	<b style="font-weight:600; float:right;">메인 > 관람예약/신청 > 한국어 단체해설 예약</b>	
	          </p>
            </div>
        </div>
        <div class="row">
		  <!-- 사이드바 col-md-3 -->
          <c:import url="/WEB-INF/views/contents/reservation/reserv_category.jsp"></c:import>
          <!-- 사이드바 끝 -->
          <!-- 포스트 -->
          <div class="col-md-9 blog-content">
            <blockquote class="bg-light">
				<div class="row">
			      <h5 class="content-title">한국어 단체해설 예약</h5>
				</div>
				<div class="row bg-light">
					<div class="col-md-5">
					
						<p>* 예약날짜 선택</p>
				 		<div id="datepicker"></div>
					</div>
					<div class="col-md-7">
					
				 						  	
						<p style="float:left;">* 2019년 00월 00일 예약 현황</p>
						<button class="btn btn-primary" style="float:right;">예약 확인 및 취소</button>
						<table class="table table-sm" style="margin-top:60px; text-align:center;">
						  <thead class="thead-light">
						    <tr>
						      <th scope="col">회차</th>
						      <th scope="col">관람인원</th>
						      <th scope="col">예약인원</th>
						      <th scope="col">예약하기</th>
						    </tr>
						  </thead>
						  <tbody>
						  	<tr>
						      <th scope="row">1</th>
						      <td>Mark</td>
						      <td>Otto</td>	
						      <td><button class="btn">예약하기</button></td>
						    </tr>
						    <tr>
						      <th scope="row">2</th>
						      <td>Jacob</td>
						      <td>Thornton</td>
						      <td>@fat</td>
						    </tr>
						  </tbody>
						</table>					
					</div>
				</div>
            </blockquote>
            <blockquote class="bg-light">
            	<h5 class="content-title">＊정규해설</h5>
            	<ul>
            		<li>동절기(11월~2월)에는 5회차 시간이 16:00에서 15:30으로 앞당겨 운영되오니 유의하시길 바랍니다.</li>
            		<li>예약 및 취소기간 : 관람희망일 7일전 10:00 ~ 관람희망일 1일전 23:00 까지</li>
            		<li>경복궁 해설은 불특정 다수의 관람객을 대상으로 이루어지므로 이해가 부족한 초등학교 저학년 및 미취학 아동의 단체 해설 예약은 불가함을 알려드립니다.</li>
            		<li>10인 미만 개인 관람객은 별도의 예약 없이 해설에 참여하실 수 있습니다.</li>
            		<li>10인 이상의 단체는 예약이 필요하며 한 회당 30명까지 예약이 가능합니다.</li>
            		<li>단체 해설 예약은 별도해설이 아니며, 예약자와 개별적으로 참여하는 관람객이 함께 해설을 받습니다.</li>
            		
            	</ul>
            		* 문의처 : 경복궁 문화재안내실 02-3700-3904
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
 <!-- datepicker -->    
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
var array = ["2019-07-14","2019-07-15","2019-07-16"];
$(document).ready(function(){
	$('#datepicker').datepicker({
	    beforeShowDay: function(date){
	    	 var string = jQuery.datepicker.formatDate('yy-mm-dd', date);
	        return [ array.indexOf(string) == -1 ]
	    }
	});
});
	

</script>   
  </body>
</html>