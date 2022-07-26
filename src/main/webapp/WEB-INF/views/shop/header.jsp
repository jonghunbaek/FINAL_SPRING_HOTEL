<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko" >
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<style>

/* FONT */
	@import url(//fonts.googleapis.com/earlyaccess/notosanskr.css);
	*{padding:0; margin:0; box-sizing: border-box;}
	body{font-family: "Noto Sans KR", sans-serif; line-height: 1.3; color:#333; letter-spacing: -0.05em;}
	li {list-style:none;}
	a {text-decoration: none; letter-spacing: -0.05em;}
	a:visited {color:inherit;}
	li a{ line-height:1.7;}
	input[type='text']:focus{outline:none;}
	select{-o-appearance: none; -webkit-appearance: none; -moz-appearance: none;appearance: none; cursor: pointer;}

	
/* HEADER 1 */
	.navbar{background-color:#e8e6dd; padding:0px; border-bottom: 1px solid #DCDCDC;}
	.navbar .row {padding: 5px 60px; width:100%; max-width: 1680px; height:45px; margin:0 auto;}
	.navbar .col-3 {float:left; line-height:35px;}
	.navbar .col-9 {float:right; height:40px; text-align:right; line-height:35px; padding:0px;}

	.nav-txt-align li{display:inline-block; list-style:none; text-align:center; margin: 0px; font-size:14px; color: #666;}
    .nav-txt-align li::after{content: "|"; float:right; display:block;   }
    .nav-txt-align li:last-child::after{content: "";}
    .nav-txt-align li a{padding: 0 10px;}

/* HEADER 2 */
	.header{padding:0px;  /* margin-bottom:50px; */ position: sticky;top: 0; z-index:10; background-color: #fff;}
	.header .head{border-bottom: 1px solid #DCDCDC;}
	.header .row{padding: 0px 60px; width:100%; max-width: 1680px; margin:0 auto;}
	.header .row .col-2{float:left;}
	.header .row .col-2 .logo {margin: 0 5% 0 0; display:inline-block; padding:25px 0 ;}
	.header .row .col-2 a {font-size: 20px;font-weight: 500;}
	.header .row .col-7{float:left;}
	.header .row .col-7 .row {justify-content: space-between;}
	.header .level1 {padding: 30px 15px; margin:0px;text-align:center;}
	.header .level1 a{display: block; font-size: 18px; font-weight:500;}
	.header .level1 a:hover{font-weight:bold; text-decoration:underline; color:black;}
	.header .row .col-3{float:right; height:auto; text-align:right;  padding:20px 0px 0px 10px; }
	.header .searchbox{width:280px; height:42px; float:right; border: 1px solid #DCDCDC;}
	.header .searchbox input{width:82%; height:100%; float:left; border:0;padding: 0 14px;background-color: #fff;border-radius: 0;}
	.header .searchbox button{width:15%; height:100%;background: #fff url(/resources/images/shop/common/icon-search.png)no-repeat 50%;background-size: 22px;text-indent: -9999px; overflow: hidden; border: 0;cursor: pointer;outline: none;float:left;}
	
	.header .dropmenu {border-bottom: 1px solid #DCDCDC; box-shadow: 0px 30px 30px -30px rgba(0,0,0,0.2); padding: 30px 60px; width:100%; max-width: 1680px; height:280px; margin:0 auto; /* display:inline-flex; */ display:none;}
	.header .dropmenu .col-3{border-right: 1px solid #DCDCDC;; float:left; width:25%; margin:0 2% 0 0;}
	.header .dropmenu .col-3 .category-name{text-align:center;}
	.header .dropmenu .col-3 .category-name a{font-size: 22px;}
	.header .dropmenu .col-7{float:left; width:60%; font-size: 18px; font-weight: 500;line-height:37px;}
	.header .dropmenu .col-7 .row .col{height:40px;}
	.header .dropmenu .col-7 .row .col a{}
	.header .dropmenu .col-7 .row .col ul li a{color: #666; font-size:17px; font-weight:400; line-height:35px;}
	
</style>
</head>

<body>
<!-- HEADER 1-->
<nav class="navbar">	
	<div class="container-fluid">
	
		<div class="row">
			<div class="col-3">
				<a href="/" target="_blank">
					<img src="/resources/images/shop/common/hotel-logo-brown.png" height="40px;">
				</a>	
			</div>
			<div class="col-9">
				<ul class="nav-txt-align">
					<c:if test="${empty LOGIN_USER }">
					    <li><a href="/login">로그인</a></li>
					    <li><a href="#">비회원 주문조회</a></li>
					    <li><a href="/register">회원가입</a></li>
					</c:if>
					<c:if test="${not empty LOGIN_USER }">
					    <li><a href="/logout">로그아웃</a></li>
					    <li><a href="#">주문조회</a></li>
					</c:if>
						<li><a href="#">FAQ</a></li>
						<li class="cart"><a href="#">장바구니</a></li>
				</ul>
			</div>
		</div>
		
	</div><div style="clear:both;"></div>
</nav>
<!-- END HEADER 1 -->

<!-- HEADER 2 -->
<header class="header" >
	<div class="head" >
		<div class="row " >

			<div class="col-2" >
				<h5 class="logo" >
				<a href="/shop" ><strong>SPRING HOTEL e-SHOP</strong></a></h5>
			</div>
			
			<div class="col-7" >
				<div class="row row-cols-5" >
						<div class="level1" id="big-category-no-1" onmouseover="dropping(1);" onmouseout="collapsing(1);">
							<a href="/shop/list?mainCategoryNo=1" ><span>스프링 TO-GO</span></a>
						</div>
						<div class="level1" id="big-category-no-2" onmouseover="dropping(2);" onmouseout="collapsing(2);">
							<a href="/shop/list?mainCategoryNo=2" ><span>푸드</span></a>
						</div>
						<div class="level1" id="big-category-no-3" onmouseover="dropping(3);" onmouseout="collapsing(3);">
							<a href="/shop/list?mainCategoryNo=3" ><span>기념일 선물</span></a>
						</div>
						<div class="level1" id="big-category-no-4" onmouseover="dropping(4);" onmouseout="collapsing(4);">
							<a href="/shop/list?mainCategoryNo=4" ><span>프리미엄 베딩</span></a>
						</div>
						<div class="level1" id="big-category-no-5" >
							<a href="/shop/list?mainCategoryNo=5" ><span>지류 상품권</span></a>
						</div>
				</div>
			</div>
			
			<div class="col-3" >		
				<form action="/shop/search/list" id="searchForm" method="get">
			        <div class="searchbox" >
			            <input type="text" name="keyword" id="keyword" placeholder="검색어를 입력해주세요" >
			            <button type="submit" >Search</button>
					</div>
				</form>
			</div>
		</div>
	</div>


<!-- DROPMENU -->	
		<div class="dropmenu" id="category-no-1" onmouseover="dropping(1);" onmouseout="collapsing(1);">
			<div class="col-3" >
							<div class="category-name" >
								<a href="/shop/list?mainCategoryNo=1" ><span>스프링 TO-GO &gt;</span></a>
							</div>
			</div>
			<div class="col-7" >
				<div class="row row-cols-3">
							<div class="col">
								<a href="/shop/list?mainCategoryNo=1&subCategoryNo=1"><span>시즌 상품</span></a>
							</div>
							<div class="col">
								<a href="/shop/list?mainCategoryNo=1&subCategoryNo=2"><span>도시락</span></a>
								<ul>
									<li><a href="/shop/list?mainCategoryNo=1&subCategoryNo=2&locationNo=1"><span>스프링 서울</span></a></li>
									<li><a href="/shop/list?mainCategoryNo=1&subCategoryNo=2&locationNo=3"><span>스프링 제주</span></a></li>
									<li><a href="/shop/list?mainCategoryNo=1&subCategoryNo=2&locationNo=2"><span>스프링 부산</span></a></li>
									<li><a href="/shop/list?mainCategoryNo=1&subCategoryNo=2&locationNo=5"><span>스프링 광주</span></a></li>
									<li><a href="/shop/list?mainCategoryNo=1&subCategoryNo=2&locationNo=4"><span>스프링 강릉</span></a></li>
								</ul>
							</div>
							<div class="col">
								<a href="/shop/list?mainCategoryNo=1&subCategoryNo=3"><span>미드나잇 플렉스</span></a>
								<ul>
									<li><a href="/shop/list?mainCategoryNo=1&subCategoryNo=3&locationNo=1"><span>스프링 서울</span></a></li>
									<li><a href="/shop/list?mainCategoryNo=1&subCategoryNo=3&locationNo=3"><span>스프링 제주</span></a></li>
									<li><a href="/shop/list?mainCategoryNo=1&subCategoryNo=3&locationNo=2"><span>스프링 부산</span></a></li>
									<li><a href="/shop/list?mainCategoryNo=1&subCategoryNo=3&locationNo=5"><span>스프링 광주</span></a></li>
									<li><a href="/shop/list?mainCategoryNo=1&subCategoryNo=3&locationNo=4"><span>스프링 강릉</span></a></li>
								</ul>
							</div>
<!-- 							<div class="col">
								<a href="/shop/list?mainCategoryNo=1&subCategoryNo=1&locationNo=3"><span>스프링 서울 TO-GO</span></a>
							</div>
							<div class="col">
								<a href="/shop/list?mainCategoryNo=1&subCategoryNo=2"><span>스프링 제주 TO-GO</span></a>
							</div>
							<div class="col">
								<a href="/shop/list?mainCategoryNo=1&subCategoryNo=3"><span>스프링 부산 TO-GO</span></a>
							</div>
							<div class="col">
								<a href="/shop/list?mainCategoryNo=1&subCategoryNo=4"><span>스프링 광주 TO-GO</span></a>
							</div>
							<div class="col">
								<a href="/shop/list?mainCategoryNo=1&subCategoryNo=5"><span>스프링 강릉 TO-GO</span></a>
							</div> -->
				</div>
			</div>
		</div>
		<div class="dropmenu" id="category-no-2" onmouseover="dropping(2);" onmouseout="collapsing(2);">
			<div class="col-3" >
							<div class="category-name" >
								<a href="/shop/list?mainCategoryNo=2" ><span>푸드 &gt;</span></a>
							</div>
			</div>
			<div class="col-7" >
				<div class="row row-cols-3">
							<div class="col">
								<a href="/shop/list?mainCategoryNo=2&subCategoryNo=4"><span>시즌 상품</span></a>
							</div>
							<div class="col">
								<a href="/shop/list?mainCategoryNo=2&subCategoryNo=5"><span>케이크</span></a>
								<ul>
									<li><a href="/shop/list?mainCategoryNo=2&subCategoryNo=5&locationNo=1"><span>스프링 서울</span></a></li>
									<li><a href="/shop/list?mainCategoryNo=2&subCategoryNo=5&locationNo=3"><span>스프링 제주</span></a></li>
									<li><a href="/shop/list?mainCategoryNo=2&subCategoryNo=5&locationNo=2"><span>스프링 부산</span></a></li>
									<li><a href="/shop/list?mainCategoryNo=2&subCategoryNo=5&locationNo=5"><span>스프링 광주</span></a></li>
									<li><a href="/shop/list?mainCategoryNo=2&subCategoryNo=5&locationNo=4"><span>스프링 강릉</span></a></li>
								</ul>
							</div>
							<div class="col">
								<a href="/shop/list?mainCategoryNo=2&subCategoryNo=6"><span>선물 세트</span></a>
							</div>
				</div>
			</div>
		</div>
		<div class="dropmenu" id="category-no-3" onmouseover="dropping(3);" onmouseout="collapsing(3);">
			<div class="col-3" >
							<div class="category-name" >
								<a href="/shop/list?mainCategoryNo=3" ><span>기념일 선물 &gt;</span></a>
							</div>
			</div>
			<div class="col-7" >
				<div class="row row-cols-3">
							<div class="col">
								<a href="/shop/list?mainCategoryNo=3&subCategoryNo=7"><span>와인&치즈</span></a>
							</div>
							<div class="col">
								<a href="/shop/list?mainCategoryNo=3&subCategoryNo=8"><span>과일바구니</span></a>
							</div>
							<div class="col">
								<a href="/shop/list?mainCategoryNo=3&subCategoryNo=9"><span>꽃</span></a>
							</div>
				</div>
			</div>
		</div>
		<div class="dropmenu" id="category-no-4" onmouseover="dropping(4);" onmouseout="collapsing(4);">
			<div class="col-3" >
							<div class="category-name" >
								<a href="/shop/list?mainCategoryNo=4" ><span>프리미엄 베딩 &gt;</span></a>
							</div>
			</div>
			<div class="col-7" >
				<div class="row row-cols-3">
							<div class="col">
								<a href="/shop/list?mainCategoryNo=4&subCategoryNo=10"><span>침구류</span></a>
							</div>
							<div class="col">
								<a href="/shop/list?mainCategoryNo=4&subCategoryNo=11"><span>타월류</span></a>
							</div>
							<div class="col">
								<a href="#"><span></span></a>
							</div>
				</div>
			</div>
		</div>
</header>						
</body>

<script type="text/javascript">

	// 마우스 오버시 dropdown 메뉴를 열고닫는다.
	function dropping(index) {
		document.querySelector("#category-no-" + index).style.display ='inline-flex';
	}
	function collapsing(index) {
		document.querySelector("#category-no-" + index).style.display ='none';
	}
	
</script>
</html>