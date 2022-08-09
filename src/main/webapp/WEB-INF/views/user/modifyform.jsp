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
	#div-sidebar a {text-decoration: none; color: rgb(99, 62, 16);}
	#container h3 {font-family: 'Nanum Myeongjo', serif; color: rgb(133, 111, 86); margin-bottom: 0;}
	#container input, #container select  {border: 1px solid rgb(204,204,204);}
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
	#div-contents {float: right; margin: auto; width: 866px; height: 100%;}
	#span-color {color:rgb(118,118,118)}
	#div-msg {border: 1px solid #e9e9e9; background-color: #fbfbfb; color:#666; padding: 15px; margin: 0 0 20px 0; font-size: 15px;}
	#div-table {border: none; border-top: 1px solid #cdcbbe; width: 100%; border-collapse: collapse; font-size: 15px;}
	#div-table th {border-bottom: 1px solid #cdcbbe; background-color: #faf9f4; color: #666; line-height: 20px; vertical-align: middle;}
	#div-table .last {border-bottom: 1px solid #cdcbbe;}
	#div-btn {width: 866px; height: 70px; padding-top: 20px; text-align: right; display: block;}
	#btn1 {text-decoration: none; display: block; color: rgb(250,241,208); padding-top: 5px; margin-left: 300px;
	       background-color: rgb(62,43,44); width:130px; height:32px; text-align: center; font-size: 14px; display: block; float: left;}
    #btn2 {text-decoration: none; display: block; color: rgb(250,241,208); padding-top: 5px; margin-right: 300px;
	       background-color: rgb(62,43,44); width:130px; height:32px; text-align: center; font-size: 14px; display: block; float: right;}
	       
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
			<h3 class="fs-7 border-dark border-bottom border-5 pb-3">프로필 수정</h3>
			<div id="div-msg">
				고객님의 정보를 언제든지 확인, 변경하실 수 있습니다.
			</div>
			<div>
				<h5>기본 정보</h5>
			</div>
			<form>
			<div id="div-table">
				<table class="table" summary="아이디,비밀번호로 구성된 테이블">
					<colgroup>
						<col width="17%" class="col1">
						<col class="col2">
						<col class="col2">
						<col class="col2">
						<col class="col2">
						<col class="col2">
					</colgroup>
					<tbody>
						<tr>
							<th scope="row">성명(국문)</th>
							<td>ㅇㅇㅇ</td>
						</tr>
						<tr>
							<th>성명(영문)</th>
							<td>Dddd</td>
						</tr>
						<tr>
							<th scope="row">아이디</th>
							<td>ㅇㅇㅇ</td>
						</tr>
						<tr>
							<th>이메일</th>
							<td>
								<input type="email" value="">
								<select id="select-email" class="" onchange="emailSet('reg',this.value)">
									<option value="" selected="selected">직접입력</option>
									<option value="naver.com" title="naver.com">naver.com</option>
									<option value="hanmail.net" title="hanmail.net">hanmail.net</option>
									<option value="hotmail.com" title="hotmail.com">hotmail.com</option>
									<option value="nate.com" title="nate.com">nate.com</option>
									<option value="yahoo.co.kr" title="yahoo.co.kr">yahoo.co.kr</option>
									<option value="empas.com" title="empas.com">empas.com</option>
									<option value="dreamwiz.com" title="dreamwiz.com">dreamwiz.com</option>
									<option value="freechal.com" title="freechal.com">freechal.com</option>
									<option value="lycos.co.kr" title="lycos.co.kr">lycos.co.kr</option>
									<option value="korea.com" title="korea.com">korea.com</option>
									<option value="gmail.com" title="gmail.com">gmail.com</option>
									<option value="hanmir.com" title="hanmir.com">hanmir.com</option>
									<option value="paran.com" title="paran.com">paran.com</option>
								</select>
								<span class="emailConfirm" style="margin-left: 10px;">
									<a href="#none" onclick=""><img src="/resources/images/mypage/emailConfirm.gif"></a>
								</span>
							</td>
						</tr>
						<tr class="last">
							<th>휴대전화</th>
							<td><input type="text" value=""></td>
						</tr>
					</tbody>
				</table>
			</div>
			</form>
			<div id="div-btn">
				<a href="" id="btn1">변경</a>
				<a href="" id="btn2">취소</a>
			</div>
		</div>
	</div>
	
</div>
<%@ include file="../common/footer.jsp" %>
</body>
<script type="text/javascript">
	
</script>
</html>
