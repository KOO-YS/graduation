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
  <!-- 모달 -->
 <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">×</button>
          <h4 class="modal-title">Modal Header</h4>
        </div>
        <div class="modal-body">
          <p>Some text in the modal.</p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>

<!-- 모달 -->
  
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
	          	경회루 특별관람예약
		       	<b style="font-weight:600; float:right;">메인 > 관람예약/신청 > 경회루 특별관람예약</b>	
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
			      <h5 class="content-title">경회루 특별관람 예약</h5>
				</div>
				<div class="row bg-light">
					<div class="col-md-5">
					
						<p>* 예약날짜 선택</p>
				 		<div id="datepicker"></div>
					</div>
					<div class="col-md-7">
					
				 						  	
						<p id="today" style="float:left;"></p>
						<button class="btn btn-primary" style="float:right; padding:7px 20px;">예약 확인 및 취소</button>
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
            	<h5 class="content-title">＊경회루 특별관람 주요내용</h5>
            	<ul>
            		<li>개방시간 : 2019년 4월 ~ 10월(7개월간)</li>
            		<li>관람요금 : 추가요금 없이 관람(경복궁입장권 구매 후 관람)</li>
            		<li>관람시간 및 예약방법</li>
            		__table__
            	</ul>
            	<h5 class="content-title">＊경회루 특별관람시 주의사항</h5>
            	<ul>
            	<li><span style="color:red;">예약 후에 사정변경으로 관람이 불가능한 경우 반드시 예약취소를 하여야 합니다.</span></li>
            	<li>경회루 관람기간(4월 ~ 10월)동안 경회루 관람은 무료이지만 경복궁입장권은 구입하여야 합니다.</li>
            	<li>문화재 보호 및 원활한 관람을 위해 문화재 해설사의 인솔하에 관람하며, 외국어 해설은 하지 않습니다.</li>
            	<li>매회 40명 관람 가능하며 1인당 최대 예약가능 인원은 4명입니다.</li>
            	(예약가능기간 : 관람희망일 7일 전, 오전 10시부터 하루 전까지 선착순으로 마감됩니다.관람 당일은 접수 및 취소 불가)
            	<li>예약증을 소지(출력, 캡처, 촬영)하여 관람시간 5분 전까지 경회루 옆 집합장소[함홍문(含弘門)]에서 대기하여 주십시오.</li>
            	(경회루 특별관람이 시작되면 입장할 수 없습니다.)
            	<li>경회루 관람은 반드시 인터넷 예약을 하셔야 합니다. <span style="color:red;">(현장접수 불가)</span></li>
            	<li>경회루 특별관람은 <span style="color:red;">약 40분 가량 소요</span>되며, 정해진 시간 외에는 관람이 불가합니다.</li>
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

<!-- datepicker -->    
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
var date = new Date();
var year = date.getFullYear();
var month = date.getMonth()+1;
var day = date.getDate();

document.getElementById('today').innerHTML = "* "+year+"년 "+month+"월 "+day+"일 예약 현황";
/* 제한된 날짜 배열*/
var array = ["2019-08-14","2019-08-15","2019-08-16"];
$(document).ready(function(){
	$('#datepicker').datepicker({
	    beforeShowDay: function(date){	//날짜 제한
	   		var string = jQuery.datepicker.formatDate('yy-mm-dd', date);
	        return [ array.indexOf(string) == -1 ]
	    }
	});
});

// 클릭시 값 추출
$('#datepicker').on("change", function(){
	console.log($("#datepicker").val());
	if(confirm($("#datepicker").val()+"에 예약하시겠습니까?")){
		$("#myModal").modal();
	}
});


</script>
  </body>
</html>
