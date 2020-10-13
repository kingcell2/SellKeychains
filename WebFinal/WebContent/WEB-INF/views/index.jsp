<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>
<!DOCTYPE html>
<html lang="zxx">
   <head>
   <base href="${pageContext.servletContext.contextPath }/">
      <link rel="shortcut icon" href="images/logo.png">	 
      <title>DORORO SHOP - Trang chủ</title>     
      <!--meta tags -->
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta name="keywords" content="Toys Shop Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
         Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
      <script>
         addEventListener("load", function () {
         	setTimeout(hideURLbar, 0);
         }, false);
         
         function hideURLbar() { 
         	window.scrollTo(0, 1);
         }
      </script>
      <!--//meta tags ends here-->
      <!--booststrap-->
      <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all">
      <!--//booststrap end-->
      <!-- font-awesome icons -->
      <link href="css/fontawesome-all.min.css" rel="stylesheet" type="text/css" media="all">
      <!-- //font-awesome icons -->
      <!-- For Clients slider -->
      <link rel="stylesheet" href="css/flexslider.css" type="text/css" media="all" />
      <!--flexs slider-->
      <link href="css/JiSlider.css" rel="stylesheet">
      <!--Shoping cart-->
      <link rel="stylesheet" href="css/shop.css" type="text/css" />
      <!--//Shoping cart-->
      <!--stylesheets-->
      <link href="css/style.css" rel='stylesheet' type='text/css' media="all">
      <!--//stylesheets-->
      <link href="//fonts.googleapis.com/css?family=Sunflower:500,700" rel="stylesheet">
      <link href="//fonts.googleapis.com/css?family=Open+Sans:400,600,700" rel="stylesheet">
   </head>
   <body>
      <div class="header-outs" id="home">
         <div class="header-bar">
            <div class="info-top-grid">
               <div class="info-contact-agile">
                  <ul>
                     <li>
                        <span class="fas fa-phone-volume"></span>
                        <p>+(84) 036 215 6564</p>
                     </li>
                     <li>
                        <span class="fas fa-envelope"></span>
                        <p><a href="mailto:n16dccn168@student.ptithcm.edu.vn">n16dccn168@student.ptithcm.edu.vn</a></p>
                     </li>
                     <li>
                     </li>
                  </ul>
               </div>
            </div>
            <div class="container-fluid">
               <div class="hedder-up row">
                  <div class="col-lg-3 col-md-3 logo-head">
                     <h1><a class="fas fa-fire" href="http://localhost:8080/WebFinal/index.htm"> Dororo Shop</a></h1>
                  </div>
                  <div class="col-lg-5 col-md-6 search-right">
                     <form  action="search.htm" method="GET">
                        <input name="s" type="search" placeholder="Tìm kiếm" value=""/>
                        <button class="btn" type="submit">Tìm</button>
                     </form>
                  </div>
                  <div class="col-lg-4 col-md-3 right-side-cart">
                     <div class="cart-icons">
                        <ul>
                           <li>
                              <a href="http://localhost:8080/WebFinal/admin/login.htm">
                              <span class="far fa-user" title="Đăng nhập"></span>	</a>			            
                           </li>
                           <li class="toyscart toyscart2 cart cart box_1">
                              <form action="checkout.htm" method="get" class="last">
                                 <input type="hidden" name="cmd" value="_cart">
                                 <input type="hidden" name="display" value="1">
                                 <button class="top_toys_cart" type="submit" name="submit" value="">
                                 <span class="fas fa-cart-arrow-down"></span>
                                 </button>
                              </form>
                           </li>
                        </ul>
                     </div>
                  </div>
               </div>
            </div>
            <nav class="navbar navbar-expand-lg navbar-light">
               <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
               <span class="navbar-toggler-icon"></span>
               </button>
               <div class="collapse navbar-collapse justify-content-center" id="navbarSupportedContent">
                  <ul class="navbar-nav ">
                     <li class="nav-item active">
                        <a class="nav-link" href="http://localhost:8080/WebFinal/index.htm">TRANG CHỦ <span class="sr-only">(current)</span></a>
                     </li>
                      <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown1" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        SẢN PHẨM
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                           <a class="nav-link" href="http://localhost:8080/WebFinal/product/1.htm">MÓC KHÓA</a>
                           <a class="nav-link " href="http://localhost:8080/WebFinal/product/2.htm">MÔ HÌNH</a>
                           <a class="nav-link " href="http://localhost:8080/WebFinal/product/3.htm">SẢN PHẨM MỚI</a>                         
                           <a class="nav-link " href="http://localhost:8080/WebFinal/product/4.htm">SẢN PHẨM HOT</a>                         
                           <a class="nav-link " href="http://localhost:8080/WebFinal/product/5.htm">KHÁC</a>                         
                                                    
                        </div>
                     </li>
                     <li class="nav-item">
                        <a href="http://localhost:8080/WebFinal/contact.htm" class="nav-link">LIÊN HỆ</a>
                     </li>
                  </ul>
               </div>
            </nav>
         </div>
         <!-- Slideshow 4 -->
         <div class="slider text-center">
            <div class="callbacks_container">
               <ul class="rslides" id="slider4">
                  <li>
                     <div class="slider-img one-img">
                        <div class="container">
                           <div class="slider-info ">
                              <h5>PLAYERUNKNOWN'S <br>BATTLEGROUNDS</h5>
                              <div class="bottom-info">
                                 <p>Nếu nhắc đến các tựa game hay của năm 2017, sẽ thật sai lầm nếu không nhắc đến PlayerUnknown’s Battlegrounds (PUBG). Tựa game này đã trở thành một hiện tượng của năm 2017 khi nhanh chóng đạt được 4 triệu bản bán ra chỉ sau 3 tháng.</p>
                              </div>
                              <div class="outs_more-buttn">
                                 <a href="https://www.pubg.com/">Xem thêm</a>
                              </div>
                           </div>
                        </div>
                     </div>
                  </li>
                  <li>
                     <div class="slider-img two-img">
                        <div class="container">
                           <div class="slider-info ">
                              <h5>Một số điều thú vị về<br>AUG A3</h5>
                              <div class="bottom-info">
                                 <p>AUG A3 chính là một trong những vũ khí AR toàn diện nhất của PUBG.AUG A3 rất dễ điều khiển và gia tốc đầu đạn khá cao. Tuy nhiên chính vì độ "bá đạo" của mình nên game thủ chỉ có thể tìm thấy khẩu AR này trong "hòm thính" Air Drops.</p>
                              </div>
                              <div class="outs_more-buttn">
                                 <a href="https://pubg.gamepedia.com/AUG_A3">Xem thêm</a>
                              </div>
                           </div>
                        </div>
                     </div>
                  </li>
                  <li>
                     <div class="slider-img three-img">
                        <div class="container">
                           <div class="slider-info">
                              <h5>Một số điều thú vị về<br> M416</h5>
                              <div class="bottom-info">
                                 <p>M416 là khẩu súng trường tấn công được ưa thích nhất trong PUBG vì nhiều lý do khác nhau.M416 thường được đem ra so sánh với SCAR-L vì cả 2 đều sử dụng đạn “xanh” 5.56mm. Tuy nhiên M416 phổ biến và được yêu thích hơn vì có thể gắn được báng súng cũng như tốc độ bắn nhỉnh hơn một chút.</p>
                              </div>
                              <div class="outs_more-buttn">
                                 <a href="https://pubg.gamepedia.com/M416">Xem thêm</a>
                              </div>
                           </div>
                        </div>
                     </div>
                  </li>
               </ul>
            </div>
            <!-- This is here just to demonstrate the callbacks -->
            <!-- <ul class="events">
               <li>Example 4 callback events</li>
               </ul>-->
            <div class="clearfix"></div>
         </div>
      </div>
      <!-- //banner -->
      <!-- about -->
      <section class="about py-lg-4 py-md-3 py-sm-3 py-3" id="about">
         <div class="container py-lg-5 py-md-5 py-sm-4 py-4">      	
            <h3 class="title text-center mb-lg-5 mb-md-4  mb-sm-4 mb-3">SẢN PHẨM BÁN CHẠY</h3>           
            <div class="row banner-below-w3l">
            <c:forEach var="item" items="${listMoHinh}">           
               <div class="col-lg-4 col-md-6 col-sm-6 text-center banner-agile-flowers">
                 <img src="images/products/${item.link}" class="img-thumbnail" alt="">
                  <div class="banner-right-icon">
                    <h6> <b class="pt-3">${item.name }</b></h6>
                  </div>
               </div>
               			<a href="http://localhost:8080/WebFinal/detail/${item.id}.htm"></a>              
               </c:forEach>            
               <div class="toys-grids-upper">
                  <div class="about-toys-off">
                     <h2>Nhận giảm giá lên đến<span>70% Off </span>khi mua tại cửa hàng</h2>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <!-- //about -->
      <!--new Arrivals -->
      <section class="blog py-lg-4 py-md-3 py-sm-3 py-3">
         <div class="container py-lg-5 py-md-4 py-sm-4 py-3">
            <h3 class="title clr text-center mb-lg-5 mb-md-4 mb-sm-4 mb-3">SẢN PHẨM MỚI </h3>
           
            <div class="slid-img">         
                
               <ul id="flexiselDemo1">
               <c:forEach var="item" items="${listMocKhoa}">
                  <li>  
                                                          
                     <div class="agileinfo_port_grid">
                     
                        <img src="images/products/${item.link}" alt=" " class="img-fluid" />
                        <div class="banner-right-icon">
                           <a class="pt-3">${item.name }</a>
                        </div>
                        <div class="outs_more-buttn">
                           <a href="http://localhost:8080/WebFinal/product/1.htm">XEM THÊM</a>  
                                                                                                            
                        </div>                      
                     </div>
                                 
                  </li>   
                       </c:forEach>     
                   </ul>   
                    
            </div>
                
         </div>
      </section>
      <!--//about -->
      <!--Customers Review -->
      <!--//Customers Review -->
      <!-- Product-view -->
      <!--//Product-view-->
      <!--//Product-view-->
      <!--Product-about-->
      <section class="about py-lg-4 py-md-3 py-sm-3 py-3">
         <div class="container py-lg-5 py-md-5 py-sm-4 py-3">
            <h3 class="title text-center mb-lg-5 mb-md-4 mb-sm-4 mb-3">THÔNG TIN</h3>
            <div class="about-products-w3layouts">
               <p>
               Sản phẩm mua tại DORORO SHOP là các loại sản phẩm được bảo đảm về chất lượng!
               </p>
               <p class="my-lg-4 my-md-3 my-3">
               Hàng có thể đổi trả nếu phát hiện bị lỗi trong 3 ngày!
               Đặt hàng và thu tiền tận nơi toàn quốc
               </p>
               <p>
               Hãy đặt hàng ở cửa hàng của chúng tôi! Cám ơn quý khách đã tin dùng.
               Hotline: +(84) 0362156564
               </p>
            </div>
         </div>
      </section>
      <!--//Product-about-->
      <!--subscribe-address-->
      <section class="subscribe">
         <div class="container-fluid">
         <div class="row">
            <div class="col-lg-6 col-md-6 map-info-right px-0">
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.522324040244!2d106.78381231428754!3d10.847820460839351!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3175276bb276eaf7%3A0x56a6a0eafe0e3b09!2zOTcgxJDGsOG7nW5nIE1hbiBUaGnhu4duLCBIaeG7h3AgUGjDuiwgUXXhuq1uIDksIEjhu5MgQ2jDrSBNaW5oLCBWaeG7h3QgTmFt!5e0!3m2!1svi!2s!4v1568790993842!5m2!1svi!2s" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen=""></iframe>            </div>
            <div class="col-lg-6 col-md-6 address-w3l-right text-center">
               <div class="address-gried ">
                  <span class="far fa-map"></span>
                  <p>97 Man Thiện - phường Hiệp Phú <br>TP. Hồ Chí Minh
                  <p>
               </div>
               <div class="address-gried mt-3">
                  <span class="fas fa-phone-volume"></span>
                  <p> +(84)036 215  6564<br>+(84)0355 551 442</p>
               </div>
               <div class=" address-gried mt-3">
                  <span class="far fa-envelope"></span>
                  <p><a href="mailto:n16dccn168@student.ptithcm.edu.vn">n16dccn168@student.ptithcm.edu.vn</a>
                     <br><a href="mailto:trunghoanga2@gmail.com">trunghoanga2@gmail.com</a>
                  </p>
               </div>
            </div>
         </div>
		 </div>
      </section>
      <!--//subscribe-address-->
      <section class="sub-below-address py-lg-4 py-md-3 py-sm-3 py-3">
         <div class="container py-lg-5 py-md-5 py-sm-4 py-3">
            <h3 class="title clr text-center mb-lg-5 mb-md-4 mb-sm-4 mb-3">LIÊN HỆ VỚI CHÚNG TÔI</h3>
            <div class="icons mt-4 text-center">
               <ul>
                  <li><a href="https://www.facebook.com/TrungNgocHoang9x"><span class="fab fa-facebook-f"></span></a></li>
                  <li><a href="mailto:n16dccn168@student.ptithcm.edu.vn"><span class="fas fa-envelope"></span></a></li>
                  <li><a href="#"><span class="fas fa-rss"></span></a></li>
                  <li><a href="#"><span class="fab fa-vk"></span></a></li>
               </ul>
               
            </div>
         </div>
      </section>
      <!--//subscribe-->
      <!-- footer -->
      <footer class="py-lg-4 py-md-3 py-sm-3 py-3 text-center">
         <div class="copy-agile-right">
            <p> 
               © 2019 Dororo Shop. Design by <a href="https://www.facebook.com/TrungNgocHoang9x" target="_blank">Hoàng Ngọc Trung</a>
            </p>
         </div>
      </footer>
      <!-- //footer -->
      <!-- //Modal 1-->
      <!--js working-->
      <script src='js/jquery-2.2.3.min.js'></script>
      <!--//js working-->
      <!-- cart-js -->
      <script src="js/minicart.js"></script>
      <script>
         toys.render();
         
         toys.cart.on('toys_checkout', function (evt) {
         	var items, len, i;
         
         	if (this.subtotal() > 0) {
         		items = this.items();
         
         		for (i = 0, len = items.length; i < len; i++) {}
         	}
         });
      </script>
      <!-- //cart-js -->
      <!--responsiveslides banner-->
      <script src="js/responsiveslides.min.js"></script>
      <script>
         // You can also use "$(window).load(function() {"
         $(function () {
         	// Slideshow 4
         	$("#slider4").responsiveSlides({
         		auto: true,
         		pager:false,
         		nav:true ,
         		speed: 900,
         		namespace: "callbacks",
         		before: function () {
         			$('.events').append("<li>before event fired.</li>");
         		},
         		after: function () {
         			$('.events').append("<li>after event fired.</li>");
         		}
         	});
         
         });
      </script>
      <!--// responsiveslides banner-->	 
      <!--slider flexisel -->
      <script src="js/jquery.flexisel.js"></script>
      <script>
         $(window).load(function() {
         	$("#flexiselDemo1").flexisel({
         		visibleItems: 3,
         		animationSpeed: 3000,
         		autoPlay:true,
         		autoPlaySpeed: 2000,    		
         		pauseOnHover: true,
         		enableResponsiveBreakpoints: true,
         		responsiveBreakpoints: { 
         			portrait: { 
         				changePoint:480,
         				visibleItems: 1
         			}, 
         			landscape: { 
         				changePoint:640,
         				visibleItems:2
         			},
         			tablet: { 
         				changePoint:768,
         				visibleItems: 2
         			}
         		}
         	});
         	
         });
      </script>
      <!-- //slider flexisel -->
      <!-- start-smoth-scrolling -->
      <script src="js/move-top.js"></script>
      <script src="js/easing.js"></script>
      <script>
         jQuery(document).ready(function ($) {
         	$(".scroll").click(function (event) {
         		event.preventDefault();
         		$(jspl,body').animate({
         			scrollTop: $(this.hash).offset().top
         		}, 900);
         	});
         });
      </script>
      <!-- start-smoth-scrolling -->
      <!-- here stars scrolling icon -->
      <script>
         $(document).ready(function () {
         
         	var defaults = {
         		containerID: 'toTop', // fading element id
         		containerHoverID: 'toTopHover', // fading element hover id
         		scrollSpeed: 1200,
         		easingType: 'linear'
         	};
         	$().UItoTop({
         		easingType: 'easeOutQuart'
         	});
         
         });
      </script>
      <!-- //here ends scrolling icon -->
      <!--bootstrap working-->
      <script src="js/bootstrap.min.js"></script>
      <!-- //bootstrap working-->
   </body>
</html>