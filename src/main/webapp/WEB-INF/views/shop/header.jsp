<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<!-- HEADER -->
<header id="shop-header" class="shop-header">
<!-- HEADER-TOP -->
	<div class="h-top">
		<a href="/" target="_blink" class="logo">
		    <picture>
		    <source srcset="/images/shop/common/pc_logo.png" media="(min-width:768px)"><!-- pc이미지 -->
		    </picture>
		</a>
		  
<!-- HEADER-UTILITY-MENU -->
		<div class="h-util-menu">
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
					<li><a href="/shop/faq/faq_lists">FAQ</a></li>
					<li class="cart"><a href="/shop/cart/cart_lists">장바구니</a></li>
			</ul>
		</div>
	</div>
      
<!-- HEADER-BOTTOM -->
<div class="h-bottom">
	<div class="h-inside">
		<h2 class="nm_logo"><a href="/shop">SPRING HOTEL e-SHOP</a></h2>
              <div class="mb_gnb">
                  <div class="h-inside">
                      <p class="gnb_logo"><a href="/" target="_blank"><img src="/images/shop/common/mb_gnb_logo.png" title="SPRING HOTELS &amp; RESORTS"></a></p>
                  </div>
              </div>
              <button type="button" onclick="btnSrch(this);" class="btn_srch">Search Area Open</button>
        <form action="/shop/search_product/product_lists" id="searchForm" method="get">
            <div class="top_srch_area">
                <div class="srch_box">
                    <input type="text" name="keyword" id="keyword" placeholder="검색어를 입력해주세요">
                    <button type="submit">Search</button>
                </div>
            </div>
        </form>
    </div>
</div>
</html>