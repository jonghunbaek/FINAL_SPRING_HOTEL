<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
	<script src="https://code.jquery.com/jquery-latest.min.js"></script>
<style>

	/* FONT */
	@import url(//fonts.googleapis.com/earlyaccess/notosanskr.css);
	*{padding:0; margin:0; box-sizing: border-box;}
	body{font-family: "Noto Sans KR", sans-serif; line-height: 1.3; color:#333; letter-spacing: -0.05em;}
	
	input[type='text'], input[type='password'], input[type='tel'], input[type='email'] {display: inline-block;width: 100%;height: 50px;padding: 0 14px;border: 1px solid #999;background-color: #fff;font-size: 13px;color: #333;line-height: 50px;border-radius: 0;vertical-align: top;}
	button {border: 0;background: none;cursor: pointer;outline: none;}


</style>

</head>
<body>
<%@ include file="header.jsp" %>


<!-- PRODUCT SUMMARY -->
<div class="container" style="">
	<div class="row" style=" padding-top:60px; ">
	
<!-- PRODUCT IMAGE THUMBNAIL -->
		<div class="col" style="float:left; width:560px; height:680px; ">
			<div class="image-input" style="margin: 0 0 34px; height:75%;">
				<img id="thumb-img" src="../resources/images/shop/product/${product.imageName }.jpg" style="width:100%; height:100%; object-fit: cover;">
			</div>
			<div class="thumb-list" style=" height:15%; text-align: center;">
				<span style="display: inline-block; overflow: hidden;opacity: 1;border:1px solid transparent; width: 80px;height: 80px;"><img src="../resources/images/shop/product/lh_product_021.jpg" onmouseenter="changeImage(this);" style="width:100%; height:100%;"></span>
				<span style="display: inline-block; overflow: hidden;opacity: 0.5; border:1px solid #333; width: 80px;height: 80px;"><img src="../resources/images/shop/product/lh_product_022.jpg" onmouseenter="changeImage(this);" style="width:100%; height:100%;"></span>
				<span style="display: inline-block; overflow: hidden;opacity: 0.5;border:1px solid transparent; width: 80px;height: 80px;"><img src="../resources/images/shop/product/lh_product_021.jpg" onmouseenter="changeImage(this);" style="width:100%; height:100%;"></span>
			</div>
		</div>
		
<!-- PRODUCT SUMMARY -->
		<div class="col" style="float:left; width: 640px; margin: 0; padding-left: 110px;  display: block !important;">

	<!-- WISH AND SHARE -->
			<div style="position:relative;">
			<div class="btn-box" style=" position:absolute; top:0; right:0; display:block;">
				<button type="button" class="btn-wish" onclick="" style="text-indent: -9999px;overflow: hidden;width:23px; height:20px;background:url(/resources/images/shop/common/icon-wish.png) 50% 50% no-repeat; background-size:100%;">위시리스트에 담기</button>
				<button type="button" class="btn-share" onclick="" style="text-indent: -9999px;overflow: hidden;width:21px; height:23px;margin-left: 15px;background:url(/resources/images/shop/common/icon-share.png) 50% 50% no-repeat; background-size:100%;">공유하기</button>
			</div>
			</div>

	<!-- PRODUCT TITLE AND PRICE -->
			<div class="row" style="">
				<h1 class="title" style="margin-top:25px;font-size: 40px;font-weight: 400;">
					<span style="margin-bottom: 10px;font-size: 16px;display: block;color: #666;word-spacing: 2px;">[스프링호텔 ${product.location.name } ${product.business.name }]</span>
					${product.name }
				</h1>
				<p class="txt-blank" style="margin: 10px 0 40px;"></p>
			</div>
			<div class="row" style=" height:40px;">
				<div class="col-3">
					<p><span style="color: #666; padding-top:10px; display:inline-block;">판매가</span></p>
				</div>
				<div class="col-5">
					<p style="font-weight:500;vertical-align:middle;font-size: 28px;display:inline-block;">
						<span style="margin-right:10px;width:35px;font-size: 16px;display:inline-block; font-weight:400;vertical-align:middle;">
						KRW</span>
						<span id="productPrice"><fmt:formatNumber value="${product.price }"/></span>
					</p>
				</div> 
			</div>


	<!-- PRODUCT OPTION CHOICE -->

			<!-- PICKUP OR GIFT -->
			<div class="row" style=" padding-top: 27px;">
				<div class="col-3">
					<p style="vertical-align: middle; color: #666;">수령방법</p>
				</div>
				<div class="col-5">
					<div class="row">
						<div class="col" style="height: 18px;margin: 0 18px 0 0;">
							<input type="radio" name="opt1Radio" id="opt1RadioPickUp" value="직접픽업"><lable for="radio-pickup">직접픽업</lable>
						</div>
						<div class="col" style="height: 18px;margin: 0 18px 0 0;">
							<input type="radio" name="opt1Radio" id="opt1RadioSendGift" value="선물하기"><lable for="radio-gift">선물하기</lable>
						</div>
					</div>
				</div>
			</div>

			<!-- PICKUP DATE -->
			<div class="row" id="opt2DayNTimeDiv" style="  padding-top: 27px; display:none;">
				<div class="col-3" style="display: table;">
					<p style=" display: table-cell; vertical-align: middle; color: #666;">사용일시</p>
				</div>
				<div class="col-8">
						<div class="row" style="margin: 0px 18px 0 0; height:50px;">
							<input id="opt2InputDate" type="date" placeholder="원하시는 사용일을 선택하세요.">
						</div>
						<div class="row" style="margin: 10px 18px 0 0; height:50px;">
							<lable for="select" class="hide"></lable>
							<select id="opt2SelectTime" type="button" style="height:100%;">
								<option value="" selected disabled><span>원하시는 사용시간을 선택하세요</span></option>
								<option value="12:00"><span>12:00</span></option>
								<option value="13:00"><span>13:00</span></option>
								<option value="14:00"><span>14:00</span></option>
								<option value="15:00"><span>15:00</span></option>
								<option value="16:00"><span>16:00</span></option>
								<option value="17:00"><span>17:00</span></option>
								<option value="18:00"><span>18:00</span></option>
								<option value="19:00"><span>19:00</span></option>
								<option value="20:00"><span>20:00</span></option>
							</select>
						</div>
				</div>
			</div>
			
			<!-- PICKUP LOCATION -->
			<div class="row" id="opt2locationDiv" style="  padding-top: 27px; display:none;">
				<div class="col-3" style="display: table;">
					<p style=" display: table-cell; vertical-align: middle; color: #666;">사용장소</p>
				</div>
				<div class="col-8">
					<div class="row" style="margin: 10px 18px 0 0; height:50px;">
						<lable for="select" class="hide"></lable>
						<select id="opt2SelectLocation" type="button" style="height:100%;" >
							<option value="" selected disabled><span>원하시는 픽업장소를 선택하세요</span></option>
							<option name="" value="스프링 서울"><span>스프링 서울</span></option>
							<option name="" value="스프링 제주"><span>스프링 제주</span></option>
							<option name="" value="스프링 부산"><span>스프링 부산</span></option>
							<option name="" value="스프링 광주"><span>스프링 광주</span></option>
							<option name="" value="스프링 강릉"><span>스프링 강릉</span></option>
						</select>
					</div>
				</div>
			</div>
		
<!-- SELECTED OPTION SUMMARY VIEW -->
			<div class="row" id="optSummary" style="margin-top:30px; margin-right:18px; background: #F4F4F4; border: 1px solid #DCDCDC;padding: 20px 15px; display:none;">
				<div class="">
						<table style="margin-bottom: 20px; display:block; table-layout: fixed; overflow:hidden;">
							<tr style=" margin-top:8px; vertical-align: middle; height:30px;">
								<th id="selectedOpt1" style="margin-top:8px; padding-right:8px; font-weight: 500;"></th>
								<th></th>
							</tr>
							<tr style=" margin-top:8px; height:30px;">
								<td style="padding-right: 8px; font-weight: 500;">사용일시</td>
								<td id="selectionday"></td>
								<td>&nbsp;</td>
								<td id="selectiontime"></td>
							</tr>
							<tr style=" margin-top:8px; height:30px;">
								<td style="padding-right: 8px; font-weight: 500;">사용장소</td>
								<td id="selectionlocation"></td>
							</tr>
						</table>
				</div>
				<div class="" style="display: table;width: 100%;">
					<div>
<!-- 						<button type="button" class="minus" id="minusBtn" name="calculatingBtn" value="-1" style="width: 34px;height: 34px;float: left;border: 1px solid #DCDCDC;background: #fff;cursor: pointer;outline: none;">
							<span>-</span>
						</button> -->
						<input id="quantityInput" type="number" class="qty" value="1" min="1" style="width: 66px;height: 34px;line-height: 34px;float: left;padding: 0 5px;border: 1px solid #DCDCDC;border-right: 0;border-left: 0;font-size: 14px;text-align: center;cursor: text;background-color: field;">
<!-- 						<button type="button" class="plus" id="plusBtn" name="calculatingBtn" value="+1" style="width: 34px;height: 34px;float: left;border: 1px solid #DCDCDC;background: #fff;cursor: pointer;outline: none;">
							<span>+</span>
						</button> -->
					</div>
					<div style="width: 113px;font-size: 16px; text-align: center;display: table-cell;vertical-align: middle;font-weight: 500;">
						<span id="calculatedPriceinOptBox"></span>원
						
					</div>
					<div style="width: 14px;display: table-cell;vertical-align: middle;">
						<button type="button" class="delete" id="deleteBtn" style="width: 14px;height: 14px;background: url(/resources/images/shop/common/icon-delete.png) 50% 50% no-repeat;background-size: 100%;text-indent: -9999px;overflow: hidden;cursor: pointer;outline: none;">삭제</button>
					</div>
				</div>
			</div>

			
<!-- TOTAL PRICE -->
			<div class="row" style="margin-top:30px; margin-right:18px;  height:70px; padding: 20px 0; display:flex;">
				<div class="col-3" style="display: table;">
					<p style=" display: table-cell; vertical-align: middle; color: #666;">총 상품금액</p>
				</div>
				<div class="col-8" style="display: table; text-align:right; ">
					<p style=" display: table-cell; vertical-align: middle; font-weight:500;color: #666;font-size: 28px;">
						<span style="margin-right:10px;width:35px;font-size: 16px;display:inline-block; font-weight:400;vertical-align:middle;">KRW</span>
						<span id="calculatedPrice" ></span>원</p>
				</div>
			</div>
			
<!-- ORDER BUTTON -->
			<div class="row col-11" style="margin-top:20px; display:block!important; text-align: center;">
				<button type="button" class="beige-button" style="float:none;width:255px;margin-right:7px;border: 2px solid #AD9E87; color: #AD9E87;display: inline-block;font-size: 16px;height: 50px; line-height: 46px;text-align: center;cursor: pointer; outline:none;">장바구니</button>
				<button type="button" class="brown-button" style="float:none;width:255px;margin-right:0;background: #AD9E87;border: 2px solid #AD9E87;color: #fff;display: inline-block;font-size: 16px;height: 50px; line-height: 46px;text-align: center;cursor: pointer; outline:none;">바로구매</button>
			</div>
		</div>
	</div>
</div>

<!-- PRODUCT DETAILS -->	
<div class="container" style="clear:both; padding-top:150px;">
	<div class="row" style="border-top: 1px solid #DCDCDC; padding: 25px 50px;">
		<div class="col-3" style=" font-size: 18px;text-align:center;display:table-cell;vertical-align:top;font-weight: 500;">
			<h5>상품소개</h5>
		</div>
		<div class="col-8" style="padding-left:6px; vertical-align:top;color: #666;margin-inline-start: 20px;">
			<div class="product-detail">
				<ul>
					<li style="line-height:2;">${product.detail }</li>
				</ul>
			</div>
		</div>
	</div>
	<div class="row" style="border-top: 1px solid #DCDCDC; padding: 25px 50px;">
		<div class="col-3" style=" font-size: 18px;text-align:center;display:table-cell;vertical-align:top;font-weight: 500;">
			<h5>상품구성</h5>
		</div>
		<div class="col-8" style="padding-left:6px; vertical-align:top;color: #666;margin-inline-start: 20px;">
			<div class="product-composition">
				<ul>
					<li style="line-height:2;">${product.composition }</li>
				</ul>
			</div>
		</div>
	</div>
	<div class="row" style="border-top: 1px solid #DCDCDC; padding: 25px 50px;">
		<div class="col-3" style=" font-size: 18px;text-align:center;display:table-cell;vertical-align:top;font-weight: 500;">
			<h5>상품안내</h5>
		</div>
		<div class="col-8" style="padding-left:25px; vertical-align:top;color: #666;">
			<div class="product-caution">
				<ul>
					<li style="line-height:2;">${product.caution}</li>
				</ul>
			</div>
		</div>
	</div>
	<div class="row" style="border-top: 1px solid #DCDCDC; padding: 25px 50px;">
		<div class="col-3" style=" font-size: 18px;text-align:center;display:table-cell;vertical-align:top;font-weight: 500;">
			<h5>기타정보</h5>
		</div>
		<div class="col-8" style="padding-left:25px; vertical-align:top;color: #666;">
			<div class="productcategory-caution">
				<ul>
					<li style="line-height:2;">${product.additionalInfo } </li>
				</ul>
			</div>
		</div>
	</div>
</div>		

<%@ include file="footer.jsp" %>
</body>
<script type="text/javascript">

	// 상세설명 배너 이미지 선택(항상 첫번째 이미지, 이미지 선택시 다른 이미지 블러처리)
	function changeImage(element) {
		let imgSource = element.getAttribute("src");
		let thumbImgEl = document.getElementById("thumb-img");
		thumbImgEl.setAttribute("src", imgSource);
	}

	// 달력에 넣을 오늘날짜와 90일 뒤의 날짜를 구한다.
	const TODAY = new Date();
	const dayAfter90 = new Date(TODAY.getTime() + 7776000000);
	const FORMATTER_YYYYMMDD = new Intl.DateTimeFormat('ko-KR', {year:"numeric", month:"2-digit", day:"2-digit"});
	
	var minDay = FORMATTER_YYYYMMDD.formatToParts(TODAY).map(({type, value}) => {
						switch (type) {
							case 'literal': return '-';
							default: return value;
						}
				}).join('').slice(0,-1);
	
	var maxDay = FORMATTER_YYYYMMDD.formatToParts(dayAfter90).map(({type, value}) => {
						switch (type) {
							case 'literal': return '-';
							default: return value;
						}
				}).join('').slice(0,-1);
	
	// 즉시실행함수 for 달력
	(function() {
		
		let calEl = document.getElementById("opt2InputDate");
		calEl.setAttribute("min", minDay);
		calEl.setAttribute("value", minDay);
		calEl.setAttribute("max", maxDay);
	}) ();

	opt1RadioPickUp.addEventListener('change', refreshOpts);
	opt1RadioPickUp.addEventListener('change', hideSummary);
	opt1RadioPickUp.addEventListener('click', showDayLocOpt);
	
	function refreshOpts() {
		opt2InputDate.value = minDay;
		opt2SelectTime.value = "";
		opt2SelectLocation.value = "";
		quantityInput.value = 1;
		
		selectionday.textContent = "";
		selectiontime.textContent = "";
		selectionlocation.textContent = "";
		
		calculateTot();
	}
	function hideSummary() {
		optSummary.style.display = "none";

	}
	function showDayLocOpt() {
		opt2DayNTimeDiv.style.display = "flex";
		opt2locationDiv.style.display = "flex";
	}

	opt1RadioSendGift.addEventListener('click', hideDayLocOpt);
	opt1RadioSendGift.addEventListener('click', showSummary);

	function hideDayLocOpt() {
		opt2DayNTimeDiv.style.display = "none";
		opt2locationDiv.style.display = "none";
		
	}
	function showSummary() {
		selectedOpt1.textContent = document.querySelector('input[name="opt1Radio"]:checked').value;
		optSummary.style.display = "flex";
		
		if (opt1RadioPickUp.checked) {
			selectionday.textContent = opt2InputDate.value;
			selectiontime.textContent = opt2SelectTime.value;
			selectionlocation.textContent = opt2SelectLocation.value;
		} else {
			refreshOpts();
			
		}
		
	}

	// 선택한 옵션정보가 Summary에 표시된다.
	// 모두 선택되면 Summary를 화면에 나타나게 한다.
	opt2SelectTime.addEventListener('change', isAllChecked);
	opt2SelectLocation.addEventListener('change', isAllChecked);

	function isAllChecked(){
		if (!opt2SelectTime.value) {
			return;
		};
		if (!opt2SelectLocation.value) {
			return;
		};
		hideDayLocOpt();
		showSummary();
	}
	
	deleteBtn.onclick = hideSummary;
	
	
/* 	
		plusBtn.addEventListener('click', function() {
		quantityInput.value = quantity + 1;
		calculateTot();
	});
	
	
	function quantityChange() {
		let quantity = parseInt(quantityInput.value);
		if (quantity <= 1) {
			minusBtn.disabled = true;
			return;
		};
		
	}
		
		quantityMinusChange;
	
	
	function quantityMinusChange() {
		let quantity = parseInt(quantityInput.value);
		if (quantity <= 1) {
			minusBtn.disabled = true;
			return;
		};
		
		minusBtn.disabled = false;
		quantityInput.value = quantity - 1;
		calculateTot;
	} */
	
	quantityInput.onchange = calculateTot;
	
	function calculateTot() {
		let quantity = parseInt(quantityInput.value);
		let price = parseInt(document.getElementById("productPrice").textContent);
		let totalPrice = price*quantity;
		calculatedPriceinOptBox.textContent = totalPrice;
		calculatedPrice.textContent = totalPrice;
	}
	
	
</script>
</html>