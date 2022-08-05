<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<style>

/* 폰트적용 */
	@import url(//fonts.googleapis.com/earlyaccess/notosanskr.css);
	
	html {
	  font-family: "Noto Sans KR", sans-serif;
	}
	
	.f-top {
    margin-top: 90px;
    padding: 53px 60px 0;
    background: #111;
	color: #999;
	height:250px;
	}
	.f-bottom {
    padding: 53px 60px 0;
    background: #111;
	color: #999;
	height:120px;
	border-top:1px solid #999;
	}
	
/*FOOTER-TOP*/		
	.f-top-info{
	float: left;
	width:30%;
	height:auto;

	}
	.f-top-menu-util{
	float: right;
	width:20%;
	height:auto;
	}
	.f-top-menu-util li{list-style:none;margin: 0px;}
	
	.f-top-menu-sitemap{
	float: right;
	width:20%;
	height:auto;
	}
	.f-top-menu-sitemap li{list-style:none;margin: 0px;}
	
	.f-top-cscenter{
	float: right;
	width:20%;
	height:auto;
	}
	
/*FOOTER-BOTTOM*/
	.f-bottom-txt{
	float:left;
	width:60%;
	height:30px;
	line-height:70px;
	}
	.f-bottom-txt li{display: inline-block;list-style:none;text-align:center;margin: 0px;}
    .f-bottom-txt li::after{content: "|";float: right;display: block;}
    .f-bottom-txt li:last-child::after{content: "";}
    .f-bottom-txt li a{padding: 0 10px;border: 1px solid blue;	}
    
    .f-bottom-select{
    float:right;
  	width:20%;
    /* position: relative; */
    z-index: 1;
    }
    .f-bottom-select select{
    width: 197px; height: 33px; font-size: 11px;left: 0; top: 0;
    }
    .f-bottom-select select {
    width:100%;
    height:33px;
    line-height:normal;
    border: 1px solid transparent;
    margin:0;
    padding:0;
    color:#9999a8;
    font-weight:bold;
    cursor:pointer;
    padding-left:15px;
    background-color:#f6f6f6;    }
    .f-bottom-select select > option {    color:black;    background-color:white;	}
    .go-btn {
	background-color:#888888;
	color:white;
	width:50px;
	height:33px;
	position:absolute;
	font-size:10px;
	font-weight:500;
	line-height:33px;
	}
    
</style>

<!-- QUICK -->
<div class="quick">
	<button type="button" class="js-top-btn">TOP</button>
</div>

<!-- FOOTER -->
<footer id="footer" class="footer">
<div class="container">

<!-- FOOTER-TOP -->
	<div class="f-top">
		<div class="row">
			<div class="col">
				<div class="f-top-info">
					<div class="row">
			        	<div class="f-top-img">
							<a href="/" target="_blink" class="h-top-logo">
								<img src="/resources/images/shop/common/footer-logo-wht.png">
							</a>
						</div>
					</div>
					<div class="row">
						<div class="f-top-txt">    
							<p>(주)호텔 스프링<br>
								주소 : (03134) 서울특별시 종로구 율곡로10길 105<br>
								대표이사 : Jay-K / 사업자등록증 : 104-81-59383<br>
								통신판매신고번호 : 서울중구-065325
							</p>
						</div>
					</div>
				</div>
<!-- FOOTER-UTIL-MENU -->
	            <div class="f-top-menu-util">
					<ul>
		                <c:if test="${empty LOGIN_USER }">
		                    <li><a href="/login">로그인</a></li>
		                    <li><a href="/shop/nomem/nomem_order_lists">비회원 주문조회</a></li>
		                    <li><a href="/register">회원가입</a></li>
		                </c:if>
		                <c:if test="${not empty LOGIN_USER }">
		                    <li><a href="/logout">로그아웃</a></li>
		                    <li><a href="/shop/order_lists">주문조회</a></li>
		                </c:if>
					</ul>
				</div>
				<div class="f-top-menu-sitemap">
					<ul>
		                    <li><a href="/shop/help/help_write">1:1문의</a></li>
		                    <li><a href="/shop/sitemap">사이트맵</a></li>
	                </ul>
	            </div>
	            <div class="f-top-cscenter">
	                <p>SPRING HOTEL e-SHOP 고객센터</p>
	                <p>[전화번호] <a href="tel:070-8240-3211">070-8240-3211</a></p>
	                <p>[운영시간] 평일 09:00 ~ 18:00</p>
	                <p>[점심시간] 평일 12:00 ~ 13:30</p>
	                <p>* 주말 및 공휴일은 1:1문의 게시판을 이용해 주세요</p>
	            </div>
<!-- END-FOOTER-UTIL-MENU -->
			</div>
		</div>
    </div><div style="clear:both:"></div>
<!-- END-FOOTER-TOP -->

<!-- FOOTER-BOTTOM -->
    <div class="f-bottom">
		<div class="row">
        	<div class="col">
	        	<div class="f-bottom-txt">
		            <ul>
		                <li><a href="/shop/login/privacy_policy">개인정보처리방침</a></li>
		                <li><a href="/shop/login/terms_service">이용약관</a></li>
		                <li><a href="/shop/login/rewards_policy">리워즈 회원약관</a></li>
		                <li><a href="/shop/login/exchange_return">이용안내</a></li>
		            </ul>
				</div>
	            <div class="f-bottom-select">
	            	<label for="select" class="hide"></label>
	                <select name="select-familysite" id="select" type="button" class="js-familytitle-btn">
	                    <option selected><span>패밀리사이트</span></option>
	                    <option><span>스프링 호텔&리조트</span></option>
	                    <option><span>스프링 다이닝</span></option>
					</select>
				<button class="go-btn">GO</button>
	            </div>
			</div>
		</div>
	</div><div style="clear:both:"></div>
<!-- END-FOOTER-BOTTOM -->	
</div>
</footer>

</html>