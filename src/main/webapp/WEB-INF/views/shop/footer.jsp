<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<style>

/* 폰트적용 */
	@import url(//fonts.googleapis.com/earlyaccess/notosanskr.css);
	
    *{padding:0; margin:0; box-sizing: border-box;}
    
	footer {
	font-family: "Noto Sans KR", sans-serif;
    font-size: 15px;
    line-height: 1.3;
    letter-spacing: -0.05em;
    color: #999;
    }
    
	a {text-decoration: none; letter-spacing: -0.05em; color:inherit;}
	ul {padding: 0rem;}
	
	.js-familytitle-btn option{background: #111; border: 1px solid #666; color: #999; width: 100%; padding: 10px 14px 0px;display: block; font-size:16px; height:40px;}

	
/*FOOTER-BOTTOM*/
	#f-bottom-txt li{display: inline-block;list-style:none;text-align:center;margin: 0px;}
    #f-bottom-txt li::after{content: "|";float: right;display: block;}
    #f-bottom-txt li:last-child::after{content: "";}
    #f-bottom-txt li a{padding: 0 10px;}
    

/*     #f-bottom-select{}
    #f-bottom-select select{width: 197px; height: 33px; font-size: 11px;left: 0; top: 0;}
    #f-bottom-select select{width:100%; height:33px; line-height:normal; border: 1px solid transparent; margin:0; padding:0; color:#9999a8; font-weight:bold; cursor:pointer; padding-left:15px;background-color:#f6f6f6;    }

    #go-btn {background-color:#888888;color:white;width:50px;height:33px;position:absolute;font-size:10px;font-weight:500;line-height:33px;}
 */    
</style>

<!-- QUICK -->
<div style="right:60px;bottom:10%; position:fixed; z-index: 550;">
	<button type="button" style="width: 50px;height: 50px; background: #666 url(/resources/images/shop/common/icon-go-top.png) no-repeat 50%;background-size: 16px; border-radius: 100%; text-indent:-9999px; outline:none; border:0;">TOP</button>
</div>

<!-- FOOTER -->
<footer id="footer" class="footer">
	<div class="container-fluid" style="margin-top: 90px; padding: 53px 60px 0; background: #111; color: #999; height:auto;">
		<div class="container">
			<div class="row" style="order:1px solid white; padding-bottom:40px;">
				<div class="col-6">
					<div class="row h-50">
					        	<div class="f-top-img" style="height:50%;">
									<a href="/" target="_blink" class="h-top-logo">
										<img src="/resources/images/shop/common/footer-logo-wht.png">
									</a>
								</div>
					</div>
					<div class="row h-50">
								<div class="f-top-txt">    
									<p style="line-height: 30px;">(주)호텔 스프링<br>
										주소 : (03134) 서울특별시 종로구 율곡로10길 105<br>
										대표이사 : Jay-K / 사업자등록증 : 104-81-59383<br>
										통신판매신고번호 : 서울중구-065325
									</p>
								</div>
					</div>
				</div>
				<div class="col-3">
					<p style="line-height: 27px;"> SPRING HOTEL e-SHOP 고객센터<br>
						[전화번호] <a href="tel:070-8240-3211">070-8240-3211</a><br>
						[운영시간] 평일 09:00 ~ 18:00<br>
						[점심시간] 평일 12:00 ~ 13:30<br>
						* 주말 및 공휴일은 1:1문의 게시판을 이용해 주세요</p>
				</div>
				<div class="col" style="border-left: 1px solid #333; border-right: 1px solid #333; padding:0 27px;">
						<ul style="list-style:none;margin: 0px; line-height:1.7;">
		                    <li><a href="/shop/help/help_write">1:1문의</a></li>
		                    <li><a href="/shop/sitemap">사이트맵</a></li>
		                </ul>
				</div>
				<div class="col" style="padding:0 27px;">
						<ul style="list-style:none;margin: 0px; line-height:1.7;">
			                <c:if test="${empty LOGIN_USER }">
			                    <li><a href="/login" style="color: #fff;"><strong>로그인</strong></a></li>
			                    <li><a href="/shop/nomem/nomem_order_lists">비회원 주문조회</a></li>
			                    <li><a href="/register">회원가입</a></li>
			                </c:if>
			                <c:if test="${not empty LOGIN_USER }">
			                    <li><a href="/logout">로그아웃</a></li>
			                    <li><a href="/shop/order_lists">주문조회</a></li>
			                </c:if>
						</ul>
				</div>
			</div>
			<div class="row" style="border-top: 1px solid #333; padding: 10px 0 30px;">
					<div class="col" style="float:left;" id="f-bottom-txt">
				            <ul style="margin: 30px 0 0; ">
				                <li><a href="/shop/login/privacy_policy">개인정보처리방침</a></li>
				                <li><a href="/shop/login/terms_service">이용약관</a></li>
				                <li><a href="/shop/login/rewards_policy">리워즈 회원약관</a></li>
				                <li><a href="/shop/login/exchange_return">이용안내</a></li>
				            </ul>
					</div>
		            <div class="col-2" style="float:right; width:20%;">
		            	<label for="select" class="hide"></label>
		                <select id="f-bottom-select" name="select-familysite" type="button" class="js-familytitle-btn"
		                style="border: 1px solid #666; height:40px;
		                	-o-appearance: none; -webkit-appearance: none; -moz-appearance: none;appearance: none; cursor: pointer;
							background: url(/resources/images/shop/common/icon-select.png) no-repeat 100% 50%; background-size: 34px; color: #999; display: block;
							width: 100%;text-align: left;padding: 0 14px;"
						onchange="window.open(value,'_blank');">
		                    <option selected disabled="disabled"><span>패밀리사이트</span></option>
		                    <option value="/"><span>스프링 호텔&리조트</span></option>
		                    <option value="/dining/step1"><span>스프링 다이닝</span></option>
						</select>
		            </div>
			</div>			
	</div>
</div><div style="clear:both:"></div>
</footer>

</html>