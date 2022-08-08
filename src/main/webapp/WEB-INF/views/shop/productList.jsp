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
	body{font-size: 16px;line-height: 1.3;}
	
	.image-overlay a{	display:inline-block;	width:200px; padding:10px;	text-align:center;	text-decoration:none;}
	.js-product-sorting-btn option{border: 1px solid #DCDCDC; padding: 10px 0; background: #fff;z-index: 100;}
    
    select option:hover {background:#d3c09a !important; color:#633e10}
</style>
</head>
<body>
<%@ include file="header.jsp" %>
<%@ include file="categoryTitle.jsp" %>

<!-- CATEGORY ITEMS TOP-->
<div class="container" style="padding:60px 0; ">
	<div class="row row-cols-2" style="height:40px;">
			<div class="col-9" style=" float:left;">
				<p style="font-size:18px; margin-left:15px; vertical-align:middle;">총
				<span style="color: #998465;"><strong>NN</strong></span>
				개의 상품이 있습니다.</p>
			</div>
			<div class="col-3" style="float:right;">
				<label for="select" class="hide"></label>
				<select name="select-product" id="select" type="button" class="js-product-sorting-btn"
				style="-o-appearance: none; -webkit-appearance: none; -moz-appearance: none;appearance: none; cursor: pointer;
				width:90%; height:100%; border: 1px solid #DCDCDC;  float:right; margin-right:10px; 
				background: url(/resources/images/shop/common/icon-select.png) no-repeat 100% 50%;padding: 0 14px;
				background-size: 29px; color: #999; text-align: left;cursor: pointer; outline: none;">
				<option selected><span>등록순</span></option>
				<option><span>인기상품순</span></option>
				<option><span>최신상품순</span></option>
				<option><span>낮은가격순</span></option>
				<option><span>높은가격순</span></option>
				</select>
			</div>
	</div>
			
<!-- CATEGORY ITEMS CONTENT-->
	<div class="row row-cols-3" style="">
		<div class="col position-relative" style="margin:40px 0px; ">
			<div class="row" style="height:70%;position:relative; padding:0px 5px;">
				<img src="../resources/images/shop/product/img_product_023.jpg" style="width:100%;">
			</div>
			<div class="row" style="height:12%; margin: 20px 0px 15px 0px; padding:0px;">
					<span class="sub-title" style=" color: #666; height: 24px; font-size: 16px;">[스프링호텔 서울]</span>
					<h2><a href="#1" class="stretched-link" style="font-size: 22px;">애플망고 빙수</a></h2>
			</div>
			<div class="row" style="height:8%; border-top: 1px solid #DCDCDC;margin: 10px 0 18px 0px;">
				<p class="price" style="font-size: 28px; ">
					<span><strong style="font-size: 16px; width: 30px;vertical-align: middle;">KRW</strong></span>
					<span class="price-box" style="font-size: 28px;font-weight: 500; letter-spacing: -0.05em;vertical-align: middle;">54,000</span>
				</p>
			</div>
		</div>
		
		<div class="col position-relative" style="margin:40px 0px; ">
			<div class="row" style="height:70%;position:relative; padding:0px 5px;">
				<img src="../resources/images/shop/product/img_product_023.jpg" style="width:100%;">
			</div>
			<div class="row" style="height:12%; margin: 20px 0px 15px 0px; padding:0px;">
					<span class="sub-title" style=" height: 24px; font-size: 16px;">[스프링호텔 서울]</span>
					<h2><a href="#2" class="stretched-link" style="font-size: 22px;">애플망고 빙수</a></h2>
			</div>
			<div class="row" style="height:8%; border-top: 1px solid #DCDCDC;margin: 10px 0 18px 0px;">
				<p class="price" style="font-size: 28px; ">
					<em><strong style="font-size: 16px; width: 30px;vertical-align: middle;">KRW</strong></em>
					<span class="price-box" style="font-size: 28px;font-weight: 500; letter-spacing: -0.05em;vertical-align: middle;">54,000</span>
				</p>
			</div>
		</div>
		
		<div class="col position-relative" style="margin:40px 0px; ">
			<div class="row" style="height:70%;position:relative; padding:0px 5px;">
				<img src="../resources/images/shop/product/img_product_023.jpg" style="width:100%;">
			</div>
			<div class="row" style="height:12%; margin: 20px 0px 15px 0px; padding:0px;">
					<span class="sub-title" style=" height: 24px; font-size: 16px;">[스프링호텔 서울]</span>
					<h2><a href="#" class="stretched-link" style="font-size: 22px;">애플망고 빙수</a></h2>
			</div>
			<div class="row" style="height:8%; border-top: 1px solid #DCDCDC;margin: 10px 0 18px 0px;">
				<p class="price" style="font-size: 28px; ">
					<em><strong style="font-size: 16px; width: 30px;vertical-align: middle;">KRW</strong></em>
					<span class="price-box" style="font-size: 28px;font-weight: 500; letter-spacing: -0.05em;vertical-align: middle;">54,000</span>
				</p>
			</div>
		</div>
		
		
		<div class="col position-relative" style="/* margin:0px 20px 0px 0px;  */">
			<div class="row" style="height:70%;position:relative; padding:0px 10px;">
				<img src="../resources/images/shop/product/img_product_023.jpg" style="height:100%;">
			</div>
			<div class="row" style="height:12%; margin: 20px 0px 15px 0px; padding:0px;">
				<p class="title" style="">
					<span class="sub-title" style=" height: 24px; font-size: 16px;">[스프링호텔 서울]</span></br>
					<span><a href="#" class="stretched-link" style="font-size: 22px;">애플망고 빙수</a></span>
				</p>
			</div>
			<div class="row" style="height:8%; border-top: 1px solid #DCDCDC;margin: 10px 0 18px 0px;">
				<p class="price" style="font-size: 28px; ">
					<em><strong style="font-size: 16px; width: 30px;vertical-align: middle;">KRW</strong></em>
					<span class="price-box" style="font-size: 28px;font-weight: 500; letter-spacing: -0.05em;vertical-align: middle;">54,000</span>
				</p>
			</div>
		</div>
		
		<div class="col position-relative" style="/* margin:0px 20px 0px 0px;  */">
			<div class="row" style="height:70%;position:relative; padding:0px 10px;">
				<img src="../resources/images/shop/product/img_product_023.jpg" style="height:100%;">
			</div>
			<div class="row" style="height:12%; margin: 20px 0px 15px 0px; padding:0px;">
				<p class="title" style="">
					<span class="sub-title" style=" height: 24px; font-size: 16px;">[스프링호텔 서울]</span></br>
					<span><a href="#" class="stretched-link" style="font-size: 22px;">애플망고 빙수</a></span>
				</p>
			</div>
			<div class="row" style="height:8%; border-top: 1px solid #DCDCDC;margin: 10px 0 18px 0px;">
				<p class="price" style="font-size: 28px; ">
					<em><strong style="font-size: 16px; width: 30px;vertical-align: middle;">KRW</strong></em>
					<span class="price-box" style="font-size: 28px;font-weight: 500; letter-spacing: -0.05em;vertical-align: middle;">54,000</span>
				</p>
			</div>
		</div>
		<div class="col position-relative" style="/* margin:0px 20px 0px 0px;  */">
			<div class="row" style="height:70%;position:relative; padding:0px 10px;">
				<img src="../resources/images/shop/product/img_product_023.jpg" style="height:100%;">
			</div>
			<div class="row" style="height:12%; margin: 20px 0px 15px 0px; padding:0px;">
				<p class="title" style="">
					<span class="sub-title" style=" height: 24px; font-size: 16px;">[스프링호텔 서울]</span></br>
					<span><a href="#" class="stretched-link" style="font-size: 22px;">애플망고 빙수</a></span>
				</p>
			</div>
			<div class="row" style="height:8%; border-top: 1px solid #DCDCDC;margin: 10px 0 18px 0px;">
				<p class="price" style="font-size: 28px; ">
					<em><strong style="font-size: 16px; width: 30px;vertical-align: middle;">KRW</strong></em>
					<span class="price-box" style="font-size: 28px;font-weight: 500; letter-spacing: -0.05em;vertical-align: middle;">54,000</span>
				</p>
			</div>
		</div>
		
	</div>
</div>



<!-- 		<div class="row">
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
		</div> -->


<%@ include file="footer.jsp" %>
</body>
</html>