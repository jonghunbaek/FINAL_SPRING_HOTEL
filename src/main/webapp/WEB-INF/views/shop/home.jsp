<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
	<script src="https://code.jquery.com/jquery-latest.min.js"></script>
<style>
/* 폰트적용 */
@import url(//fonts.googleapis.com/earlyaccess/notosanskr.css);
	html {font-family: "Noto Sans KR", sans-serif; font-size:16px;}
	
	.category-sort-txt{
	float:left;
	width:30%;
	line-height:30px;
	}
	
	.category-sort-select{	float:right;
	width:30%;
	line-height:30px;
	text-align:right;
	}

</style>
</head>
<body>
<%@ include file="header.jsp" %>

<!-- SLIDE BAR -->
<div class="container-fluid">
	<div class="row mb-3">
		<div class="col-12">
			<div id="carouselExampleDark" class="carousel carousel-dark slide" data-bs-ride="carousel">
		  		<div class="carousel-indicators">
		    		<button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
		    		<button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="1" aria-label="Slide 2"></button>
		    		<button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="2" aria-label="Slide 3"></button>
		  		</div>
		  	<div class="carousel-inner">
		    	<div class="carousel-item active" data-bs-interval="10000">
		    		<a href="/shop/food/season">
		    			<img src="../resources/images/shop/banner/shop-banner-1.jpg" class="d-block w-100" alt="슬라이드 이미지1">
		    		</a>
		    	</div>
		    	<div class="carousel-item" data-bs-interval="2000">
		      		<a href="/shop/food/bakery">
		    			<img src="../resources/images/shop/banner/shop-banner-2.jpg" class="d-block w-100" alt="슬라이드 이미지2">
		    		</a>
		    	</div>
		    	<div class="carousel-item" data-bs-interval="3000">
		      		<a href="/shop/bedding">
		    			<img src="../resources/images/shop/banner/shop-banner-3.jpg" class="d-block w-100" alt="슬라이드 이미지3">
		    		</a>
		    	</div>
		  	</div>
		  		<button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="prev">
		    		<span class="carousel-control-prev-icon" aria-hidden="true"></span>
		    		<span class="visually-hidden">Previous</span>
		  		</button>
		  		<button class="carousel-control-next" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="next">
		    		<span class="carousel-control-next-icon" aria-hidden="true"></span>
		    		<span class="visually-hidden">Next</span>
		  		</button>
			</div>
		</div>
	</div>
</div>

<!-- POPULAR ITEMS -->
<div class="container">
	<div>
		<div class="text-center">
			<h3>인기상품</h3>
		</div>
		<div class="row">
			<div class="col-4">
				<div class="card">
					<div style="border: 1px solid #eee; margin: 25px;">					
						<p><img id="card-img" class="card-img-top" src="../resources/images/shop/product/img_product_021.jpg"></p>
					</div>
					<div class="card-body">
						<p class="textBold">스프링호텔 패스트리</p>
						<p class="textBold"><strong>애플망고 빙수</strong></p>
						<p><small class="productExplain"><a href="">&gt;자세히보기</a></small></p>
					</div>
				</div>
			</div>
			<div class="col-4">
				<div class="card">
					<div style="border: 1px solid #eee; margin: 25px;">					
						<p><img id="card-img" class="card-img-top" src="../resources/images/shop/product/img_product_021.jpg"></p>
					</div>
					<div class="card-body">
						<p class="textBold">스프링호텔 패스트리</p>
						<p class="textBold"><strong>애플망고 빙수</strong></p>
						<p><small class="productExplain"><a href="">&gt;자세히보기</a></small></p>
					</div>
				</div>
			</div>
			<div class="col-4">
				<div class="card">
					<div style="border: 1px solid #eee; margin: 25px;">					
						<p><img id="card-img" class="card-img-top" src="../resources/images/shop/product/img_product_021.jpg"></p>
					</div>
					<div class="card-body">
						<p class="textBold">스프링호텔 패스트리</p>
						<p class="textBold"><strong>애플망고 빙수</strong></p>
						<p><small class="productExplain"><a href="">&gt;자세히보기</a></small></p>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- 그림 -->
<div class="container">
	<div class="row mb-3">
		<div class="col-12">
			<a href="#">
				<img src="../resources/images/shop/banner/shop-banner-4.jpg" alt="" style="min-width: 100%; max-width: 100%;">
			</a>
		</div>
	</div>
</div>

<!-- POPULAR ITEMS -->
<div class="container">
	<div>
		<div class="text-center">
			<h3>e-SHOP 추천상품</h3>
		</div>	
		
		<div class="row">
			<div class="col-4">
				<div class="card">
					<div style="border: 1px solid #eee; margin: 25px;">					
						<p><img id="card-img" class="card-img-top" src="../resources/images/shop/product/img_product_023.jpg"></p>
					</div>
					<div class="card-body">
						<p class="textBold">스프링호텔 패스트리</p>
						<p class="textBold"><strong>애플망고 빙수</strong></p>
						<p><small class="productExplain"><a href="">&gt;자세히보기</a></small></p>
					</div>
				</div>
			</div>
			<div class="col-4">
				<div class="card">
					<div style="border: 1px solid #eee; margin: 25px;">					
						<p><img id="card-img" class="card-img-top" src="../resources/images/shop/product/img_product_025.jpg"></p>
					</div>
					<div class="card-body">
						<p class="textBold">스프링호텔 패스트리</p>
						<p class="textBold"><strong>애플망고 빙수</strong></p>
						<p><small class="productExplain"><a href="">&gt;자세히보기</a></small></p>
					</div>
				</div>
			</div>
			<div class="col-4">
				<div class="card">
					<div style="border: 1px solid #eee; margin: 25px;">					
						<p><img id="card-img" class="card-img-top" src="../resources/images/shop/product/img_product_027.jpg"></p>
					</div>
					<div class="card-body">
						<p class="textBold">스프링호텔 패스트리</p>
						<p class="textBold"><strong>애플망고 빙수</strong></p>
						<p><small class="productExplain"><a href="">&gt;자세히보기</a></small></p>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-4">
				<div class="card">
					<div style="border: 1px solid #eee; margin: 25px;">					
						<p><img id="card-img" class="card-img-top" src="../resources/images/shop/product/img_product_028.jpg"></p>
					</div>
					<div class="card-body">
						<p class="textBold">스프링호텔 패스트리</p>
						<p class="textBold"><strong>애플망고 빙수</strong></p>
						<p><small class="productExplain"><a href="">&gt;자세히보기</a></small></p>
					</div>
				</div>
			</div>
			<div class="col-4">
				<div class="card">
					<div style="border: 1px solid #eee; margin: 25px;">					
						<p><img id="card-img" class="card-img-top" src="../resources/images/shop/product/img_product_030.jpg"></p>
					</div>
					<div class="card-body">
						<p class="textBold">스프링호텔 패스트리</p>
						<p class="textBold"><strong>애플망고 빙수</strong></p>
						<p><small class="productExplain"><a href="">&gt;자세히보기</a></small></p>
					</div>
				</div>
			</div>
			<div class="col-4">
				<div class="card">
					<div style="border: 1px solid #eee; margin: 25px;">					
						<p><img id="card-img" class="card-img-top" src="../resources/images/shop/product/img_product_035.jpg"></p>
					</div>
					<div class="card-body">
						<p class="textBold">스프링호텔 패스트리</p>
						<p class="textBold"><strong>애플망고 빙수</strong></p>
						<p><small class="productExplain"><a href="">&gt;자세히보기</a></small></p>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>


<%@ include file="footer.jsp" %>
</body>
</html>