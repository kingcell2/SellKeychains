<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>

<!DOCTYPE html>
<html lang="zxx">

   <head>   <base href="${pageContext.servletContext.contextPath}/">
      <link rel="shortcut icon" href="images/logo.png">	 
   
      <title> DORORO SHOP - Thanh toán</title>     
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
      <!--Shoping cart-->
      <link rel="stylesheet" href="css/shop.css" type="text/css" />
      <!--//Shoping cart-->
      <!--checkout-->
      <link rel="stylesheet" type="text/css" href="css/checkout.css">
      <!--//checkout-->
      <link href="css/easy-responsive-tabs.css" rel='stylesheet' type='text/css' />
      <!--stylesheets-->
      <link href="css/style.css" rel='stylesheet' type='text/css' media="all">
      <!--//stylesheets-->
      <link href="//fonts.googleapis.com/css?family=Sunflower:500,700" rel="stylesheet">
      <link href="//fonts.googleapis.com/css?family=Open+Sans:400,600,700" rel="stylesheet">
   </head>
   <body>
      <!--headder-->
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
                     <h1><a class="fas fa-fire" href="http://localhost:8080/WebFinal/user/index.htm"> Dororo Shop</a></h1>
               </div>
               <div class="col-lg-5 col-md-6 search-right">
                  <form action="user/search.htm" method="GET" class="form-inline my-lg-0">
                        <input class="form-control mr-sm-2" name="s" type="search" placeholder="Tìm kiếm" value=""/>
                        <button class="btn" type="submit">Tìm</button>
                  </form>
               </div>
               <div class="col-lg-4 col-md-3 right-side-cart">
                  <div class="cart-icons">
                     <ul>
                        
                     
                        <li class="toyscart toyscart2 cart cart box_1">
                           <form action="checkout.htm" method="get" class="last">
                              <input type="hidden" name="cmd" value="_cart">
                              <input type="hidden" name="display" value="1">
                              <button class="top_toys_cart" type="submit" name="submit" value="">
                              <span class="fas fa-cart-arrow-down"></span>
                              </button>
                           </form>
                        </li>
                        <li>
 							<span title="Tên người dùng">Xin Chào: ${user1.name}</span> 
							
                           </li>  
                         <li>
                  			<span>Quyền Hạn: USER</span>
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
                  <li class="nav-item ">
                     <a class="nav-link" href="http://localhost:8080/WebFinal/user/index.htm">TRANG CHỦ <span class="sr-only">(current)</span></a>
                     </li>
                   
                     
                      <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown1" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        SẢN PHẨM
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                           <a class="nav-link" href="http://localhost:8080/WebFinal/user/product/1.htm">MÓC KHÓA</a>
                           <a class="nav-link " href="http://localhost:8080/WebFinal/user/product/2.htm">MÔ HÌNH</a>
                           <a class="nav-link " href="http://localhost:8080/WebFinal/user/product/3.htm">SẢN PHẨM MỚI</a>                         
                           <a class="nav-link " href="http://localhost:8080/WebFinal/user/product/4.htm">SẢN PHẨM HOT</a>                         
                           <a class="nav-link " href="http://localhost:8080/WebFinal/user/product/5.htm">KHÁC</a>                         
                                                    
                        </div>
                     </li>
                     <li class="nav-item">
                        <a href="http://localhost:8080/WebFinal/user/contact.htm" class="nav-link">LIÊN HỆ</a>
                  </li>
                  <li class="nav-item">
                        <a href="http://localhost:8080/WebFinal/user/about.htm" class="nav-link">TÀI KHOẢN</a>
                     </li>
                   <li class="nav-item">
                        <a href="http://localhost:8080/WebFinal/index.htm" class="nav-link">ĐĂNG XUẤT</a>
                     </li>
               </ul>
            </div>
         </nav>
      </div>
	  </div>
      <!--//headder-->
      <!-- banner -->
      <div class="inner_page-banner one-img">
      </div>
      <!-- short -->
      <div class="using-border py-3">
         <div class="inner_breadcrumb  ml-4">
            <ul class="short_ls">
               <li>
                  <a href="http://localhost:8080/WebFinal/user/index.htm">TRANG CHỦ</a>
                  <span>/ /</span>
               </li>
               <li>THANH TOÁN</li>
            </ul>
         </div>
      </div>
      <!-- //short-->
      <!-- top Products -->
      <section class="checkout py-lg-4 py-md-3 py-sm-3 py-3">
         <div class="container py-lg-5 py-md-4 py-sm-4 py-3">
            <div class="ads-grid_shop">
               <div class="shop_inner_inf">
                  <div class="privacy about">
                     <h3>THANH<span> TOÁN</span></h3>
                     <!--/tabs-->
                     <div class="responsive_tabs">
                        <div id="horizontalTab">
                           <ul class="resp-tabs-list">
                              <li>Cash on delivery (COD)</li>
                              <li>credit/debit</li>
                              <li>Net Banking</li>
                              <li>ship cod</li>
                           </ul>
                           <div class="resp-tabs-container">
                              <!--/tab_one-->
                              <div class="tab1">
                                 <div class="pay_info">
                                    <div class="vertical_post check_box_agile">
                                       <h5>THANH TOÁN KHI NHẬN HÀNG</h5>
                                       <div class="checkbox">
                                          <div class="check_box_one cashon_delivery">
                                             <label class="anim">
                                             <input type="checkbox" class="checkbox">
                                             <span>Vui lòng "click" vào SHIP COD để điền thông tin để nhận hàng</span> 
                                             </label>
                                          </div>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                              <!--//tab_one-->
							<div class="tab2">
                                 <div class="pay_info">
                                    <form action="#" method="post" class="creditly-card-form agileinfo_form">
                                       <section class="creditly-wrapper wthree, w3_agileits_wrapper">
                                          <div class="credit-card-wrapper">
                                             <div class="first-row form-group">
                                                <div class="controls">
                                                   <label class="control-label">Name on Card</label>
                                                   <input class="billing-address-name form-control" type="text" name="name" placeholder="John Smith">
                                                </div>
                                                <div class="w3_agileits_card_number_grids">
                                                   <div class="w3_agileits_card_number_grid_left">
                                                      <div class="controls">
                                                         <label class="control-label">Card Number</label>
                                                         <input class="number credit-card-number form-control" type="text" name="number" inputmode="numeric" autocomplete="cc-number"
                                                            autocompletetype="cc-number" x-autocompletetype="cc-number" placeholder="&#149;&#149;&#149;&#149; &#149;&#149;&#149;&#149; &#149;&#149;&#149;&#149; &#149;&#149;&#149;&#149;">
                                                      </div>
                                                   </div>
                                                   <div class="w3_agileits_card_number_grid_right">
                                                      <div class="controls">
                                                         <label class="control-label">CVV</label>
                                                         <input class="security-code form-control" ÃÂ· inputmode="numeric" type="text" name="security-code" placeholder="&#149;&#149;&#149;">
                                                      </div>
                                                   </div>
                                                   <div class="clear"> </div>
                                                </div>
                                                <div class="controls">
                                                   <label class="control-label">Expiration Date</label>
                                                   <input class="expiration-month-and-year form-control" type="text" name="expiration-month-and-year" placeholder="MM / YY">
                                                </div>
                                             </div>
                                             <button class="submit"><span>Make a payment </span></button>
                                          </div>
                                       </section>
                                    </form>
                                 </div>
                              </div>
                              <div class="tab3">
                                 <div class="pay_info">
                                    <div class="vertical_post">
                                       <form action="#" method="post">
                                          <h5>Select From Popular Banks</h5>
                                          <div class="swit-radio">
                                             <div class="check_box_one">
                                                <div class="radio_one"> <label><input type="radio" name="radio" checked=""><i></i>Syndicate Bank</label> </div>
                                             </div>
                                             <div class="check_box_one">
                                                <div class="radio_one"> <label><input type="radio" name="radio"><i></i>Bank of Baroda</label> </div>
                                             </div>
                                             <div class="check_box_one">
                                                <div class="radio_one"> <label><input type="radio" name="radio"><i></i>Canara Bank</label> </div>
                                             </div>
                                             <div class="check_box_one">
                                                <div class="radio_one"> <label><input type="radio" name="radio"><i></i>ICICI Bank</label> </div>
                                             </div>
                                             <div class="check_box_one">
                                                <div class="radio_one"> <label><input type="radio" name="radio"><i></i>State Bank Of India</label> </div>
                                             </div>
                                             <div class="clearfix"></div>
                                          </div>
                                          <h5>Or SELECT OTHER BANK</h5>
                                          <div class="section_room_pay">
                                             <select class="year">
                                                <option value="">=== Other Banks ===</option>
                                                <option value="ALB-NA">Allahabad Bank NetBanking</option>
                                                <option value="ADB-NA">Andhra Bank</option>
                                                <option value="BBK-NA">Bank of Bahrain and Kuwait NetBanking</option>
                                                <option value="BBC-NA">Bank of Baroda Corporate NetBanking</option>
                                                <option value="BBR-NA">Bank of Baroda Retail NetBanking</option>
                                                <option value="BOI-NA">Bank of India NetBanking</option>
                                                <option value="BOM-NA">Bank of Maharashtra NetBanking</option>
                                                <option value="CSB-NA">Catholic Syrian Bank NetBanking</option>
                                                <option value="CBI-NA">Central Bank of India</option>
                                                <option value="CUB-NA">City Union Bank NetBanking</option>
                                                <option value="CRP-NA">Corporation Bank</option>
                                                <option value="DBK-NA">Deutsche Bank NetBanking</option>
                                                <option value="DCB-NA">Development Credit Bank</option>
                                                <option value="DC2-NA">Development Credit Bank - Corporate</option>
                                                <option value="DLB-NA">Dhanlaxmi Bank NetBanking</option>
                                                <option value="FBK-NA">Federal Bank NetBanking</option>
                                                <option value="IDS-NA">Indusind Bank NetBanking</option>
                                                <option value="IOB-NA">Indian Overseas Bank</option>
                                                <option value="ING-NA">ING Vysya Bank (now Kotak)</option>
                                                <option value="JKB-NA">Jammu and Kashmir NetBanking</option>
                                                <option value="JSB-NA">Janata Sahakari Bank Limited</option>
                                                <option value="KBL-NA">Karnataka Bank NetBanking</option>
                                                <option value="KVB-NA">Karur Vysya Bank NetBanking</option>
                                                <option value="LVR-NA">Lakshmi Vilas Bank NetBanking</option>
                                                <option value="OBC-NA">Oriental Bank of Commerce NetBanking</option>
                                                <option value="CPN-NA">PNB Corporate NetBanking</option>
                                                <option value="PNB-NA">PNB NetBanking</option>
                                                <option value="RSD-DIRECT">Rajasthan State Co-operative Bank-Debit Card</option>
                                                <option value="RBS-NA">RBS (The Royal Bank of Scotland)</option>
                                                <option value="SWB-NA">Saraswat Bank NetBanking</option>
                                                <option value="SBJ-NA">SB Bikaner and Jaipur NetBanking</option>
                                                <option value="SBH-NA">SB Hyderabad NetBanking</option>
                                                <option value="SBM-NA">SB Mysore NetBanking</option>
                                                <option value="SBT-NA">SB Travancore NetBanking</option>
                                                <option value="SVC-NA">Shamrao Vitthal Co-operative Bank</option>
                                                <option value="SIB-NA">South Indian Bank NetBanking</option>
                                                <option value="SBP-NA">State Bank of Patiala NetBanking</option>
                                                <option value="SYD-NA">Syndicate Bank NetBanking</option>
                                                <option value="TNC-NA">Tamil Nadu State Co-operative Bank NetBanking</option>
                                                <option value="UCO-NA">UCO Bank NetBanking</option>
                                                <option value="UBI-NA">Union Bank NetBanking</option>
                                                <option value="UNI-NA">United Bank of India NetBanking</option>
                                                <option value="VJB-NA">Vijaya Bank NetBanking</option>
                                             </select>
                                          </div>
                                          <input type="submit" value="PAY NOW">
                                       </form>
                                    </div>
                                 </div>
                              </div>
                              <div class="tab4">
                                 <div class="row pay_info">
                                    <div class="col-md-6 tab-grid">
                                       <img class="pp-img" src="images/products/${item.link}" alt="Image Alternative text" title="Image Title">
                                       <div><a class="btn btn-primary">Tên:${item.name }</a></div>
                                       <a class="btn btn-primary">Giá: <f:formatNumber value="${item.price}"/><span
										style="text-decoration: underline;">đ</span></a>
                                    </div>
                                    <div class="col-md-6">
                                       <form class="cc-form"  action="user/buy.htm" method="get">
                                          <div class="clearfix">
                                             <div class="form-group form-group-cc-number">
                                                <label>Tên Khách Hàng</label>
                                                <input class="form-control" name="name" placeholder="Hoàng Ngọc Trung" type="text" value="${user1.name }"><span class="cc-card-icon"></span>
                                             </div>
                                             <div class="form-group form-group-cc-cvc">
                                                <label>Số Điện Thoại</label>
                                                <input class="form-control" name="phone"placeholder="0362156564" type="text">
                                             </div>
                                             
                                          </div>
                                          <div class="clearfix">
                                          <div class="form-group form-group-cc-cvc">
                                                <label>Địa chỉ</label>
                                                <input class="form-control" name="address" placeholder="97 Man Thiện,Hiệp Phú,Q.9,Tp.HCM" type="text">
                                             </div>	
                                             <div class="form-group form-group-cc-name">
                                                <label>Số Lượng</label>
                                                <input class="form-control" class="security-code form-control" name="quantity"type="text" placeholder="xx" value="${user1.address }">
                                             </div>
                                             
                                          </div>
                                          
                                          <input class="btn btn-primary submit" type="submit" value="ĐẶT HÀNG">
                                          ${message }
                                       </form>
                                    </div>
                                    <div class="clearfix"></div>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                     <!--//tabs-->
                  </div>
               </div>
               <!-- //payment -->
               <div class="clearfix"></div>
            </div>
         </div>
      </section>
      <!--subscribe-address-->
      <section class="subscribe">
         <div class="container-fluid">
         <div class="row">
            <div class="col-lg-6 col-md-6 map-info-right px-0">
               <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.522324040244!2d106.78381231428754!3d10.847820460839351!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3175276bb276eaf7%3A0x56a6a0eafe0e3b09!2zOTcgxJDGsOG7nW5nIE1hbiBUaGnhu4duLCBIaeG7h3AgUGjDuiwgUXXhuq1uIDksIEjhu5MgQ2jDrSBNaW5oLCBWaeG7h3QgTmFt!5e0!3m2!1svi!2s!4v1568790993842!5m2!1svi!2s" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen=""></iframe>
            </div>
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
            <h3 class="title clr text-center mb-lg-5 mb-md-4 mb-sm-4 mb-3">Get In Touch Us</h3>
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
               © 2019 Dororo Shop. A Design by <a href="https://www.facebook.com/TrungNgocHoang9x" target="_blank">Hoàng Ngọc Trung</a>
            </p>
         </div>
      </footer>
      <!-- //footer -->
      <!-- Modal 1-->
      
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
      <!--// cart-js -->
      <!-- easy-responsive-tabs -->
      <script src="js/easy-responsive-tabs.js"></script>
      <script>
         $(document).ready(function () {
         	$('#horizontalTab').easyResponsiveTabs({
         		type: 'default', //Types: default, vertical, accordion           
         		width: 'auto', //auto or any width like 600px
         		fit: true, // 100% fit in a container
         		closed: 'accordion', // Start closed if in accordion view
         		activate: function (event) { // Callback function if tab is switched
         			var $tab = $(this);
         			var $info = $('#tabInfo');
         			var $name = $('span', $info);
         			$name.text($tab.text());
         			$info.show();
         		}
         	});
         	$('#verticalTab').easyResponsiveTabs({
         		type: 'vertical',
         		width: 'auto',
         		fit: true
         	});
         });
      </script>
      <!-- credit-card -->
      <script src="js/creditly.js"></script>
      <link rel="stylesheet" href="css/creditly.css" type="text/css" media="all" />
      <script>
         $(function () {
         	var creditly = Creditly.initialize(
         		'.creditly-wrapper .expiration-month-and-year',
         		'.creditly-wrapper .credit-card-number',
         		'.creditly-wrapper .security-code',
         		'.creditly-wrapper .card-type');
         
         	$(".creditly-card-form .submit").click(function (e) {
         		e.preventDefault();
         		var output = creditly.validate();
         		if (output) {
         			// Your validated credit card output
         			console.log(output);
         		}
         	});
         });
      </script>
      <!-- //credit-card -->
      <!-- start-smoth-scrolling -->
      <script src="js/move-top.js"></script>
      <script src="js/easing.js"></script>
      <script>
         jQuery(document).ready(function ($) {
         	$(".scroll").click(function (event) {
         		event.preventDefault();
         		$('html,body').animate({
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