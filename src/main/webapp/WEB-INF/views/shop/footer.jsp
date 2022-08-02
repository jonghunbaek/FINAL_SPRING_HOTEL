<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<!-- QUICK -->
<div class="quick">
	<button type="button" class="js-top-btn">TOP</button>
</div>

<!-- FOOTER -->
<footer id="shop-footer" class="shop-footer">
<!-- FOOTER-TOP -->
    <div class="f-top">
        <div class="f-inside">
            <p>(주)호텔 스프링<br>
               주소 : (03134) 서울특별시 종로구 율곡로10길 105<br>
               대표이사 : Jay-K / 사업자등록증 : 104-81-59383<br>
               통신판매신고번호 : 서울중구-065325</p>
            <div class="f_menu">
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
	                    <li><a href="/shop/help/help_write">1:1문의</a></li>
	                    <li><a href="/shop/sitemap">사이트맵</a></li>
                </ul>
            </div>
            <div class="txt">
                <p>SPRING HOTEL e-SHOP 고객센터</p>
                <p>[전화번호] <a href="tel:070-8240-3211">070-8240-3211</a></p>
                <p>[운영시간] 평일 09:00 ~ 18:00</p>
                <p>[점심시간] 평일 12:00 ~ 13:30</p>
                <p>* 주말 및 공휴일은 1:1문의 게시판을 이용해 주세요</p>
            </div>
        </div>
    </div>
<!-- FOOTER-BOTTOM -->
    <div class="f-bottom">
        <div class="f-inside">
            <ul>
                <li><a href="/shop/login/privacy_policy">개인정보처리방침</a></li>
                <li><a href="/shop/login/terms_service">이용약관</a></li>
                <li><a href="/shop/login/rewards_policy">리워즈 회원약관</a></li>
                <li><a href="/shop/login/exchange_return">이용안내</a></li>
            </ul>
            <div class="js-toggle typeup">
                <button type="button" class="js-familytitle-btn">
                    <span>패밀리사이트</span>
                </button>
                <ul>
                    <li>
                        <button type="button" onClick="window.open('/');" class="js-change-btn">
                            <span>스프링 호텔&리조트</span>
                        </button>
                    </li>
                    <li>
                        <button type="button" onClick="window.open('/diging/step1');" class="js-change-btn">
                            <span>스프링 다이닝</span>
                        </button>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</footer>
</html>