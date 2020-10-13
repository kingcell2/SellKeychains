<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>
<!DOCTYPE html>
<html lang="zxx">
   <head>
   <style>
table {
	border-collapse: collapse;
	width: 100%;
}

th, td {
	line-height: 25px;
	border: 1px solid while;
	padding: 5px;
}

th {
	background-color: while;
}
</style>
   <base href="${pageContext.servletContext.contextPath}/">
   
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
         <!--Shoping cart-->
         <link rel="stylesheet" href="css/shop.css" type="text/css" />
         <!--//Shoping cart-->
         <!--price range-->
         <link rel="stylesheet" type="text/css" href="css/jquery-ui1.css">
         <!--//price range-->
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
                     <form  action="user/search.htm" method="GET">
                        <input name="s" type="search" placeholder="Tìm kiếm" value=""/>
                        <button class="btn" type="submit">Tìm</button>
                     </form>
                  </div>
                  <div class="col-lg-4 col-md-3 right-side-cart">
                     <div class="cart-icons">
                        <ul>
                         
                           <li class="toyscart toyscart2 cart cart box_1">
                              <form action="#" method="post" class="last">
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
                     <li class="nav-item active">
                        <a class="nav-link" href="http://localhost:8080/WebFinal/index.htm">TRANG CHỦ <span class="sr-only">(current)</span></a>
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
      <!--//headder-->
      <!-- banner -->
      <div class="inner_page-banner one-img">
      </div>
      <!--//banner -->
      <!-- short -->
      <div class="using-border py-3">
         <div class="inner_breadcrumb  ml-4">
            <ul class="short_ls">
               <li>
                  <a href="user/index.htm">Trang chủ</a>
                  <span>/ /</span>
               </li>
               <li>Sản phẩm đơn</li>
            </ul>
         </div>
      </div>
      <!-- //short-->
      <!--//banner -->
      <!--/shop-->
     
      <section class="banner-bottom py-lg-5 py-3">
       
      <table class="table table-hover">
      <tr>
      <th>&emsp;&emsp;&emsp;&emsp;
      <img src="images/products/${item.link}"height=500px width="500px">
      </th>
      <th>
         <div class="container">        
            <div class="inner-sec-shop pt-lg-4 pt-3">
            
               <div class="row">   
                             
                  <div class="col-lg-8 single-right-left simpleCart_shelfItem">
                   
                     <h3>${item.name }</h3>
                     <p>
                     <span class="item_price">
                     <f:formatNumber  value="${item.price}"></f:formatNumber>
                     <span style="text-decoration: underline;">đ</span>
                     </span>
                        <del><f:formatNumber  value="${item.price-item.price*item.discount}"></f:formatNumber>
                     <span style="text-decoration: underline;">đ</span></del>
                  
                     </p>
                    <div class="outs_more-buttn">
                           <a href="http://localhost:8080/WebFinal/user/cart/${item.id}.htm"><u>LIÊN HỆ ĐẶT HÀNG</u></a>
                                                                                                            
                        </div>  
                        </div>
                        </div>
                        </div>
                        
                        
               
                
                     <div class="occasion-cart">
                        <div class="toys single-item singlepage">
                           <form action="#" method="post">
                              <input type="hidden" name="cmd" value="_cart">
                              <input type="hidden" name="add" value="1">
                              <input type="hidden" name="toys_item" value="${item.name }">
                              <input type="hidden" name="amount" value="${item.price }">
                              <button type="submit" class="toys-cart ptoys-cart add">
                              Add to Cart
                              </button>
                           </form>
                        </div>
                     </div>
                  
                  </div>
                 </th>
                
                  <!--/tabs-->
                 
                  
                  <!--//tabs-->
        
         </tr>
         </table>
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
               © 2019 Dororo Shop. A Design by <a href="https://www.facebook.com/TrungNgocHoang9x" target="_blank">Hoàng Ngọc Trung</a>
            </p>
         </div>
      </footer>
      <!-- //footer -->
      
      <!-- //Modal 1-->
      <!--jQuery-->
      <script src="js/jquery-2.2.3.min.js"></script>
      <!-- newsletter modal -->
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
      <!-- price range (top products) -->
      <script src="js/jquery-ui.js"></script>
      <script>
         //<![CDATA[ 
         $(window).load(function () {
         	$("#slider-range").slider({
         		range: true,
         		min: 0,
         		max: 9000,
         		values: [50, 6000],
         		slide: function (event, ui) {
         			$("#amount").val("$" + ui.values[0] + " - $" + ui.values[1]);
         		}
         	});
         	$("#amount").val("$" + $("#slider-range").slider("values", 0) + " - $" + $("#slider-range").slider("values", 1));
         
         }); //]]>
      </script>
      <!-- //price range (top products) -->
      <!-- single -->
      <script src="js/imagezoom.js"></script>
      <!-- single -->
      <!-- script for responsive tabs -->
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
      <!-- FlexSlider -->
      <script src="js/jquery.flexslider.js"></script>
      <script>
         // Can also be used with $(document).ready()
         $(window).load(function () {
         	$('.flexslider1').flexslider({
         		animation: "slide",
         		controlNav: "thumbnails"
         	});
         });
      </script>
      <!-- //FlexSlider-->
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
      <!-- //smooth-scrolling-of-move-up -->
      <!--bootstrap working-->
      <script src="js/bootstrap.min.js"></script>
      <!-- //bootstrap working--> 
   </body>
</html>