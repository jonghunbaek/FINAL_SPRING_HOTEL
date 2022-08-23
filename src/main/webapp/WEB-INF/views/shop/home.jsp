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

	* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;}
    
/*IMAGE SLIDES*/    
    .slides{width: 100%;}
    
/*POPULAR ITEMS*/
    .populars{width: 1400px; margin: 0 auto;}
	.populars .popularsTitle {margin: 150px 0 50px;}
	.populars .popularsTitle h3{font-size: 40px;color: #998465;}
	
	.populars .row {margin: 0 auto; }
	.populars .row .col {margin:0px 15px 25px 0px; float: left; width: 442px;}
	.populars .row .col .imgRow {position:relative; padding:0;}
	.populars .row .col .titleRow {margin-top:24px; padding:0px;}
	.populars .row .col .titleRow .sub-title{border:1px dotted dark-gray; color: #666; font-size: 16px; margin-bottom: 10px;}
	.populars .row .col .titleRow a{font-size: 22px; color: #333; font-weight:500;}
	.populars .row .col .detailRow{margin: 20px 0 0;}
	.populars .row .col .detailRow p{font-size:16px; color: #998465;}
    
    
</style>

</head>
<body>
<%@ include file="header.jsp" %>

<div class="shopmain">

<!-- IMAGE SLIDES -->
	<section class="slides" style="">
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
			    		<a href="/shop/list?mainCategoryNo=2&subCategoryNo=4">
			    			<img src="../resources/images/shop/banner/shop-banner-1.jpg" class="d-block w-100" alt="슬라이드 이미지1">
			    		</a>
			    	</div>
			    	<div class="carousel-item" data-bs-interval="2000">
			      		<a href="/shop/list?mainCategoryNo=2&subCategoryNo=5">
			    			<img src="../resources/images/shop/banner/shop-banner-2.jpg" class="d-block w-100" alt="슬라이드 이미지2">
			    		</a>
			    	</div>
			    	<div class="carousel-item" data-bs-interval="3000">
			      		<a href="/shop/list?mainCategoryNo=4">
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
	</section>


<!-- POPULAR ITEMS -->
	<section class="populars" >
		<div class="popularsTitle" style="">
			<h3 style="">인기상품</h3>
		</div>
		<div class="row row-cols-3" style="">
				<div class="col position-relative" style=" ">
					<div class="imgRow">
						<img src="../resources/images/shop/product/lh_product_020.jpg" style="width:100%;">
					</div>
					<div class="titleRow" style="">
							<span class="sub-title" style="">[스프링호텔 서울]</span>
							<h2><a href="/shop/productdetail#1" class="stretched-link" style="">애플망고 빙수</a></h2>
					</div>
					<div class="detailRow" style="">
						<p style="">자세히보기 &gt;</p>
					</div>
				</div>
				<div class="col position-relative" style=" ">
					<div class="imgRow">
						<img src="../resources/images/shop/product/lh_product_021.jpg" style="width:100%;">
					</div>
					<div class="titleRow" style="">
							<span class="sub-title" style="">[스프링호텔 서울]</span>
							<h2><a href="/shop/productdetail#1" class="stretched-link" style="">애플망고 빙수</a></h2>
					</div>
					<div class="detailRow" style="">
						<p style="">자세히보기 &gt;</p>
					</div>
				</div>
				<div class="col position-relative" style=" ">
					<div class="imgRow">
						<img src="../resources/images/shop/product/lh_product_022.jpg" style="width:100%;">
					</div>
					<div class="titleRow" style="">
							<span class="sub-title" style="">[스프링호텔 서울]</span>
							<h2><a href="/shop/productdetail#1" class="stretched-link" style="">애플망고 빙수</a></h2>
					</div>
					<div class="detailRow" style="">
						<p style="">자세히보기 &gt;</p>
					</div>
				</div>


		</div>
	</section>
	
<style>


</style>

<!-- HOME BANNER -->
	<section class="home-banner" style="margin-top: 150px; width: 100%; position: relative;">
		<picture style="display: block;">
				<img src="../resources/images/shop/banner/home-banner.jpg" alt="" style="width:100%;">
		</picture>
		<div style="left: 50%; max-width: 1400px; transform: translateX(-50%); display: table;position: absolute; top: 0; align-items: center; justify-content: center;width: 100%;height: 100%;padding: 0 20px;z-index: 10;">
			<div style="display:table-cell; vertical-align: middle;">
				<p style="line-height: 1.5;color: #fff;">
				<span style="margin-bottom: 1.3%;font-size: 40px;font-weight: 500;"><strong>SPRING HOTEL e-SHOP</strong></span><br>
				<span>다양한 프리미엄 상품을 SPRING HOTEL e-SHOP 으로 만나보세요.</span><br>
				<span>스프링 호텔만의 품격있는 상품들이 여러분의 일상에 가치를 더해드립니다.</span></p>
			</div>
		</div>
	</section>

<!-- RECOMMENDS -->
	<section class="recommends" style="width: 1400px; margin: 0 auto;">
		<div class="row" style="margin: 150px 0 50px;">
			<h3 style="font-size: 40px;color: #998465; ">e-SHOP 추천상품</h3>
		</div>
		<div class="row row-cols-3" style="margin: 0 auto; justify-content: space-between;">
				<div class="col position-relative" style="margin:0px 15px 25px 0px; float: left; width: 442px; ">
					<div class="" style="position:relative; padding:0;">
						<img src="../resources/images/shop/product/lh_product_024.jpg" style="width:100%;">
					</div>
					<div class="" style="margin-top:24px; padding:0px;">
							<span class="sub-title" style="border:1px dotted dark-gray; color: #666; font-size: 16px;margin-bottom: 10px;">[스프링호텔 서울]</span>
							<h2><a href="/shop/productdetail#1" class="stretched-link" style="font-size: 22px; color: #333; font-weight:500;">애플망고 빙수</a></h2>
					</div>
					<div class="" style="margin: 20px 0 0;">
						<p style="font-size:16px; color: #998465;">자세히보기 &gt;</p>
					</div>
				</div>
				<div class="col position-relative" style="margin:0px 15px 25px 0px; float: left; width: 442px; ">
					<div class="" style="position:relative; padding:0;">
						<img src="../resources/images/shop/product/lh_product_025.jpg" style="width:100%;">
					</div>
					<div class="" style="margin-top:24px; padding:0px;">
							<span class="sub-title" style="border:1px dotted dark-gray; color: #666; font-size: 16px;margin-bottom: 10px;">[스프링호텔 서울]</span>
							<h2><a href="/shop/productdetail#2" class="stretched-link" style="font-size: 22px; color: #333; font-weight:500;">애플망고 빙수</a></h2>
					</div>
					<div class="" style="margin: 20px 0 0;">
						<p style="font-size:16px; color: #998465;">자세히보기 &gt;</p>
					</div>
				</div>
				<div class="col position-relative" style="margin:0px 15px 25px 0px; float: left; width: 442px; ">
					<div class="" style="position:relative; padding:0;">
						<img src="../resources/images/shop/product/lh_product_026.jpg" style="width:100%;">
					</div>
					<div class="" style="margin-top:24px; padding:0px;">
							<span class="sub-title" style="border:1px dotted dark-gray; color: #666; font-size: 16px;margin-bottom: 10px;">[스프링호텔 서울]</span>
							<h2><a href="/shop/productdetail#3" class="stretched-link" style="font-size: 22px; color: #333; font-weight:500;">애플망고 빙수</a></h2>
					</div>
					<div class="" style="margin: 20px 0 0;">
						<p style="font-size:16px; color: #998465;">자세히보기 &gt;</p>
					</div>
				</div>

		</div>
	</section>




</div>
<%@ include file="footer.jsp" %>
</body>
</html>