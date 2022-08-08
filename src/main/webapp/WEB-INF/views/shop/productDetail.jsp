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
<div class="container" style="border:1px solid yellow;">
	<div class="row" style="border:1px solid green; padding-top:60px;">
	
<!-- PRODUCT IMAGE THUMBNAIL -->
		<div class="col" style="float:left; width:560px; border:1px solid gray;">
			<div class="image-input" style="border:1px solid pink; margin: 0 0 34px;">
				<img src="../resources/images/shop/product/img_product_021.jpg">
			</div>
			<div class="thumb-list" style="border:1px dotted blue; height:15%; text-align: center;">
				<span style="display: inline-block;overflow: hidden;opacity: 0.5;border:1px solid transparent; width: 80px;height: 80px;"><img src="../resources/images/shop/product/img_product_021.jpg" style="width: 80px;height: 80px;"></span>
				<span style="display: inline-block;overflow: hidden;opacity: 1; border:1px solid #333; width: 80px;height: 80px;"><img src="../resources/images/shop/product/img_product_021.jpg" style="width: 80px;height: 80px;"></span>
				<span style="display: inline-block;overflow: hidden;opacity: 0.5;border:1px solid transparent; width: 80px;height: 80px;"><img src="../resources/images/shop/product/img_product_021.jpg" style="width: 80px;height: 80px;"></span>
			</div>
		</div>
		
<!-- PRODUCT SUMMARY -->
		<div class="col" style="float:left; width: 640px; margin: 0; padding-left: 110px; border:1px solid gray; display: block !important;">

	<!-- WISH AND SHARE -->
			<div style="position:relative;">
			<div class="btn-box" style="border:10x solid yellow; position:absolute; top:0; right:0; display:block;">
				<button type="button" class="btn-wish" onclick="" style="text-indent: -9999px;overflow: hidden;width:23px; height:20px;background:url(/resources/images/shop/common/icon-wish.png) 50% 50% no-repeat; background-size:100%;">위시리스트에 담기</button>
				<button type="button" class="btn-share" onclick="" style="text-indent: -9999px;overflow: hidden;width:21px; height:23px;margin-left: 15px;background:url(/resources/images/shop/common/icon-share.png) 50% 50% no-repeat; background-size:100%;">공유하기</button>
			</div>
			</div>

	<!-- PRODUCT TITLE AND PRICE -->
			<div class="row" style="border:1px dotted orange;">
				<h1 class="title" style="border:1px solid pink;margin-top:25px;font-size: 40px;font-weight: 400;">
					<span style="margin-bottom: 10px;font-size: 16px;display: block;color: #666;word-spacing: 2px;">[선택한 하위 카테고리 ex)스프링호텔 어디지점]</span>
					프리미엄 애플망고 빙수
				</h1>
				<p class="txt-blank" style="margin: 10px 0 40px;"></p>
			</div>
			<div class="row" style="border:1px solid pink; height:40px;">
				<div class="col-3">
					<p><span style="color: #666; padding-top:10px; display:inline-block;">판매가</span></p>
				</div>
				<div class="col-5">
					<p style="font-weight:500;vertical-align:middle;font-size: 28px;display:inline-block;">
						<span style="margin-right:10px;width:35px;font-size: 16px;display:inline-block; font-weight:400;vertical-align:middle;">
						KRW</span>49,000
					</p>
				</div> 
			</div>

	<!-- PRODUCT OPTION CHOICE -->

			<!-- PICKUP OR GIFT -->
			<div class="row" style="background-color:yellow; border:1px solid pink; padding-top: 27px;">
				<div class="col-3">
					<p style="vertical-align: middle; color: #666;">수령방법</p>
				</div>
				<div class="col-5">
					<div class="row">
						<div class="col" style="height: 18px;margin: 0 18px 0 0;">
							<input type="radio" name="detail-radio" id="radio-pickup"><lable for="radio-pickup">직접픽업</lable>
						</div>
						<div class="col" style="height: 18px;margin: 0 18px 0 0;">
							<input type="radio" name="detail-radio" id="radio-gift"><lable for="radio-gift">선물하기</lable>
						</div>
					</div>
				</div>
			</div>

			<!-- PICKUP DATE -->
			<div class="row" style="background-color:yellow; border:1px solid pink; padding-top: 27px;display:none;">
				<div class="col-3" style="display: table;">
					<p style=" display: table-cell; vertical-align: middle; color: #666;">사용일시</p>
				</div>
				<div class="col-8">
						<div class="row" style="margin: 0px 18px 0 0; height:50px;">
							<input type="text" placeholder="원하시는 사용일을 선택하세요.">
						</div>
						<div class="row" style="margin: 10px 18px 0 0; height:50px;">
							<lable for="select" class="hide"></lable>
							<select type="button" style="height:100%;">
								<option selected disabled><span>원하시는 사용시간을 선택하세요</span></option>
								<option value=""><span>12:00</span></option>
								<option><span>13:00</span></option>
								<option><span>14:00</span></option>
								<option><span>15:00</span></option>
								<option><span>16:00</span></option>
								<option><span>17:00</span></option>
								<option><span>18:00</span></option>
								<option><span>19:00</span></option>
								<option><span>20:00</span></option>
							</select>
						</div>
				</div>
			</div>
			
			<!-- PICKUP LOCATION -->
			<div class="row" style="background-color:yellow; border:1px solid pink; padding-top: 27px;display:none;">
				<div class="col-3" style="display: table;">
					<p style=" display: table-cell; vertical-align: middle; color: #666;">사용장소</p>
				</div>
				<div class="col-8">
					<div class="row" style="margin: 10px 18px 0 0; height:50px;">
						<lable for="select" class="hide"></lable>
						<select type="button" style="height:100%;">
							<option selected disabled><span>원하시는 픽업장소를 선택하세요</span></option>
							<option value=""><span>스프링 서울</span></option>
							<option><span>스프링 제주</span></option>
							<option><span>스프링 부산</span></option>
							<option><span>스프링 광주</span></option>
							<option><span>스프링 강릉</span></option>
						</select>
					</div>
				</div>
			</div>
			
<!-- SELECTED OPTION VIEW -->
			<div class="row" style="margin-top:30px; margin-right:18px; background: #F4F4F4; border: 1px solid #DCDCDC;padding: 20px 15px;">
				<div class="">
						<table style="margin-bottom: 20px; display:block; border:1px solid orange; table-layout: fixed; overflow:hidden;">
							<tr style=" margin-top:8px; vertical-align: middle; border:1px solid red; height:30px;">
								<th style="margin-top:8px; padding-right:8px; font-weight: 500;">직접픽업</th>
								<th></th>
							</tr>
							<tr style=" margin-top:8px; border:1px solid red;height:30px;">
								<td style="padding-right: 8px; font-weight: 500;">사용일시</td>
								<td>2022-08-07 12:00</td>
							</tr>
							<tr style=" margin-top:8px; border:1px solid red;height:30px;">
								<td style="padding-right: 8px; font-weight: 500;">사용장소</td>
								<td>[스프링호텔]서울</td>
							</tr>
						</table>
				</div>
				<div class="" style="display: table;width: 100%;border:1px solid orange;">
					<div>
						<button type="button" class="minus" style="width: 34px;height: 34px;float: left;border: 1px solid #DCDCDC;background: #fff;cursor: pointer;outline: none;"><span>-</span></button>
						<input type="num" class="qty" value="1" style="width: 66px;height: 34px;line-height: 34px;float: left;padding: 0 5px;border: 1px solid #DCDCDC;border-right: 0;border-left: 0;font-size: 14px;text-align: center;cursor: text;background-color: field;">
						<button type="button" class="plus" style="width: 34px;height: 34px;float: left;border: 1px solid #DCDCDC;background: #fff;cursor: pointer;outline: none;"><span>+</span></button>
					</div>
					<div style="border:1px solid orange;width: 113px;font-size: 16px; text-align: center;display: table-cell;vertical-align: middle;font-weight: 500;">
						104,000원
					</div>
					<div style="width: 14px;display: table-cell;vertical-align: middle;">
						<button type="button" class="delete" style="width: 14px;height: 14px;background: url(/resources/images/shop/common/icon-delete.png) 50% 50% no-repeat;background-size: 100%;text-indent: -9999px;overflow: hidden;cursor: pointer;outline: none;">삭제</button>
					</div>
				</div>
			</div>

			
<!-- TOTAL PRICE -->
			<div class="row" style="margin-top:30px; margin-right:18px; border:1px solid orange; height:70px; padding: 20px 0;">
				<div class="col-3" style="display: table;">
					<p style=" display: table-cell; vertical-align: middle; color: #666;">총 상품금액</p>
				</div>
				<div class="col-8" style="display: table; text-align:right; ">
					<p style=" display: table-cell; vertical-align: middle; font-weight:500;color: #666;font-size: 28px;">
						<span style="margin-right:10px;width:35px;font-size: 16px;display:inline-block; font-weight:400;vertical-align:middle;">KRW</span>
						49,000원</p>
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
<div class="container" style="background-color:lightgreen; clear:both; padding-top:150px;">
	<div class="row" style="border-top: 1px solid #DCDCDC; padding: 25px 50px;">
		<div class="col-2" style="border:1px solid yellow; font-size: 18px;text-align:center;display:table-cell;vertical-align:top;font-weight: 500;">
			<h5>상품안내</h5>
		</div>
		<div class="col-8" style="padding-left:6px; vertical-align:top;color: #666;margin-inline-start: 20px;">
			<p style="border:1px solid red; line-height: 2;"><span>상세설명1</span></p>
			<p style="border:1px solid red; line-height: 2;"><span>상세설명2</span></p>
			<p style="border:1px solid red; line-height: 2;"><span>상세설명3</span></p>
		</div>
	</div>
	<div class="row" style="border-top: 1px solid #DCDCDC; padding: 25px 50px;">
		<div class="col-2" style="border:1px solid yellow; font-size: 18px;text-align:center;display:table-cell;vertical-align:top;font-weight: 500;">
			<h5>상품안내</h5>
		</div>
		<div class="col-8" style="padding-left:6px; vertical-align:top;color: #666;">
			<div class="product-caution">
				<ul>
					<li style="line-height:2;">유의사항을 안내합니다.</li>
					<li style="line-height:2;">상품특화 유의사항 안내합니다.</li>
				</ul>
			</div>
			<div class="productcategory-caution">
				<ul>
					<li style="line-height:2;">유의사항을 안내합니다.</li>
					<li style="line-height:2;">상품카테고리 유의사항 안내합니다.</li>
				</ul>
			</div>
			<div class="all-product-caution">
				<ul>
					<li style="line-height:2;">유의사항을 안내합니다.</li>
					<li style="line-height:2;">전체상품 관련 유의사항 안내입니다.</li>
				</ul>
			</div>
		</div>
	</div>
	<div class="row" style="border-top: 1px solid #DCDCDC; padding: 25px 50px;">
		<div class="col-2" style="border:1px solid yellow; font-size: 18px;text-align:center;display:table-cell;vertical-align:top;font-weight: 500;">
			<h5>기타정보</h5>
		</div>
		<div class="col-8" style="border:1px solid yellow; vertical-align:top;color: #666;">
			<div class="product-company">
				<ul>
					<li style="line-height:2;">유의사항을 안내합니다.</li>
					<li style="line-height:2;">제조사 관련 정보.</li>
				</ul>
			</div>
			<div class="productcategory-caution">
				<ul>
					<li style="line-height:2;">유의사항을 안내합니다.</li>
					<li style="line-height:2;">유효기간과 반품기간과 고객센터</li>
				</ul>
			</div>
		</div>
	</div>
</div>		

<%@ include file="footer.jsp" %>
</body>
</html>