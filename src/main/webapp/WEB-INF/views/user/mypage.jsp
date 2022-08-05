<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/tags.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<style type="text/css">

	#container {padding-top: 65px; width: 1200px; height:1500px; margin: auto; padding-left: 0px; padding-right: 0px;}
	#container a {text-decoration: none; color: rgb(99, 62, 16);}
	#container h3 {font-family: 'Nanum Myeongjo', serif; color: rgb(133, 111, 86);}
	#container input {border: 1px solid rgb(204,204,204);}
	li {list-style: none;}
	#h5 {font-size: 15px; border-bottom: 3px; border-color: black; margin-top: 30px; margin-bottom: 30px;}
	#div-sidebar {float: left; width: 264px; height: 720px; background-color: rgb(241, 227, 196);
				  margin: auto; padding: 23px; text-align: left; border: 1px solid #e9dab8;}
	#div-sidebar ul {padding: 0px;}
	#list {margin-top: 25px; text-align: left;}
	#list li {margin-top:10px; text-align: left; font-size: 13px;}
	#div-sidebar span {color: rgb(99, 62, 16); font-weight: bold;}
	#div-sidebar li a {display: block; color: rgb(135,97,51);}
	#list-border {border-top: 1px dotted rgb(206,194,168); padding-top: 5px; margin-top: 5px;}
	#div-contents {float: right; margin: auto; width: 866px; height: 743px;}
	#span-color {color:rgb(118,118,118)}
	#div-userInfo1, #div-userInfo2 li  {float: left;}
	#div-userInfo1 p {margin-bottom: 0px;}
	#div-userInfo1 span {font-size: 25px;}
	#div-userInfo1 strong {font-size: 23px; font-weight: bold; color: #8f6349;}
	#div-userInfo2 {float: right; margin: auto; padding: 25px 0px; width: 490px; height: 70px; background-color: #f3f3f3; border-radius: 3px;}
	#div-userInfo2 span {float: left;}
	#div-userInfo2 strong {float: right;}
	#div-info {width: 866px; height: 71px; margin: 20px 0px 40px;}
	#div-userInfoTitle, #div-TableTitle {width: 866px; height: 15px; margin-bottom: 25px;}
	#div-userInfo-graphbox {width: 866px; height: 315px; border: 1px solid #e3d6c6;}
	#div-tiertxt {font-size: 12px; color: #727272;}
	#div-pointTable {width: 866px; height: 98px; margin-top: 60px;}
	#div-table {border: none; border-top: 1px solid #cdcbbe; width: 100%; border-collapse: collapse;}
	.table {text-align: center; font-size: 13px;}
	.table th {border-bottom: 1px solid #cdcbbe; color: #666666; line-height: 17px;}
	
</style>
<title>Spring Hotel</title>
</head>
<body>
<%@ include file="../common/nav.jsp" %>
<div class="container-fluid" id="container">
	<div id="div-sidebar">
		<h3 class="fs-7 border-dark border-bottom border-5 pb-3">마이 페이지</h3>
		<ul class="menu">
			<li id="list"><a href="mypage"><span>스프링리워즈 등급 및 포인트</span></a></li>
			<li id="list"><span >예약 확인/취소</span>
				<ul id="list-border">
					<li><a href="room">객실/패키지</a></li>
					<li><a href="dining">다이닝</a></li>
				</ul>
			</li>
			<li id="list"><span>포인트</span>
				<ul id="list-border">
					<li><a href="point">포인트 조회</a></li>
					<li><a href="#">포인트 조정신청</a></li>
					<li><a href="#">상품권 교환 신청</a></li>
				</ul>
			</li>
			<li id="list"><span>쿠폰</span>
				<ul id="list-border">
					<li><a href="coupon">쿠폰함</a></li>
					<li><a href="#">프로모션 숙박권</a></li>
				</ul>
			</li>
			<li id="list"><span>내 정보</span>
				<ul id="list-border">
					<li><a href="modify">프로필 수정</a></li>
					<li><a href="changePw">비밀번호 변경</a></li>
					<li><a href="inquery">문의 내역</a></li>
					<li><a href="withdrawal">탈퇴 요청</a></li>
				</ul>
			</li>
		</ul>
	</div>
	
	<div id="div-contents">
		<div id="div-content1">
			<h3 class="fs-7 border-dark border-bottom border-5 pb-3">스프링리워즈 등급 및 포인트</h3>
			<br>
			<div id="div-info">
				<div id="div-userInfo1">
					<p><span>ㅇㅇㅇ </span> 님은</p>
					<p><strong>BROWN </strong> 회원입니다.</p>
				</div>
				<div id="div-userInfo2">
					<ul class="ms-3" style="float: left;">
						<li class="me-5"><span id="span-color">회원번호</span></li>
						<li><strong>2121525</strong></li>
					</ul>
					<ul class="me-5" style="float: right;">
						<li><span id="span-color">포인트</span></li>
						<li class="ms-5"><strong>123<b>P</b></strong></li>
					</ul>
				</div>
			</div>
			<div id="div-userInfoTitle">
				<div style="float: left;">
					<img src="/resources/images/mypage/graphTitTxt.gif">
				</div>
				<div style="float: right;">
					<a href="/benefits" style="font-size: 13px; text-decoration: underline;">등급별 혜택보기</a>
				</div>
			</div>
			<div class="mt-3" id="div-userInfo-graphbox">
				
			</div>
			<div class="mt-3" id="div-tiertxt">
				<p>※ 등급평가 및 조정은 1월 1일부터 12월 31일까지 (체크아웃기준) 1년간 이용한 실적기준</p>
			</div>
			<div id="div-pointTable">
				<div id="div-TableTitle">
					<div style="float: left;">
						<img src="/resources/images/mypage/boardTitle1.gif">
					</div>
					<div style="float: right;">
						<a href="/points" style="font-size: 13px; text-decoration: underline;">포인트 안내보기</a>
					</div>
				</div>
				<div id="div-table">
					<table class="table background-color" summary="호텔,구분,이용금액(원),적립포인트,사용포인트,이용날짜로 구성된 게시물 리스트 표">
						<colgroup>
							<col width="25%" class="col1">
							<col width="25%" class="col2">
							<col width="25%" class="col3">
							<col width="25%" class="col4">
						</colgroup>
						<thead>
							<tr style="background-color: #faf9f4;">
								<th>구분</th>
								<th>적립 포인트</th>
								<th>사용포인트</th>
								<th>날짜</th>
							</tr>
						</thead>
						<tbody>
							<tr class="first last">
								<td colspan="6">자료가 없습니다.</td>
							</tr>
						</tbody>
					</table>
				</div>
				
			</div>
			
		</div>
	</div>
</div>
<%@ include file="../common/footer.jsp" %>
</body>
<script type="text/javascript">

	
</script>
</html>
