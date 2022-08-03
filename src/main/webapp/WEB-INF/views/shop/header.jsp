<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko" >
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<style>


/* 폰트적용 */
	@import url(//fonts.googleapis.com/earlyaccess/notosanskr.css);
	
	html {
	  font-family: "Noto Sans KR", sans-serif;
	}

	body {
	font-family: 'NotoSansCJKkr', sans-serif;
	font-size: 14px;
	}
	
	a {text-decoration: none;}
	
/*HEADER-TOP*/

	.h-top{
	height:50px;
	}
	.h-top-img{
	float:left;
	width:30%;
	line-height:30px;
	}
	
	.h-top-util{
	float: right;
	width:60%;
	height:auto;
	text-align:right;
	line-height:50px;
	}
	
	.h-top-txt-align li{
    display: inline-block;
    list-style: none;
    text-align:center;
    margin: 0px;
    }
    .h-top-txt-align li::after{content: "|"; float: right; display: block;   }
    .h-top-txt-align li:last-child::after{content: "";}
    .h-top-txt-align li a{padding: 0 10px;border: 1px solid blue;}
    
/*HEADER-BOTTOM*/	
	.h-bottom-img{
	float:left;
	width:30%;
	height:30px;
	line-height:30px;
	}
	
	.h-bottom-category{
	float: left;
	width:300px;
	height:auto;
	}
	
	.h-bottom-search{
	float: right; width:300px; height:auto; text-align:right;
	}
	
/*HEADER-DROPDOWN*/

	.category-inner-left{
	float:left;
	width:20%;
	height:30px;
	line-height:30px;
	}
	
	.category-inner-right{
	float: right;
	width:70%;
	height:auto;
	text-align:center;
	}
	
	.category-inner-right li{
    display: inline-block;
    list-style: none;
    text-align:center;
    margin: 0px;
	}
	
	
</style>
</head>

<body>
<!-- HEADER -->
<header id="header" class="header">
<div class="container">

<!-- HEADER-TOP -->
	<div class="h-top">
		<div class="row">
			<div class="col">
				<div class="h-top-img">
					<a href="/" target="_blink" class="h-top-logo">
						<img src="../resources/images/shop/common/hotel-logo-brown.png" height="50">
					</a>	
				</div>
<!-- HEADER-UTIL-MENU -->
				<div class="h-top-util">
					<ul class="h-top-txt-align">
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
<!-- END-HEADER-UTIL-MENU -->				
			</div>
		</div>
	</div><div style="clear:both:"></div>
<!-- END-HEADER-TOP -->

<!-- HEADER-BOTTOM -->
	<div class="h-bottom" style="border:1px solid green;">
		<div class="row">
			<div class="col">
				<div class="h-bottom-img">
					<h2 class="e-shop-logo"><a href="/shop"><strong>SPRING HOTEL e-SHOP</strong></a></h2>
				</div>
				<div class="h-bottom-category">	
					<ul>
						<a href="/shop/product_lists"><span>푸드</span></a>
						<a href="/shop/product_lists"><span>기념일 선물</span></a>
						<a href="/shop/product_lists"><span>프리미엄 베딩</span></a>
					</ul>
				</div>
<!-- HEADER-SEARCH-BUTTON -->
				<div class="h-bottom-search">		
					<form action="/shop/search_product/product_lists" id="searchForm" method="get">
						<div class="top-search-area">
					        <div class="search-box">
					            <input type="text" name="keyword" id="keyword" placeholder="검색어를 입력해주세요">
					            <button type="submit">Search</button>
					        </div>
					    </div>
					</form>
				</div>
<!-- END-HEADER-SEARCH-BUTTON -->
			</div>
		</div>
	</div><div style="clear:both:"></div>
<!-- END-HEADER-BOTTOM -->

<!-- HEADER-DROPDOWN -->
	<div class="h-dropdown" style="border:1px solid red;">
		<div class="row">
			<div class="col">
				<div class="category-inner" style="border:1px solid green;">
					<div class="category-inner-left">
						<p class="scr-title"><span>푸드</span></p>
					</div>
					<div class="category-inner-right">
						<ul>
							<li><a href="/shop/product_lists"><span>시즌 상품</span></a></li>
							<li><a href="/shop/product_lists"><span>케이크</span></a></li>
							<li><a href="/shop/product_lists"><span>선물세트</span></a></li>
						</ul>
					</div>
				</div>
				<div class="category-inner">
					<div class="category-inner-left">
						<p class="scr-title"><span>기념일 선물</span></p>
					</div>
					<div class="category-inner-right">
						<ul>
							<li><a href="/shop/product_lists"><span>와인&치즈</span></a></li>
							<li><a href="/shop/product_lists"><span>과일바구니</span></a></li>
							<li><a href="/shop/product_lists"><span>꽃</span></a></li>
						</ul>
					</div>
				</div>
				<div class="category-inner">
					<div class="category-inner-left">
						<p class="scr-title"><span>프리미엄 베딩</span></p>
					</div>
					<div class="category-inner-right">
						<ul>
							<li><a href="/shop/product_lists"><span>침구</span></a></li>
							<li><a href="/shop/product_lists"><span>타월</span></a></li>
							<li><a href="/shop/product_lists"><span>꽃</span></a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div><div style="clear:both:"></div>
<!-- END-HEADER-DROPDOWN -->

</div>
</header>
</body>
</html>