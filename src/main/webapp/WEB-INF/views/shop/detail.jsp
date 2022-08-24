<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/tags.jsp" %>
<script type="text/JavaScript" src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
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

	.product-details{ white-space: pre-line; line-height:2; margin:-30px 0 0;}

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
				<span style="display: inline-block; overflow: hidden;opacity: 1;border:1px solid transparent; width: 80px;height: 80px;"><img src="../resources/images/shop/product/${product.imageName }.jpg" onmouseenter="changeImage(this);" style="width:100%; height:100%;"></span>
				<c:forEach var="smallImage" items="${imageList }"> 
					<span name="smallImagesSpan" style="display: inline-block; overflow: hidden;opacity: 0.5; border:1px solid #333; width: 80px;height: 80px;"><img src="../resources/images/shop/product/${smallImage.name }.jpg" onmouseenter="changeImage(this);" style="width:100%; height:100%;"></span>
				</c:forEach>
			</div>
		</div>
		
<!-- PRODUCT SUMMARY -->
		<div class="col" style="float:left; width: 640px; margin: 0; padding-left: 110px;  display: block !important;">

	<!-- WISH AND SHARE -->
			<div style="position:relative;">
			<div class="btn-box" style=" position:absolute; top:0; right:0; display:block;">
				<a href="/login" target="_blink"><button type="button" class="btn-wish" onclick="" style="text-indent: -9999px;overflow: hidden;width:23px; height:20px;background:url(/resources/images/shop/common/icon-wish.png) 50% 50% no-repeat; background-size:100%;">위시리스트에 담기</button></a>
					<button type="button" id="sharingbykakao" class="btn-share" onclick="shareMessage();" style="text-indent: -9999px;overflow: hidden;width:21px; height:23px;margin-left: 15px;background:url(/resources/images/shop/common/icon-share.png) 50% 50% no-repeat; background-size:100%;">공유하기</button>
			</div>
			</div>

	<!-- PRODUCT TITLE AND PRICE -->
			<div class="row" style="">
				<h1 class="title" style="margin-top:25px;font-size: 40px;font-weight: 400;">
					<span style="margin-bottom: 10px;font-size: 16px;display: block;color: #666;word-spacing: 2px;">
					[스프링호텔 ${product.location.name } ${product.business.name }]</span>
					${product.name }
				</h1>
				<p class="txt-blank" style="margin: 10px 0 40px;"></p>
			</div>
			<div class="row" style=" height:40px;">
				<div class="col-3">
					<p><span style="color: #666; padding-top:10px; display:inline-block;">판매가</span></p>
				</div>
				<div class="col-8">
					<p style="font-weight:500;vertical-align:middle;font-size: 28px;display:inline-block;">
						<span style="margin-right:10px;width:35px;font-size: 16px;display:inline-block; font-weight:400;vertical-align:middle;">KRW</span>
						<span id="discountprice-box" id="productDiscountPrice"><fmt:formatNumber value="${product.price*(1 - product.discountRate/100) }"/></span>
						<span class="price-box" id="productPrice" style="margin-right: 10px;font-size: 16px;line-height: 24px;color: #999;font-weight: 500;text-decoration: line-through;letter-spacing: -0.05em;vertical-align: middle;letter-spacing: -0.05em;vertical-align: middle;"><fmt:formatNumber value="${product.price }"/></span>
						<span class="discountRate-box" id="productDiscountRate" style="font-size: 22px;line-height: 33px;color: #ff7a00;font-weight: 500;letter-spacing: -0.05em;vertical-align: middle;">${product.discountRate }%</span>
					</p>
				</div> 
			</div>


	<!-- PRODUCT OPTION CHOICE -->

			<!-- PRODUCT OPTIONS -->
			<div class="row" id="opt0ProductOptions" style="padding-top: 27px; display: ${optionsList.size() eq 1 ? 'none' : 'display'} ;">
				<div class="col-3" style="display: table;">
					<p style=" display: table-cell; vertical-align: middle; color: #666;">상품선택</p>
				</div>
				<div class="col-8">
						<div class="row" style="margin: 10px 18px 0 0; height:50px;">
							<lable for="select" class="hide"></lable>
							<select id="opt0SelectProduct" type="button" style="height:100%;">
								<option value="" selected disabled><span>원하시는 상품을 선택하세요</span></option>
								<c:forEach var="productOption" items="${optionsList }">
								<option value="${productOption.price }" name="opt0Selecteds"><span>${productOption.name } (<fmt:formatNumber value="${productOption.price }"/>)</span></option>
								</c:forEach>
							</select>
						</div>
				</div>
			</div>
			
			<!-- PICKUP OR GIFT -->
			<div class="row" id="opt1PickupOptions" style=" padding-top: 27px; display: ${optionsList.size() eq 1 ? 'display':'none'} ;">
				<div class="col-3">
					<p style="vertical-align: middle; color: #666;">수령방법</p>
				</div>
				<div class="col-7">
					<div class="row" style="justify-content: space-evenly;">
						<c:forEach var="method" items="${methodList }">
						<div class="col" style="height: 18px; margin: 0 18px 0 0;">
							<input type="radio" name="opt1Radio" id="opt1Radio${method.no }" value="${method.name }"><lable for="radio-${method.no }">${method.name }</lable>
						</div>
						</c:forEach>
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
						<select id="opt2SelectLocation" type="button" disabled="disabled" style="height:100%;" >
							<option value="" selected="selected"><span>스프링호텔 ${product.location.name }</span></option>
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
								<td id="selectiontimeTitle" style="padding-right: 8px; font-weight: 500;">사용일시</td>
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
			<div class="product-details" style="line-height:2;">
				${product.detail }
			</div>
		</div>
	</div>
	<div class="row" style="border-top: 1px solid #DCDCDC; padding: 25px 50px;">
		<div class="col-3" style=" font-size: 18px;text-align:center;display:table-cell;vertical-align:top;font-weight: 500;">
			<h5>상품구성</h5>
		</div>
		<div class="col-8" style="padding-left:6px; vertical-align:top;color: #666;margin-inline-start: 20px;">
			<div class="product-details" style="line-height:2;">
				${product.composition }
			</div>
		</div>
	</div>
	<div class="row" style="border-top: 1px solid #DCDCDC; padding: 25px 50px;">
		<div class="col-3" style=" font-size: 18px;text-align:center;display:table-cell;vertical-align:top;font-weight: 500;">
			<h5>상품안내</h5>
		</div>
		<div class="col-8" style="padding-left:25px; vertical-align:top;color: #666;">
			<div class="product-details" style="line-height:2;">
				${product.caution}
			</div>
		</div>
	</div>
	<div class="row" style="border-top: 1px solid #DCDCDC; padding: 25px 50px;">
		<div class="col-3" style=" font-size: 18px;text-align:center;display:table-cell;vertical-align:top;font-weight: 500;">
			<h5>기타정보</h5>
		</div>
		<div class="col-8" style="padding-left:25px; vertical-align:top;color: #666;">
			<div class="product-details" style="">
				${product.additionalInfo }
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

	// 달력에 넣을 오늘날짜와 93일 뒤의 날짜를 구한다.
	const TODAY = new Date();
	const dayAfter2 = new Date(TODAY.getTime() + 172800000);
	const dayAfter90 = new Date(TODAY.getTime() + 8035200000);
	const FORMATTER_YYYYMMDD = new Intl.DateTimeFormat('ko-KR', {year:"numeric", month:"2-digit", day:"2-digit"});
	
	var minDay = FORMATTER_YYYYMMDD.formatToParts(dayAfter2).map(({type, value}) => {
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
	
	var optionRadio1 = null;
	optionRadio1 = document.getElementById("opt1Radio1");
	if(optionRadio1) {
		optionRadio1.addEventListener('change', refreshOpts);
		optionRadio1.addEventListener('change', hideSummary);
		optionRadio1.addEventListener('click', showDayLocOpt);
	}
	
	var optionRadio2  = null;
	optionRadio2 = document.getElementById("opt1Radio2");
	if(optionRadio2) {
		optionRadio2.addEventListener('change', refreshOpts);
		optionRadio2.addEventListener('change', hideSummary);
		optionRadio2.addEventListener('click', showDayLocOpt);
	}
	

	function refreshOpts() {
		opt2InputDate.value = minDay;
		opt2SelectTime.value = "";
		opt2SelectLocation.value = "";
		quantityInput.value = 1;
		
		selectionday.textContent = "";
		selectiontimeTitle.style.display="inline-block";
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

	var optionRadio3  = null;
	optionRadio3 = document.getElementById("opt1Radio3");
	if(optionRadio3) {
		optionRadio3.addEventListener('change', refreshOpts);
		optionRadio3.addEventListener('click', hideDayLocOpt);
		optionRadio3.addEventListener('click', showSummary);
	}

	var optionRadio4 = null;
	optionRadio4 = document.getElementById("opt1Radio4");
	if(optionRadio4) {
		optionRadio4.addEventListener('change', refreshOpts);
		optionRadio4.addEventListener('click', hideDayLocOpt);
		optionRadio4.addEventListener('click', hideSummary);
	}
	
	function hideDayLocOpt() {
		opt2DayNTimeDiv.style.display = "none";
		opt2locationDiv.style.display = "none";
		
	}
	
	function showSummary() {
		selectedOpt1.textContent = document.querySelector('input[name="opt1Radio"]:checked').value;
		optSummary.style.display = "flex";
		
		if (optionRadio1.checked || optionRadio2.checked) {
			selectionday.textContent = opt2InputDate.value;
			selectiontime.textContent = opt2SelectTime.value;
			selectionlocation.textContent = opt2SelectLocation.options[0].text;
		} else {
			refreshOpts();
			selectiontimeTitle.style.display="none";
			selectionlocation.textContent = opt2SelectLocation.options[0].text;
		}
		
	}

	// 선택한 옵션정보가 Summary에 표시된다.
	// 모두 선택되면 Summary를 화면에 나타나게 한다.
	opt2SelectTime.addEventListener('change', isAllChecked);

	function isAllChecked(){
		if (!opt2SelectTime.value) {
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

	// 즉시실행함수 for 계산
	calculateTot();
	
	quantityInput.addEventListener('change', calculateTot);
	opt0SelectProduct.addEventListener('change', calculateTot);
	opt0SelectProduct.addEventListener('change', showPickupOpt);
	opt0SelectProduct.addEventListener('change', hideDayLocOpt);
	
	function showPickupOpt() {
		opt1PickupOptions.style.display = "flex";
	}
	
	
	
	
	function calculateTot() {
		var quantity = parseInt(quantityInput.value);
		//옵션이 선택되어 있지 않다면 상품대표가격으로 계산한다.
		if(!document.getElementById("opt0SelectProduct").value) {
			var priceBeforeDiscount = stringNumberToInt(document.getElementById("productPrice").textContent);
		} else {
			priceBeforeDiscount = parseInt(document.getElementById("opt0SelectProduct").value);
		}
		
		var price = priceBeforeDiscount*(100-${product.discountRate })/100;
		var totalPrice = price*quantity;
		calculatedPriceinOptBox.textContent = totalPrice.toLocaleString();
		calculatedPrice.textContent = totalPrice.toLocaleString();
	}
	
	function stringNumberToInt(stringNumber){
	    return parseInt(stringNumber.replace(/,/g , ''));
	}
	

	 try {
		  function shareMessage() {
		    Kakao.init('cd06812ecefd9b9d880815e7367e1e06')
		    Kakao.Link.sendDefault({
		    objectType: 'commerce',
		      content: {
		        title: '스프링호텔 제품을 만나보세요.',
		        imageUrl: '${product.imgUrl }',
		        link: {
		          webUrl: 'http://localhost/shop/detail?no=${product.no }',
		        },
		        
		      },
		      commerce: {
		          productName: '${product.name }',
		          regularPrice: ${product.price },
		          discountRate: ${product.discountRate },
		          discountPrice: ${(product.price)*(100-product.discountRate)/100 },
		        },
		      buttons: [
		    	  {
	    	        title: '구경가기',
	    	        link: {
	    	          webUrl: 'http://localhost/shop/detail?no=${product.no }',
	    	        },
	    	      },
		      ],
		    })
		  }
		; window.kakaoDemoCallback && window.kakaoDemoCallback() }
		catch(e) { window.kakaoDemoException && window.kakaoDemoException(e) }
	
</script>
</html>