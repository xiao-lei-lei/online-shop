<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE HTML>
<html>
<head>
<title></title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link
	href="https://fonts.googleapis.com/css?family=Montserrat:300,400,500,600,700"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Rokkitt:100,300,400,700"
	rel="stylesheet">

<!-- Animate.css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/animate.css">
<!-- Icomoon Icon Fonts-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/icomoon.css">
<!-- Ion Icon Fonts-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/ionicons.min.css">
<!-- Bootstrap  -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">

<!-- Magnific Popup -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/magnific-popup.css">

<!-- Flexslider  -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/flexslider.css">

<!-- Owl Carousel -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/owl.carousel.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/owl.theme.default.min.css">

<!-- Date Picker -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap-datepicker.css">
<!-- Flaticons  -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/fonts/flaticon/font/flaticon.css">

<!-- Theme style  -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css">

<style>
.about{ 
     
    background-color:wathet blue;
      padding-bottom: 10px;
      padding-top: 10px;}
.head{  text-align: center;
      font-style:inherit;}
.size{
	float: left;
    font-family: sans-serif;
    padding-left: 20px;
}
.paragraph{
	line-height: 1cm;
} 
.li{
	text-align:left;
}
.name1{
     float: left;
}    
.name2{
     float: left;
}    
.name3{
     float: left;
} 
.aboutUs{
	list-style: none;
} 
img{
	height: 350px;
	width: 400px;
}
.photo{
	float: left;
}
body{} 
</style>
</head>
<body>

	<div class="colorlib-loader"></div>

	<div id="page">
		<nav class="colorlib-nav" role="navigation">
			<div class="top-menu">
				<div class="container">
					<div class="row">
						<div class="col-sm-7 col-md-9">
							<div id="colorlib-logo">
								<a href="index.html">KiKi</a>
							</div>
						</div>
						
					</div>
					<div class="row">
						<div class="col-sm-12 text-left menu-1">
							
								<a  class="one-forth text-left px-4" href="${pageContext.request.contextPath}/">Home</a>
							
								<a  class="one-forth text-left px-4" href="${pageContext.request.contextPath}/about">About</a>
								<a   href="${pageContext.request.contextPath}/contact">Contact</a>
								
								<ul>
								
								<li class="cart">
								<a class="btn btn-secondary" href="${pageContext.request.contextPath}/showLoginForm">LogIn</a>
								<a class="nav-link" href="${pageContext.request.contextPath}/cart/list"><i
										class="icon-shopping-cart"></i> Cart [${cartSize}]</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="sale">
				<div class="container">
					<div class="row">
						<div class="col-sm-8 offset-sm-2 text-center">
							<div class="row">
								<div class="owl-carousel2">
									<div class="item">
										<div class="col">
											<h3>
												<a href="#">25% off (Almost) Everything! Use Code:
													Summer Sale</a>
											</h3>
										</div>
									</div>
									<div class="item">
										<div class="col">
											<h3>
												<a href="#">Our biggest sale yet 50% off all summer
													sales</a>
											</h3>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</nav>
		
		<table class="about" align="center">
    <tr>
    	<td colspan="2">
    		<h2 class="head">About Us</h2>
    	</td> 
    </tr>
    <tr>
    	<td>
    	<div class="photo">
    		<img src="${pageContext.request.contextPath}/resources/images/pet5.jpg">
     	</div>
     	<td>
     	<div class="size">
      		<p class="paragraph">We are a family-owned dog training and supplies company dedicated to providing and supplying dog items like 
      		Tre Ponti Dog Harnesses, Cricket Dog Treats, and DogSheetz just to name a few. We have been in the business of providing quality dog-related products ever
      		since we started back in 2018. Being in the business for several years now, we are proud to say that we ate a company known to grant 
      		high-quality dog-related products as well as dog-training services.</P>
      		<p class="paragraph">Originally, out company started as a dog training company which provides in-home training solutions for dog owners in the Oklahoma area.
      		Eventually, we evolved into a company that not only offers dog training services, but also dog-related products allowing us to venture in a wider market.
      		This has allowed us to provide more dog-services and merchandise for all our clients. After all these years, our company has now grown into what it is today. 
      		</p>
        
        <ul class="li" >
        <li >Bathe a pet</li>
        <li >Massage/Spa</li>
        <li >Haircut</li> 
        </ul>
       </div>
          
          </td>
    </tr>   
     <tr><td><p> If you have any advise or question, you can contact our staff directly.</p> </td></tr>
     <tr class="name1">    
     <td>
     <ul class="aboutUs">
     	 <li>Name : Ma Aye Aye Myint</li> 
         <li>Email :asd345@gmail.com</li>
         <li>Ph.No :097685464</li> 
     </ul>
        <br>     
     </td>  
     </tr>
     <tr class="name2">
     
     <td>
     <ul class="aboutUs">
     	 <li>Name :Ma Su Nadar Aung</li>
         <li>Email :dfgds8967@gmail.com</li>
         <li>Ph.No :09454175038</li>
      </ul>
         <br> 
     </td>
     </tr>
     <tr class="name3">
     
     <td>
     <ul class="aboutUs">
     	 <li>Name :Ma Aye Nyein</li>
         <li>Email :fgh7896@gmail.com</li>
         <li>Ph.No :094563789</li> 
     </ul> 
     </td>
     </tr>
     
    
     </table> 
     
     <hr>
			
				
				
				<footer id="colorlib-footer" role="contentinfo">
			<div class="container">
				<div class="row row-pb-md">
					<div class="col footer-col colorlib-widget">
						<h4>About Our Pet</h4>
						<p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life</p>
						<p>
							<ul class="colorlib-social-icons">
								<li><a href="#"><i class="icon-twitter"></i></a></li>
								<li><a href="#"><i class="icon-facebook"></i></a></li>
								<li><a href="#"><i class="icon-linkedin"></i></a></li>
								<li><a href="#"><i class="icon-dribbble"></i></a></li>
							</ul>
						</p>
					</div>
					<div class="col footer-col colorlib-widget">
						<h4>Customer Care</h4>
						<p>
							<ul class="colorlib-footer-links">
								<li><a href="#">Contact</a></li>
								<li><a href="#">Returns/Exchange</a></li>
								<li><a href="#">Gift Voucher</a></li>
								<li><a href="#">Wishlist</a></li>
								<li><a href="#">Special</a></li>
								<li><a href="#">Customer Services</a></li>
								<li><a href="#">Site maps</a></li>
							</ul>
						</p>
					</div>
					<div class="col footer-col colorlib-widget">
						<h4>Information</h4>
						<p>
							<ul class="colorlib-footer-links">
								<li><a href="#">About us</a></li>
								<li><a href="#">Delivery Information</a></li>
								<li><a href="#">Privacy Policy</a></li>
								<li><a href="#">Support</a></li>
								<li><a href="#">Order Tracking</a></li>
							</ul>
						</p>
					</div>

					<div class="col footer-col">
						<h4>News</h4>
						<ul class="colorlib-footer-links">
							<li><a href="blog.html">Blog</a></li>
							<li><a href="#">Press</a></li>
							<li><a href="#">Exhibitions</a></li>
						</ul>
					</div>

					<div class="col footer-col">
						<h4>Contact Information</h4>
						<ul class="colorlib-footer-links">
							<li>73th x 40th Street, <br> No 132, Mandalay</li>
							<li><a href="tel://1234567920">09 45711 2342</a></li>
							<li><a href="mailto:info@yoursite.com">kiki10@gmial.com</a></li>
							<li><a href="#">mypet.com</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="copy">
				<div class="row">
					<div class="col-sm-12 text-center">
						<p>
							<span><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This project is made with <i class="icon-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">SAA</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></span> 
							<span class="block">Demo Images: <a href="http://unsplash.co/" target="_blank">Unsplash</a> , <a href="http://pexels.com/" target="_blank">KiKi.com</a></span>
						</p>
					</div>
				</div>
			</div>
		</footer>
	</div>
	
	
	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="ion-ios-arrow-up"></i></a>
	</div>

	<!-- jQuery -->
<script
	src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
<!-- popper -->
<script
	src="${pageContext.request.contextPath}/resources/js/popper.min.js"></script>
<!-- bootstrap 4.1 -->
<script
	src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
<!-- jQuery easing -->
<script
	src="${pageContext.request.contextPath}/resources/js/jquery.easing.1.3.js"></script>
<!-- Waypoints -->
<script
	src="${pageContext.request.contextPath}/resources/js/jquery.waypoints.min.js"></script>
<!-- Flexslider -->
<script
	src="${pageContext.request.contextPath}/resources/js/jquery.flexslider-min.js"></script>
<!-- Owl carousel -->
<script
	src="${pageContext.request.contextPath}/resources/js/owl.carousel.min.js"></script>
<!-- Magnific Popup -->
<script
	src="${pageContext.request.contextPath}/resources/js/jquery.magnific-popup.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/magnific-popup-options.js"></script>
<!-- Date Picker -->
<script
	src="${pageContext.request.contextPath}/resources/js/bootstrap-datepicker.js"></script>
<!-- Stellar Parallax -->
<script
	src="${pageContext.request.contextPath}/resources/js/jquery.stellar.min.js"></script>
<!-- Main -->
<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>

</body>
</html>