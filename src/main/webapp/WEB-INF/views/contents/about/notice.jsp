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
            <h2 class="section-title mb-3" style="padding-top:30px;">경복궁 관리소</h2>
          </div>
            <div class="col-md-9">
	          <p class="section-sub-title" style="padding-top:60px;">
	          	공지사항
		       	<b style="font-weight:600; float:right;">메인 > 경복궁관리소 > 공지사항</b>	
	          </p>
            </div>
        </div>
        <div class="row">
		  <!-- 사이드바 col-md-3 -->
          <c:import url="/WEB-INF/views/contents/about/about_category.jsp"></c:import>
          <!-- 사이드바 끝 -->
          <!-- 포스트 -->
          <div class="col-md-9 blog-content">
            <blockquote class="bg-light">
            	<table class="table table-hover table-sm" style="text-align:center">
				  <thead>
				    <tr>
				      <th scope="col">번호</th>
				      <th scope="col">제목</th>
				      <th scope="col">작성자</th>
				      <th scope="col">등록일</th>
				    </tr>
				  </thead>
				  <tbody>
				  <c:forEach var="no" items="${notice}">
				    <tr>
				      <th scope="row">${no.pk }</th>
				      <td><a href="/about/notice/${no.pk }">${no.title }</a></td>
				      <td>${no.writer }</td>
				      <td>${no.regdate }</td>
				    </tr>
				  </c:forEach>
				  </tbody>
				</table>
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