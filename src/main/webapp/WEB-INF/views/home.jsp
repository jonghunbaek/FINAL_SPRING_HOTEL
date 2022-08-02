<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="common/tags.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<style>
	#container {padding: 0%; text-align: center;}
	#carouselExampleIndicators {margin-bottom: 100px;}
	#div-dining {width: 1200px; height: 60px; margin: auto;}
	#div-specialOffer {display: block; margin: auto; margin-top: 100px; margin-bottom: 150px; width: 1200px; height: 780px;}
	#specialOffer {width: 1200px;  height: 100px; padding: 0px;}
	#specialOffer img {width: 267px; height: 100px;}
	#plus {float: right; text-align: right; margin-bottom: 20px; padding:0px;}
	#plus img {width: 63px; height: 15px;}
	#specialOfferDetail {width: 1200px; height: auto; padding: 0px;}
	#specialOfferDetail1, #specialOfferDetail2 {padding: 0px; margin: 0 auto;}
	#div-rewards {background-color: rgb(246, 246, 246);}	
	#div-rewards-box {width: 1200px; height: 540px; padding-top: 50px; padding-bottom: 50px;  margin: auto;}
	#div-rewards h2 {margin-bottom: 30px; padding: 0px;}
	#div-rewards-detail ul {float: left; margin: auto;}
	#div-rewards-detail li {display: inline-block; margin: 30px;}
	#div-rewards-join>img {position: relative; left: 65px; margin-top: 40px; width: 211px; height: 135px;}
	#img-register img {position: relative; top: 70px; right: 105px;}
	#div-gallary {margin-top: 120px; margin-bottom: 100px;}
	#div-youtube {display: block; margin-top: 40px; }
	#div-youtube iframe {width: 1200px; height: 678px;}
	#div-newsLetter {
		background-color: rgb(246, 246, 246); width: 1200px; height: 191px; display: block; margin: auto; margin-top: 50px;
		padding-top: 40px; padding-bottom: 40px; padding-left: 85px; padding-right: 85px;
	}
	#div-newsLetter h2 {float: left;}
	#div-email-box {float:right; width: 790px; height: 111px;}
	#div-input-box {float:left; width: 617px; height: 60px;}
	#input-button a {margin-left: 20px;}
	
</style>
<title>Spring Hotel</title>
</head>
<body>
<c:set var="menu" value="home"/>
<%@ include file="common/nav.jsp" %>
<div class="container-fluid" id="container">
	<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="true">
		<div class="carousel-indicators">
		  <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
		  <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
		  <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
		</div>
		<div class="carousel-inner">
		  <div class="carousel-item active">
			<a href=""><img src="resources/images/home/ROOM1.jpg" class="d-block w-100" alt="..."></a>
		  </div>
		  <div class="carousel-item">
			<a href=""><img src="resources/images/home/ROOM2.jpg" class="d-block w-100" alt="..."></a>
		  </div>
		  <div class="carousel-item">
			<a href=""><img src="resources/images/home/ROOM3.jpg" class="d-block w-100" alt="..."></a>
		  </div>
		</div>
		<button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
		  <span class="carousel-control-prev-icon" aria-hidden="true"></span>
		  <span class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
		  <span class="carousel-control-next-icon" aria-hidden="true"></span>
		  <span class="visually-hidden">Next</span>
		</button>
	</div>
	<div id="div-contents">
		<div id="div-dining">
			<a href=""><img src="resources/images/home/dining_reservation.jpeg" alt="다이닝 예약 바로가기"></a>
		</div>
		<div id="div-specialOffer">
			<div id="specialOffer">
				<h2><img src="resources/images/home/special_offer.png"></h2>
			</div>
			<div id="plus">
				<span><a href=""><img src="resources/images/home/plus.gif"></a></span>
			</div>
			<div class="row" id="specialOfferDetail">
				<div class="col-8" id="specialOfferDetail1">
					<div>
						<a href=""><img src="resources/images/home/special_detail_1.jpeg"></a>
					</div>
					<div class="ms-1 mt-3" style="width: 800px;">
						<div style="float: left;">
							<a href=""><img src="resources/images/home/special_detail_3.jpeg"></a>
						</div>
						<div style="position: relative; left: 8px;">
							<a href=""><img src="resources/images/home/special_detail_4.jpeg"></a>
						</div>
					</div>
				</div>
				<div class="col-4" id="specialOfferDetail2">
					<ul>
						<li><a href=""><img src="resources/images/home/special_detail_2.jpeg"></a></li>
						<li style="margin-top: 15px;"><a href=""><img src="resources/images/home/special_detail_5.jpeg"></a></li>
					</ul>
				</div>
			</div>
		</div>
		<div id="div-rewards">
			<div class="row" id="div-rewards-box">
				<div class="col">
					<h2><a href=""><img src="resources/images/home/rewards.gif"></a></h2>
					<div id="div-rewards-detail" style="display: inline-block;">
						<ul>
							<li><a href=""><img src="resources/images/home/rewards_detail_1.gif"></a></li>
							<li><a href=""><img src="resources/images/home/rewards_detail_2.gif"></a></li>
							<li><a href=""><img src="resources/images/home/rewards_detail_3.gif"></a></li>
						</ul>
					</div>
					<div>
						<img src="resources/images/home/rewards_detail_description1.png">
					</div>
					<div id="div-rewards-join">
						<img src="resources/images/home/rewards_join.png">
						<a id="img-register" href=""><img src="resources/images/home/rewards_register_button.gif"></a>
					</div>
				</div>
			</div>
		</div>
		
		<div class="row" id="div-gallary">
			<div class="col">
				<h2><img src="resources/images/home/gallary.png"></h2>
			</div>
			<div id="div-youtube">
				<iframe width="560" height="315" src="https://www.youtube.com/embed/81xxCLvADlU" title="YouTube video player" 
				frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
			</div>
		</div>
		<div id="div-newsLetter">
			<h2><img src="resources/images/home/newsLetter.png"></h2>
			<form role="form">
			<div id="div-email-box">
				<div id="div-input-box">
					<div id="div-input-email" class="input-group double-input">
						<input type="text" class="form-control" placeholder="이메일 주소를 입력해주세요" aria-label="Email">
						<span>@</span>
						<input type="text" class="form-control" placeholder="Email" aria-label="Email">
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
						<div id="input-button" class="input-append">
							<a><img src="resources/images/home/newsLetter_button.jpeg"></a>
						</div>
					</div>
				</div>
			</div>
			</form>
		</div>
	</div>
	
</div>
<%@ include file="common/footer.jsp" %>
</body>
</html>