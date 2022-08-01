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
	#div-sidebar {float: left; width: 264px; height: 442px; background-color: rgb(241, 227, 196); margin: auto; padding: 23px; text-align: left;}
	#div-sidebar ul {padding: 0px;}
	#div-sidebar li {color: rgb(99, 62, 16); font-weight: bold; margin-top: 25px; text-align: left;}
	#div-sidebar a {display: block;}
	#div-contents {float: right; margin: auto; width: 866px; height: 1292px;}
</style>
<title>Spring Hotel</title>
</head>
<body>
<%@ include file="common/nav.jsp" %>
<div class="container-fluid" id="container">
	<div id="div-sidebar">
		<h3 class="fs-7 border-dark border-bottom border-5 pb-3">호텔 소개</h3>
		<ul class="menu">
			<li><a href="#" onclick="overview()"><span>개요</span></a></li>
			<li><a href="#" onclick="seoul()"><span>서울스프링호텔</span></a></li>
			<li><a href="#" onclick="jeju()"><span>제주스프링호텔</span></a></li>
			<li><a href="#" onclick="monogram()"><span>스프링모노그램</span></a></li>
			<li><a href="#" onclick="stay()"><span>스프링스테이</span></a></li>
			<li><a href="#" onclick="awards()"><span>수상이력</span></a></li>
		</ul>
	</div>
	
	<div id="div-contents">
		<div id="div-content1" style="display:block">
			<h3 class="fs-7 border-dark border-bottom border-5 pb-3">호텔 개요</h3>
			<br>
			<div>
				<img src="resources/images/about/brandMainImg.jpeg">
			</div>
			<div>
				<img src="resources/images/about/brandText.jpeg">
			</div>
		</div>
		<div id="div-content2" style="display:none">
			<h3 class="fs-7 border-dark border-bottom border-5 pb-3">서울스프링호텔</h3>
			<br>
			<div>
				<img src="resources/images/about/seoulMainImg.jpeg">
			</div>
			<div>
				<img src="resources/images/about/seoulMainText.jpeg">
			</div>
		</div>
		<div id="div-content3" style="display:none">
			<h3 class="fs-7 border-dark border-bottom border-5 pb-3">제주스프링호텔</h3>
			<br>
			<div>
				<img src="resources/images/about/jejuMainImg.jpeg">
			</div>
			<div>
				<img src="resources/images/about/jejuMainText.jpeg">
			</div>
		</div>
		<div id="div-content4" style="display:none">
			<h3 class="fs-7 border-dark border-bottom border-5 pb-3">스프링모노그램</h3>
			<br>
			<div>
				<img src="resources/images/about/monogramMainImg.jpeg">
			</div>
			<div>
				<img src="resources/images/about/monogramMainText.jpeg">
			</div>
		</div>
		<div id="div-content5" style="display:none">
			<h3 class="fs-7 border-dark border-bottom border-5 pb-3">스프링스테이</h3>
			<br>
			<div>
				<img src="resources/images/about/shillaStayText.gif">
			</div>
		</div>
		<div id="div-content6" style="display:none">
			<h3 class="fs-7 border-dark border-bottom border-5 pb-3">수상이력</h3>
			<br>
			<div>
				<img src="resources/images/about/awardsMainImg.jpeg">
			</div>
			<div>
				<img src="resources/images/about/awardsTopText.gif">
			</div>
			<div>
				<img src="resources/images/about/awards2020.gif">
			</div>
			<div>
				<img src="resources/images/about/awards2019.gif">
			</div>
			<div>
				<img src="resources/images/about/awards2018.gif">
			</div>
		</div>
	</div>
	
</div>
<%@ include file="common/footer.jsp" %>
</body>
<script type="text/javascript">

	// 사이드바 메뉴 전환
	function overview() {
		document.querySelector('#div-content1').style.display = "block";
		document.querySelector('#div-content2').style.display = "none";
		document.querySelector('#div-content3').style.display = "none";
		document.querySelector('#div-content4').style.display = "none";
		document.querySelector('#div-content5').style.display = "none";
		document.querySelector('#div-content6').style.display = "none";
		document.querySelector('#div-contents').style.height = "1292px";
		document.querySelector('#container').style.height = "1292px";
	}
	function seoul() {
		document.querySelector('#div-content1').style.display = "none";
		document.querySelector('#div-content2').style.display = "block";
		document.querySelector('#div-content3').style.display = "none";
		document.querySelector('#div-content4').style.display = "none";
		document.querySelector('#div-content5').style.display = "none";
		document.querySelector('#div-content6').style.display = "none";
		document.querySelector('#div-contents').style.height = "900px";
		document.querySelector('#container').style.height = "900px";
	}
	function jeju() {
		document.querySelector('#div-content1').style.display = "none";
		document.querySelector('#div-content2').style.display = "none";
		document.querySelector('#div-content3').style.display = "block";
		document.querySelector('#div-content4').style.display = "none";
		document.querySelector('#div-content5').style.display = "none";
		document.querySelector('#div-content6').style.display = "none";
		document.querySelector('#div-contents').style.height = "900px";
		document.querySelector('#container').style.height = "900px";
	}
	function monogram() {
		document.querySelector('#div-content1').style.display = "none";
		document.querySelector('#div-content2').style.display = "none";
		document.querySelector('#div-content3').style.display = "none";
		document.querySelector('#div-content4').style.display = "block";
		document.querySelector('#div-content5').style.display = "none";
		document.querySelector('#div-content6').style.display = "none";
		document.querySelector('#div-contents').style.height = "900px";
		document.querySelector('#container').style.height = "900px";
	}
	function stay() {
		document.querySelector('#div-content1').style.display = "none";
		document.querySelector('#div-content2').style.display = "none";
		document.querySelector('#div-content3').style.display = "none";
		document.querySelector('#div-content4').style.display = "none";
		document.querySelector('#div-content5').style.display = "block";
		document.querySelector('#div-content6').style.display = "none";
		document.querySelector('#div-contents').style.height = "900px";
		document.querySelector('#container').style.height = "900px";
	}
	function awards() {
		document.querySelector('#div-content1').style.display = "none";
		document.querySelector('#div-content2').style.display = "none";
		document.querySelector('#div-content3').style.display = "none";
		document.querySelector('#div-content4').style.display = "none";
		document.querySelector('#div-content5').style.display = "none";
		document.querySelector('#div-content6').style.display = "block";
		document.querySelector('#div-contents').style.height = "900px";
		document.querySelector('#container').style.height = "900px";
	}
	
	
</script>
</html>
