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

<!-- PRODUCT SUMMARY -->
<div class="container">
	<div class="product-detail-top">
		<div class="row">
			<div class="col">
				<div class="product-image" style="float:left;">
					<p><img src="../resources/images/shop/product/img_product_021.jpg"></p>
				</div>
				<div class="product-summary" >
					<div class="">
						<p class="textBold">[스프링호텔 패스트리]</p>
						<p class="textBold"><strong>애플망고 빙수</strong></p>
						<div>
							<p><small class="productExplain">판매가</a></small>
							<span><small class="productExplain">KRW 36,100</a></small></span></p>
						</div>
						<div>
							<p><small class="productExplain">수령방법</a></small>
								<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
								<label class="form-check-label" for="inlineRadio1">주문하기</label>
								<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
								<label class="form-check-label" for="inlineRadio2">선물하기</label></p>
						</div>
						<div>
							<p><small class="productExplain">총 상품금액</a></small>
							<span><small class="productExplain">KRW 36,100</a></small></span></p>
						</div>
						<div>
							<p><a href="">장바구니</a>
							<span><a href="">바로구매</a></span></p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- PRODUCT DETAIL -->
<div class="container">
	<div class="product-detail">
		<div class="row">
			<div class="col" style="border:1px solid green;">
				<div class="detail-title" style="float:left;">
					<p>상품안내</p>
				</div>
				<div class="detail-contents" style="float:right;">
					<div class="">
						<p><img src="../resources/images/shop/product/img_product_021.jpg"></p>
						<p class="textBold"><strong>"Real Cool Summer World"</strong></p>
						<p class="textBold"><strong>상품 디테일 설명넣자</strong></p>
						<div>
							<p><small class="productExplain"># 상품구성</a></small>
							<span><small class="productExplain">망고와 얼음</a></small></span></p>
						</div>
						<div>
							<p><small class="productExplain"># 주의사항</a></small>
							<span><small class="productExplain">빙수는 차가워서 이가 시릴수 있어요</a></small></span></p>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col" style="border:1px solid yellow;">
				<div class="detail-title" style="float:left;">
					<p>상품정보</p>
				</div>
				<div class="detail-contents"style="float:right; border:1px solid red;">
					<div class="">
						<li class="textBold"><strong>이용안내</strong>
						<li class="textBold"><strong>#주의사항</strong>
						<li class="textBold"><strong>망고가 너무 달다</strong>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col" style="border:1px solid blue;">
				<div class="detail-title" style="float:left;">
					<p>기타정보</p>
				</div>
				<div class="detail-contents" style="float:right;">
					<div class="">
						<li class="textBold"><strong>환불정보</strong>
						<li class="textBold"><strong>유효기간</strong>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>




<%@ include file="footer.jsp" %>
</body>
</html>