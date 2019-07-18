<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

  <head>
    <title> 관람안내</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <!-- 


    <link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">



     -->
    <link rel="stylesheet" href="css/bootstrap.min.css">

    <link rel="stylesheet" href="css/bootstrap-datepicker.css">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,900" rel="stylesheet">
    <link rel="stylesheet" href="css/jquery-ui.css">
    <link rel="stylesheet" href="fonts/icomoon/style.css">

    <link rel="stylesheet" href="css/aos.css">

    <link rel="stylesheet" href="css/style.css">
    
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
        <div class="row mb-5">
          <div class="col-md-5 text-left">
            <h2 class="section-title mb-3" style="padding-top:30px;">관람안내</h2>
          </div>
        </div>
        <div class="row">
		  <!-- 사이드바 -->
          <div class="col-md-3 sidebar bg-light">
            <div class="sidebar-box bg-light">
              <div class="categories">
                <h3>Categories</h3>
                <li><a href="#">관람규칙규정 <span>(개수)</span></a></li>
                <li><a href="#">관람코스 <span></span></a></li>
                <li><a href="#">해설안내 <span></span></a></li>
                <li><a href="#">오시는길 <span></span></a></li>
                <li><a href="#">주변시설 안내 <span></span></a></li>
                <li><a href="#">편의시설 안내 <span></span></a></li>
              </div>
            </div>
          </div>
          <!-- 사이드바 끝 -->
          <!-- 포스트 -->
          <div class="col-md-9 blog-content">
          	<div class="alert alert-danger" role="alert">
			  <h5 class="alert-heading">관람하시면서 꼭 준수해 주셔야 할 사항입니다.</h5>
			  <!-- <hr> -->
			  <p>모두에게 기분좋은 관람이 될 수 있도록 협조하여 주시기 바랍니다.</p>
			</div>
            <p class="lead">궁·능 관람 등에 관한 규정(제정 2019.03.29. 문화재청 궁능유적본부 훈령 제7호) </p>
            <p>문화재 보존·관리 등을 위하여 다음 각 호 중 어느 하나의 해당하는 자에 대하여 관람중지, 관련 물품 보관 또는 입장제한 등의 필요한 조치를 취할 수 있다.</p>
			<!-- https://www.codingfactory.net/11453
			https://getbootstrap.com/docs/4.0/components/alerts/ -->
            <blockquote class="bg-light">
            	<ul>
            		<li>인화물질 및 무기류(총포, 화약, 도검류 등) 등 위험물 소지자</li>
            		<li>주류, 각종 야영용품(텐트, 돗자리, 그늘막 등) 및 취사도구 소지자</li>
            		<li>음식물 및 도시락 등을 섭취하는 자</li>
            		<li>반려동물과 함께 들어오는 자(다만 장애인복지법 제2조에서 정한 장애인과 함께 들어오는 장애인 보조견은 예외로 한다. 이 경우 ‘장애인 보조견’이라 함은 장애인복지법 제40조 제2항의 ‘장애인 보조견 표지’를 붙인 ‘장애인 보조견’을 말한다.)</li>
            		<li>운동·놀이기구, 악기, 확성기 및 다른 사람의 관람 또는 문화재의 보존·관리에 지장을 줄 우려가 있는 물건 소지자</li>
            		<li>음주, 복장, 무속행위, 방언(放言), 사사로운 제사행위, 종교집회, 고성방가, 풍기문란 및 기타 부적절한 행위로 다른 사람의 관람 또는 문화재 보존·관리에 지장을 줄 우려가 있는 자</li>
            		<li>정당한 사유 없이 관람규정이나 직원의 안내에 따르지 않는 자</li>
            		<li>경복궁 경내 전 지역은 금연구역으로 하며, 궁능유적기관의 장은 흡연자에 대해 관람중지, 퇴장 등 필요한 조치를 취할 수 있다.</li>
            	</ul>
            </blockquote>

            <div class="pt-5">
              <p>Categories:  <a href="#">Design</a>, <a href="#">Events</a>  Tags: <a href="#">#html</a>, <a href="#">#trends</a></p>
            </div>
		
            
          </div>
          <!-- 포스트 끝 -->
        </div>

        </div>
    </section>

	<c:import url="/WEB-INF/views/structure/footer.jsp"></c:import>

  </div> <!-- .site-wrap -->

   <script src="js/jquery-3.3.1.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/jquery-ui.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/jquery.countdown.min.js"></script>
  <script src="js/bootstrap-datepicker.min.js"></script>
  <script src="js/jquery.easing.1.3.js"></script>
  <script src="js/aos.js"></script>
  <script src="js/jquery.fancybox.min.js"></script>
  <script src="js/jquery.sticky.js"></script>


  
  <script src="js/main.js"></script>
    
  </body>
</html>