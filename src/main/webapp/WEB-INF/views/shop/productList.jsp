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
	
</style>
</head>
<body>
<%@ include file="header.jsp" %>
<%@ include file="categoryTitle.jsp" %>

<!-- CATEGORY ITEMS TOP-->
<div class="container">
	<div class="category-sort">
		<div class="row">
			<div class="col">
				<div class="category-sort-txt">
					<p style="font-size:20px;">총
					<span style="color:red;"><strong>NN</strong></span>
					개의 상품이 있습니다.</p>
				</div>
				<div class="category-sort-select">
					<div class="product-select">
					<label for="select" class="hide"></label>
					<select name="select-product" id="select" type="button" class="js-product-sorting-btn">
					<option selected><span>등록순</span></option>
					<option><span>인기상품순</span></option>
					<option><span>최신상품순</span></option>
					<option><span>낮은가격순</span></option>
					<option><span>높은가격순</span></option>
					</select>
					</div>
				</div>
			</div>
		</div>
	</div>
			
<!-- CATEGORY ITEMS CONTENT-->
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