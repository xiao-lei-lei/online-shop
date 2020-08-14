<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

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

</head>
<body>

	<div class="container">

		<h1>Vocher</h1>
		<br>
	</div>

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
					<div class="col-sm-5 col-md-3">
						<form action="#" class="search-wrap">
							<div class="form-group">
								<input type="search" class="form-control search"
									placeholder="Search">
								<button class="btn btn-primary submit-search text-center"
									type="submit">
									<i class="icon-search"></i>
								</button>
							</div>
						</form>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-12 text-left menu-1">
						<ul>
							<li><a href="index.html">Home</a></li>
							<li class="has-dropdown active"><a href="men.html">About</a>
							</li>
							<li><a href="women.html">Service</a></li>
							<li><a href="about.html">Contact</a></li>
							<li class="cart"><a href="cart.html"><i
									class="icon-shopping-cart"></i> Cart [0]</a></li>
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
											<a href="#">25% off (Almost) Everything! Use Code: Summer
												Sale</a>
										</h3>
									</div>
								</div>
								<div class="item">
									<div class="col">
										<h3>
											<a href="#">Our biggest sale yet 50% off all summer shoes</a>
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

		<div class="breadcrumbs">
			<div class="container">
				<div class="row">
					<div class="col">
						<p class="bread">
							<span><a href="index.html">Home</a></span> / <span>Shopping
								Cart</span>
						</p>
					</div>
				</div>
			</div>
		</div>
		<div class="colorlib-product">
			<div class="container">
				<div class="row row-pb-lg">
					<div class="col-md-12">
						<div class="product-name d-flex">
							<div class="one-forth text-left px-4">
								<span>Product Details</span>
							</div>
							<div class="one-eight text-center">
								<span>Price</span>
							</div>
							<div class="one-eight text-center">
								<span>Quantity</span>
							</div>
							<div class="one-eight text-center">
								<span>Total</span>
							</div>
							<div class="one-eight text-center px-4">
								<span>Remove</span>
							</div>
						</div>
						<div class="product-cart d-flex">
							<c:forEach var="tempCart" items="${cartProduct}">
								<div class="one-forth">
									<div class="product-img">
										<img
											src="${pageContext.request.contextPath}/resources/images/${tempCart.product.id}.jpg">
									</div>

									<div class="display-tc">
										<h3>${tempCart.product.name}</h3>
									</div>
									<div class="one-eight text-center">
										<div class="display-tc">
											<span class="price">${tempCart.product.unitPrice}Ks</span>
										</div>
									</div>
									<div class="one-eight text-center">
										<div class="display-tc">
											<input type="text" id="quantity" name="quantity"
												class="form-control input-number text-center"
												value="${tempCart.quantity}" min="1" max="100">
										</div>
									</div>
									<div class="one-eight text-center">
										<div class="display-tc">
											<span class="price">Total : ${tempCart.product.unitPrice*tempCart.quantity}Ks</span>
										</div>
									</div>
									<div class="one-eight text-center">
										<div class="display-tc">
											<a href="#" class="closed"></a>
										</div>
									</div>
								</div>
							</c:forEach>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="row row-pb-lg">
			<div class="col-md-12">
				<div class="total-wrap">
					<div class="row">
						<div class="col-sm-4">
							<a href="${pageContext.request.contextPath}/process/list">Order Now</a>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>

</body>

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

</html>