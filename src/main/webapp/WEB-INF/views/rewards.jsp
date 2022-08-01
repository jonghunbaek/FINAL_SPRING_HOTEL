<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="common/tags.jsp" %>
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
	#container {padding-top: 65px; width: 1200px; height:1292px; margin: auto; padding-left: 0px; padding-right: 0px;}
	h3 {font-family: 'Nanum Myeongjo', serif; color: rgb(133, 111, 86);}
	#h5 {font-size: 15px; border-bottom: 3px; border-color: black; margin-top: 30px; margin-bottom: 30px;}
	#div-sidebar {float: left; width: 264px; height: 430px; background-color: rgb(241, 227, 196); margin: auto; padding: 23px; text-align: left;}
	#div-sidebar ul {padding: 0px;}
	#list {margin-top: 25px; text-align: left;}
	#list li {margin-top:10px; text-align: left; font-size: 13px;}
	#div-sidebar span {color: rgb(99, 62, 16); font-weight: bold;}
	#div-sidebar a {display: block;}
	#menu-list {border-bottom: 1px; border-color: black; border-bottom-style: dotted; padding-bottom: 5px;}
	#div-contents {float: right; margin: auto; width: 866px; height: 1292px;}
	
</style>
<title>Spring Hotel</title>
</head>
<body>
<%@ include file="common/nav.jsp" %>
<div class="container-fluid" id="container">
	<div id="div-sidebar">
		<h3 class="fs-7 border-dark border-bottom border-5 pb-3">스프링 리워즈</h3>
		<ul class="menu">
			<li id="list"><a href="#" onclick="benefits()"><span>회원특전</span></a></li>
			<li id="list"><a href="#" onclick="points()"><span>포인트 안내</span></a></li>
			<li id="list"><span id="menu-list">회원전용 프로모션</span>
				<ul>
					<li><a href="#" onclick="roomPackage()">객실 패키지</a></li>
					<li><a href="#" onclick="events()">이벤트</a></li>
				</ul>
			</li>
			<li id="list"><span id="menu-list">스프링리워즈 문의</span>
				<ul>
					<li><a href="#" onclick="faq()">FAQ</a></li>
					<li><a href="#" onclick="contact()">문의하기</a></li>
				</ul>
			</li>
		</ul>
	</div>
		
	<div id="div-contents">
		<div id="div-content1" style="display:none">
			<h3 class="fs-7 border-dark border-bottom border-5 pb-3">회원 특전</h3>
			<br>
			<div>
				<img src="resources/images/rewards/benefits_tit2.gif">
			</div>
			<div>
				<img src="resources/images/rewards/benefitsInfo.gif">
			</div>
		</div>
		<div id="div-content2" style="display:none">
			<h3 class="fs-7 border-dark border-bottom border-5 pb-3">포인트 안내</h3>
			<br>
			<div class="mb-3">
				<img src="resources/images/rewards/newEarn_text01.gif">
			</div>
			<div class="mb-3">
				<img src="resources/images/rewards/newEarn_text02.gif">
			</div>
			<div class="mb-3">
				<img src="resources/images/rewards/newEarn_text03.gif">
			</div>
		</div>
		<div id="div-content3" style="display:block">
			<h3 class="fs-7 border-dark border-bottom border-5 pb-3">객실패키지</h3>
			<br>
			<div>
			
			</div>
		</div>
		<div id="div-content4" style="display:none">
			<h3 class="fs-7 border-dark border-bottom border-5 pb-3">이벤트</h3>
			<br>
			<div>
			
			</div>
		</div>
		<div id="div-content5" style="display:none;">
			<h3 class="fs-7 border-dark border-bottom border-5 pb-3">FAQ</h3>
			<br>
			<div>
				<img src="resources/images/rewards/contactText02.gif">
			</div>
			<div id="h5">
				<h5>자주하는 질문</h5>
			</div>
		</div>
		
	</div>
</div>
<%@ include file="common/footer.jsp" %>
</body>
<script type="text/javascript">
	//사이드바 메뉴 전환
	function benefits() {
		document.querySelector('#div-content1').style.display = "block";
		document.querySelector('#div-content2').style.display = "none";
		document.querySelector('#div-content3').style.display = "none";
		document.querySelector('#div-content4').style.display = "none";
		document.querySelector('#div-content5').style.display = "none";
		document.querySelector('#div-contents').style.height = "1292px";
		document.querySelector('#container').style.height = "1292px";
	}
	function points() {
		document.querySelector('#div-content1').style.display = "none";
		document.querySelector('#div-content2').style.display = "block";
		document.querySelector('#div-content3').style.display = "none";
		document.querySelector('#div-content4').style.display = "none";
		document.querySelector('#div-content5').style.display = "none";
		document.querySelector('#div-contents').style.height = "900px";
		document.querySelector('#container').style.height = "900px";
	}
	function roomPackage() {
		document.querySelector('#div-content1').style.display = "none";
		document.querySelector('#div-content2').style.display = "none";
		document.querySelector('#div-content3').style.display = "block";
		document.querySelector('#div-content4').style.display = "none";
		document.querySelector('#div-content5').style.display = "none";
		document.querySelector('#div-contents').style.height = "900px";
		document.querySelector('#container').style.height = "900px";
	}
	function events() {
		document.querySelector('#div-content1').style.display = "none";
		document.querySelector('#div-content2').style.display = "none";
		document.querySelector('#div-content3').style.display = "none";
		document.querySelector('#div-content4').style.display = "block";
		document.querySelector('#div-content5').style.display = "none";
		document.querySelector('#div-contents').style.height = "900px";
		document.querySelector('#container').style.height = "900px";
	}
	function faq() {
		document.querySelector('#div-content1').style.display = "none";
		document.querySelector('#div-content2').style.display = "none";
		document.querySelector('#div-content3').style.display = "none";
		document.querySelector('#div-content4').style.display = "none";
		document.querySelector('#div-content5').style.display = "block";
		document.querySelector('#div-contents').style.height = "900px";
		document.querySelector('#container').style.height = "900px";
	}
	function contact() {
		location.href = "/contact";
	}
</script>
</html>