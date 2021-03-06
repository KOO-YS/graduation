<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>


  <head>
    <title> &mdash;</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,900" rel="stylesheet">
    <link rel="stylesheet" href="/static/fonts/icomoon/style.css">

    <link rel="stylesheet" href="/static/css/bootstrap.min.css">
    <link rel="stylesheet" href="/static/css/jquery-ui.css">
    <link rel="stylesheet" href="/static/css/owl.carousel.min.css">
    <link rel="stylesheet" href="/static/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="/static/css/owl.theme.default.min.css">

    <link rel="stylesheet" href="/static/css/jquery.fancybox.min.css">

    <link rel="stylesheet" href="/static/css/bootstrap-datepicker.css">

    <link rel="stylesheet" href="/static/fonts/flaticon/font/flaticon.css">

    <link rel="stylesheet" href="/static/css/aos.css">

    <link rel="stylesheet" href="/static/css/style.css">
    
  </head>
  <body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">
  
  <div class="site-wrap">

    <div class="site-mobile-menu site-navbar-target">
      <div class="site-mobile-menu-header">
        <div class="site-mobile-menu-close mt-3">
          <span class="icon-close2 js-menu-toggle"></span>
        </div>
      </div>
      <div class="site-mobile-menu-body"></div>
    </div>
   
    
    <c:import url="/WEB-INF/views/structure/header.jsp"></c:import>

    <div class="site-blocks-cover overlay" style="background-image: url(/static/images/Gyeongbokgung.jpg);" data-aos="fade" id="home-section">
      <div class="container">
        <div class="row align-items-center justify-content-center">
             <div class="col-md-6 mt-lg-5 text-center">
               <p class="mb-5">03045  서울 종로구 사직로 161 (세종로, 경복궁)</p>
             </div>
        </div>
      </div>
    </div>  

    
    <div class="site-section cta-big-image" id="about-section">
      <div class="container">
        
        <img src="/static/images/img_big_1.jpg" alt="Image" class="img-fluid">
        <div class="img-box">
          <span class="sub-title">경복궁</span>
          <h2>${notice.title}</h2>
          <p>${notice.content}</p>
          <p><a href="/about/notice/${notice.pk}" class="btn btn-outline-dark">Read More</a></p>
        </div>
      </div>  
    </div>

    
    <section class="site-section" id="info-section">
      <div class="container">
        <div class="row mb-5">
          <div class="col-md-5 text-left">
            <h2 class="section-title mb-3" style="padding-top:30px;">관람안내</h2>
          </div>
        </div>
        <div class="row">
          <div class="col-md-6 col-lg-4 mb-4 mb-lg-4" data-aos="fade-up">
            <div class="unit-4 d-flex">
              <div class="unit-4-icon mr-4"><span class="text-primary icon-autorenew"></span></div>
              <div>
                <h3>관람규칙규정</h3>
                <p>
	                관람하시면서 꼭 준수해 주셔야 할 사항입니다.
				</p>
                <p><a href="/guide/roles">자세히보기</a></p>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-lg-4 mb-4 mb-lg-4" data-aos="fade-up" data-aos-delay="100">
            <div class="unit-4 d-flex">
              <div class="unit-4-icon mr-4"><span class="text-primary icon-backspace"></span></div>
              <div>
                <h3>관람코스</h3>
                <p>광화문에서부터 신무문까지 관람코스를 소개합니다</p>
                <p><a href="/guide/course">자세히보기</a></p>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-lg-4 mb-4 mb-lg-4" data-aos="fade-up" data-aos-delay="200">
            <div class="unit-4 d-flex">
              <div class="unit-4-icon mr-4"><span class="text-primary icon-av_timer"></span></div>
              <div>
                <h3>해설안내</h3>
                <p>해설사의 스토리텔링을 들으며 경복궁을 둘러볼 수 있습니다</p>
                <p><a href="/guide/explain">자세히보기</a></p>
              </div>
            </div>
          </div>


          <div class="col-md-6 col-lg-4 mb-4 mb-lg-4" data-aos="fade-up" data-aos-delay="300">
            <div class="unit-4 d-flex">
              <div class="unit-4-icon mr-4"><span class="text-primary icon-beenhere"></span></div>
              <div>
                <h3>오시는길</h3>
                <p>경복궁까지 오시는 길을 확인할 수 있습니다</p>
                <p><a href="/guide/location">자세히보기</a></p>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-lg-4 mb-4 mb-lg-4" data-aos="fade-up" data-aos-delay="400">
            <div class="unit-4 d-flex">
              <div class="unit-4-icon mr-4"><span class="text-primary icon-business_center"></span></div>
              <div>
                <h3>편의시설 안내</h3>
                <p>편의시설 정보와 권역을 확인할 수 있습니다</p>
                <p><a href="/guide/facility">자세히보기</a></p>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-lg-4 mb-4 mb-lg-4" data-aos="fade-up" data-aos-delay="500">
            <div class="unit-4 d-flex">
              <div class="unit-4-icon mr-4"><span class="text-primary icon-cloud_done"></span></div>
              <div>
                <h3>주변 둘러보기</h3>
                <p>경복궁 주변의 고궁 및 기타 관람에 대해 확인할 수 있습니다.</p>
                <p><a href="/guide/near">자세히보기</a></p>
              </div>
            </div>
          </div>

        </div>
          

        </div>
    </section>
    
    <section class="site-section border-bottom bg-light" id="reservation-section">
      <div class="container">
        <div class="row mb-5">
          
          <div class="col-md-5 ml-auto mb-5 order-md-2" data-aos="fade">
            

            <div class="owl-carousel slide-one-item-alt">
              <img src="/static/images/slide_1.jpg" alt="Image" class="img-fluid">
              <img src="/static/images/slide_2.jpg" alt="Image" class="img-fluid">
              <img src="/static/images/slide_3.jpg" alt="Image" class="img-fluid">
              <img src="/static/images/slide_4.jpg" alt="Image" class="img-fluid">
            </div>
            <div class="custom-direction">
              <a href="#" class="custom-prev">&lt; </a><a href="#" class="custom-next">&gt;</a>
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
                    <p>4월부터 10월까지 진행되는 경회루 특별관람을 미리 예약하실 수 있습니다</p>
                    <p class="mb-0"><a href="/reservation/special" class="btn btn-primary btn-sm">예약하기</a></p>
                  </div>
                </div>
              </div>
              <div class="col-md-12 mb-md-5 mb-0 col-lg-6">
                <div class="unit-4">
                  <div class="unit-4-icon mr-4 mb-3"><span class="text-primary icon-assignment"></span></div>
                  <div>
                    <h3>한국어 단체해설 예약</h3>
                    <p>해설사의 스토리텔링과 함께 경복궁을 둘러볼 수 있습니다</p>
                    <p class="mb-0"><a href="/reservation/korean" class="btn btn-primary btn-sm">예약하기</a></p>
                  </div>
                </div>
              </div>
            </div>
          </div>
          
        </div>
      </div>
    </section>

	<section class="site-section" id="data-section">
      <div class="container">
        <div class="row mb-5">
          <div class="col-12 text-center">
            <h3 class="section-sub-title">data</h3>
            <h2 class="section-title mb-3">자료마당</h2>
          </div>
        </div>

        <div class="row">
          <div class="col-md-6 col-lg-6 mb-6 mb-lg-6">
            <div class="h-entry">
              <a href="/data/history"><img src="/static/images/past.jpg" alt="Image" class="img-fluid" height="340px";></a>
              <h2 class="font-size-regular"><a href="/data/history">경복궁의 역사</a></h2>
              <div class="meta mb-4">조선 왕조 제일의 법궁, 경복궁의 역사</div>
            </div> 
          </div>
          <div class="col-md-6 col-lg-6 mb-6 mb-lg-6">
            <div class="h-entry">
              <a href="/data/brochure"><img src="/static/images/course.gif" alt="Image" class="img-fluid"></a>
              <h2 class="font-size-regular"><a href="/data/brochure">간행물</a></h2>
              <div class="meta mb-4">경복궁에 대해 더 자세히 알 수 있는 간행물 다운로드</div>
            </div> 
          </div>
          
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