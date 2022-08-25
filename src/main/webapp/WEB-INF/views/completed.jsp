<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="common/tags.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!-- 다음주소검색 -->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=0f5efd23f2359c36bc8e32b428cd9954&libraries=services"></script>
<title>Spring Hotel</title>
</head>
<link href="${pageContext.request.contextPath}/resources/css/home.css" rel="stylesheet">
<body>
<c:set var="menu" value="home" />
<%@ include file="common/nav.jsp"%>
<div class="container" id="container">
		<div class="loginBox contents" id="contents">
	        <!-- 회원가입 헤더 --> 
			<div class="location rgt">
				<p class="list">
					<span class="crPosit"></span> &gt; <strong>가입완료</strong>
				</p>
			</div>
			<div class="headTit">
				<h4 class="registerTit">회원가입</h4>
			</div>
			<h1 class="logo">
					<span><p>스프링리워즈 회원가입이 완료되었습니다.</p></span>
				</h1>
			<div class="info">
					<p>※ 로그인하여 회원만을 위한 다양한 서비스와 혜택을 즐겨보세요.</p>
			</div>
	</div>
</div>
<%@ include file="common/footer.jsp"%>
</body>
</html>