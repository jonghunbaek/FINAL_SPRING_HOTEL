<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/tags.jsp" %>
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
				<span style="color: #998465;"><strong>${shopList.size() } </strong></span>
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
		<c:forEach var="product" items="${shopList }">
		<div class="col position-relative" style="margin:40px 0px; ">
			<div class="row" style="height:70%;position:relative; padding:0px 5px;">
				<img src="../resources/images/shop/product/${product.imageName }.jpg" style="width:100%; height:100%;">
			</div>
			<div class="row" style="height:12%; margin: 20px 0px 15px 0px; padding:0px;">
					<span class="sub-title" style=" color: #666; height: 24px; font-size: 16px;">[스프링호텔 ${product.location.name } ${product.business.name }]</span>
					<h2><a href="/shop/detail?no=${product.no }" class="stretched-link" style="font-size: 22px;">${product.name }</a></h2>
			</div>
			<div class="row" style="height:8%; border-top: 1px solid #DCDCDC;margin: 10px 0 18px 0px;">
				<p class="price" style="font-size: 28px; ">
					<span><strong style="font-size: 16px; width: 30px;vertical-align: middle;">KRW</strong></span>
					<span class="discountprice-box" id="productDiscountPrice" style="font-size: 28px;font-weight: 500; margin-right: 10px; letter-spacing: -0.05em;vertical-align: middle;"><fmt:formatNumber value="${product.price*(1 - product.discountRate/100) }"/></span>
					<span class="price-box" id="productPrice" style="margin-right: 10px;font-size: 16px;line-height: 24px;color: #999;font-weight: 500;text-decoration: line-through;letter-spacing: -0.05em;vertical-align: middle;letter-spacing: -0.05em;vertical-align: middle;"><fmt:formatNumber value="${product.price }"/></span>
					<span class="discountRate-box" id="productDiscountRate" style="font-size: 22px;line-height: 33px;color: #ff7a00;font-weight: 500;letter-spacing: -0.05em;vertical-align: middle;">${product.discountRate }%</span>
				</p>
			</div>
		</div>
		</c:forEach>
	</div>
	
	
</div>




<%@ include file="footer.jsp" %>
</body>
<script type="text/javascript">
	// 즉시실행함수 for 가격
	(function() {
		var discountRateEls = document.querySelectorAll("#productDiscountRate");
		var productPriceEls = document.querySelectorAll("#productPrice");
		 
		for (let index = 0 ; index < discountRateEls.length ; index++) {
			let discountRate = discountRateEls[index];
			if (discountRate.textContent == '0%') {
				discountRate.setAttribute("hidden", true);
				productPriceEls[index].setAttribute("hidden", true);
			
			} else {
				discountRate.removeAttribute("hidden");
				productPriceEls[index].removeAttribute("hidden");
			};
		};
		
	}) ();
</script>
</html>