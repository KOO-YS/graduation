<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

  <head>
    <title> 관람안내</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,900" rel="stylesheet">
    <link rel="stylesheet" href="/fonts/icomoon/style.css">

    <link rel="stylesheet" href="/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/jquery-ui.css">
    <link rel="stylesheet" href="/css/owl.carousel.min.css">
    <link rel="stylesheet" href="/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="/css/owl.theme.default.min.css">

    <link rel="stylesheet" href="/css/jquery.fancybox.min.css">

    <link rel="stylesheet" href="/css/bootstrap-datepicker.css">

    <link rel="stylesheet" href="/fonts/flaticon/font/flaticon.css">

    <link rel="stylesheet" href="/css/aos.css">

    <link rel="stylesheet" href="/css/style.css">
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

    <section class="site-section border-bottom bg-light" id="reservation-section">
      <div class="container" style="margin-top:50px;">
        <div class="row mb-5">
          
          <div class="col-md-5 ml-auto mb-5 order-md-2" data-aos="fade">
            

            <div class="owl-carousel slide-one-item-alt">
              <img src="images/slide_1.jpg" alt="Image" class="img-fluid">
              <img src="images/slide_2.jpg" alt="Image" class="img-fluid">
              <img src="images/slide_3.jpg" alt="Image" class="img-fluid">
              <img src="images/slide_4.jpg" alt="Image" class="img-fluid">
            </div>
            <div class="custom-direction">
              <a href="#" class="custom-prev">Prev</a><a href="#" class="custom-next">Next</a>
            </div>
          </div>
          <div class="col-md-6 order-md-1" data-aos="fade">

            <div class="row">

              
              <div class="col-12 mb-4">
                <h2 class="section-title mb-3">관람 예약/신청</h2>
              </div>
              <div class="col-md-12 mb-md-5 mb-0 col-lg-6">
                <div class="unit-4">
                  <div class="unit-4-icon mr-4 mb-3"><span class="text-primary icon-av_timer"></span></div>
                  <div>
                    <h3>경회루 특별관람 예약</h3>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis quis consect.</p>
                    <p class="mb-0"><a href="/tour">예약하기</a></p>
                  </div>
                </div>
              </div>
              <div class="col-md-12 mb-md-5 mb-0 col-lg-6">
                <div class="unit-4">
                  <div class="unit-4-icon mr-4 mb-3"><span class="text-primary icon-assignment"></span></div>
                  <div>
                    <h3>한국어 단체해설 예약</h3>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis quis.</p>
                    <p class="mb-0"><a href="/tour">예약하기</a></p>
                  </div>
                </div>
              </div>
            </div>
            
          </div>
          
        </div>
	      <div class="row mb-5">
	      <h3>경회루 특별관람 예약</h3>
	      </div>
	      <div class="row mb-5">
	      	<div class="col-md-3">
	      		<p>* 예약날짜 선택</p>
		       	<div id="datepicker"></div>
	      	</div>
	      	<div class="col-md-9">	
				<p style="float:left;">* 2019년 00월 00일 예약 현황</p>
				<button class="btn btn-primary" style="float:right;">예약 확인 및 취소</button>
				<table class="table" style="margin-top:60px;">
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
	      <div class="row mb-5">
	      	<div class="col-md-12">
		      	<h3>경회루 특별관람 예약</h3>
		      	<p>- 개방시간 : 2019년 4월 ~ 10월(7개월간)</p>
				<p>- 관람요금 : 추가요금 없이 관람(경복궁입장권 구매 후 관람)</p>
				<p>- 관람시간 및 예약방법</p>
			</div>
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
<!-- <script>
$(document).ready(function(){
	var dt = new Date();
	var y = dt.getFullYear();
	var m = dt.getMonth()+1;
	var d = dt.getDate()+1;
	var h = dt.getHours();

	if(h >= 15) d++;
	mindt = y+"-"+m+"-"+d;

	$("#datepicker").datepicker({
		changeYear: true,
		changeMonth: true,
		dateFormat:"yy-mm-dd",
		showMonthAfterYear:true,
		dayNamesMin: ['일','월','화','수','목','금','토'],
		monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
		minDate: mindt,
		maxDate: "+10D",
		onSelect: function(value) {
			var dt2 = new Date(value);
			var w = dt2.getDay();
			if(w == 6 || w == 0) {
				alert('토요일, 일요일에는 퇴사를 할 수 없습니다.');
			}
		},
		onClose: function(value) {
			var dt2 = new Date(value);
			var w = dt2.getDay();
			if(w == 6 || w == 0) {
				$("#datepicker").datepicker("setDate", "");
			}

		}
	});
});
</script> -->
  </body>
</html>