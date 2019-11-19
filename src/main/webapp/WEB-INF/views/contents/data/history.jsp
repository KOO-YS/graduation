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
        <style>

.history-tl-container ul.tl{
	width: 70%;
    margin:20px 0;
    padding:0;
    display:inline-block;
}
.history-tl-container ul.tl li{
    list-style: none;
    margin-left:30%;
    min-height:50px;
    
    padding:0 0 50px 30px;
    position:relative;
    margin-top: 40px;
    margin-bottom:10px;
}
/* 마지막 점 이후로 보더 끝 */
/* .history-tl-container ul.tl li:last-child{ border-left: medium;} */  
.history-tl-container ul.tl li::before{
    position: absolute;
    left: -10px;
    top : 15px;
    content: " ";
    border: 8px solid rgba(255, 255, 255, 0.74);
    border-radius: 500%;
    background: #e81050;
    height: 30px;
    width: 30px;
    transition: all 500ms ease-in-out;

}
.history-tl-container ul.tl li:hover::before{
    border-color:  salmon;
    transition: all 1000ms ease-in-out;
}
ul.tl li .item-title{
    font-size : 15pt;
    clear: right;
    float: right;
}
ul.tl li .item-detail{
    color:rgba(0,0,0,0.5);
    font-size:12px;
    clear: right;
    float: right;
}
ul.tl li .timestamp{
    font-weight: 700;
    color: #8D8D8D;
    clear: right;
    float: right;
  	width:100px;
    text-align: right;
    font-size: 15px;
}
    </style>
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
            <h2 class="section-title mb-3" style="padding-top:30px;">자료마당</h2>
          </div>
            <div class="col-md-9">
	          <p class="section-sub-title" style="padding-top:60px;">
	          	경복궁의 역사
		       	<b style="font-weight:600; float:right;">메인 > 자료마당 > 경복궁의 역사</b>	
	          </p>
            </div>
        </div>
        <div class="row">
		  <!-- 사이드바 col-md-3 -->
          <c:import url="/WEB-INF/views/contents/data/data_category.jsp"></c:import>
          <!-- 사이드바 끝 -->
          <!-- 포스트 -->
          <div class="col-md-9 blog-content">
            <blockquote class="bg-light">
            <h2 class="content-title" style=""> &emsp;&emsp; &emsp;&emsp; &emsp;&emsp;* 경복궁의 역사</h2>
            	<div class="history-tl-container">
			        <ul class="tl">
			        <c:forEach var="his" items="${history}">
			        <li class="tl-item" ng-repeat="item in retailer_history">
			            <div class="timestamp">
			                ${his.year}년대
			            </div>
			            <div class="item-title">${his.title }</div>
			            <div class="item-detail">${his.detail }</div>
			          </li>
			        </c:forEach>
			          <!-- <li class="tl-item" ng-repeat="item in retailer_history">
			            <div class="timestamp">
			                1300년대
			            </div>
			            <div class="item-title">경복궁 창건</div>
			            <div class="item-detail">Don't forget the ring</div>
			          </li>
			          <li class="tl-item" ng-repeat="item in retailer_history">
			            <div class="timestamp">
			                1400년대
			            </div>
			            <div class="item-title">법궁 체제 확립</div>
			            <div class="item-detail">Don't enter the caves!!</div>
			          </li>
			          <li class="tl-item" ng-repeat="item in retailer_history">
			            <div class="timestamp">
			                1500년대
			              </div>
			              <div class="item-title">화재 및 임진왜란으로 경복궁 소실</div>
			            <div class="item-detail">Also, throw that Gollum too</div>
			          </li> -->
			        </ul>
			      </div>
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