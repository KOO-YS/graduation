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
	          	해설안내
		       	<b style="font-weight:600; float:right;">메인 > 관람안내 > 해설안내</b>	
	          </p>
            </div>
        </div>
        <div class="row">
		  <!-- 사이드바 col-md-3 -->
          <c:import url="/WEB-INF/views/contents/guide/guide_category.jsp"></c:import>
          <!-- 사이드바 끝 -->
          <!-- 포스트 -->
          <div class="col-md-9 blog-content">
            <blockquote class="bg-light">
            	<button class="btn btn-outline-primary" onclick='location.href="#standard-exp"'>정규해설</button>
            	<button class="btn btn-outline-primary" onclick='location.href="#special-exp"'>경회루 특별관람 해설</button>
            	<button class="btn btn-outline-primary" onclick='location.href="#seven-exp"'>칠궁 관람해설</button>
            </blockquote>
            	<blockquote class="bg-light" id="standard-exp">
            	<br>            	
	           		<h5 class="content-title">＊정규해설</h5>
	           			<ul>
           					<li>시간<br> ___table___</li>
           					<li>정규해설 : 경복궁문화재해설사 (경복궁안내실 02-3700-3900, -3904, -3905) </li>
           					<li>자원봉사단체 연락처 및 홈페이지 <br>- (금, 토요일 해설안내) 우리궁궐지킴이 02-723-4206 </li>
           					<li>해설 기간 : 1월 ~ 12월 연중(설날, 추석 당일 제외)</li>
           					<li>시작하는 곳 : 경복궁 안내실 앞(흥례문 안쪽)</li>
           					<li>소요시간 : 1시간-1시간 30분
           						<br>
           						<img alt="start-location" src="/static/images/start_location01.gif">
           					</li>
	           			</ul>
	           	</blockquote>
	           	<blockquote class="bg-light" id="special-exp">
	           	<br>
	           		<h5 class="content-title">＊경회루 특별관람 해설</h5>
	           			<ul>
           					<li>시간<br> ___table___</li>
           					<li>관람기간 : 4월~10월(7개월간)</li>
           					<li>관람방법 <br>- 전원 선착순 예약제(한국인 30명, 외국인 10명)/ 1인당, 4명까지 예약 가능합니다.</li>
           					<li>시작하는 곳 : 경회루 옆 함홍문</li>
           					<li>소요시간 : 40분
           						<br>
           						<img alt="start-location" src="/static/images/start_location02.gif">
           					</li>
	           			</ul>
        		</blockquote>
	           	<blockquote class="bg-light" id="seven-exp">
	           	<br>
	           		<h5 class="content-title" >＊칠궁 관람해설</h5>
	           			<ul>
          					<li>관람일자 : 매주 화요일 ~ 토요일(주 5일 / 일요일, 월요일 휴궁)</li>
          					<li>관람요금 : 무료</li>
          					<li>입장시간 : 1일 7회 시간제 자유관람(09:20,10:20,11:20,13:20,14:20,15:20,16:20)</li>
          					<li>관람 소요시간 : 50분(해설관람 30분 / 자유관람 20분)</li>
          					<li>관람방법<br> ___table___</li>	
	           			</ul>
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
    
  </body>
</html>