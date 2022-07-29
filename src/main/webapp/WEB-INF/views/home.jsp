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
			<img src="resources/images/ROOM1.jpg" class="d-block w-100" alt="...">
		  </div>
		  <div class="carousel-item">
			<img src="resources/images/ROOM2.jpg" class="d-block w-100" alt="...">
		  </div>
		  <div class="carousel-item">
			<img src="resources/images/ROOM3.jpg" class="d-block w-100" alt="...">
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
	<div class="row" id="div-dining">
		<a href=""><img src="resources/images/dining_reservation.png" alt="다이닝 예약 바로가기"></a>
	</div>
	<div class="row" id="div-specialOffer">
		<div class="col" id="specialOffer">
			<span><img src="resources/images/special_offer.png"></span>
		</div>
		<div class="col" id="plus">
			<span><a href=""><img src="resources/images/plus.png"></a></span>
		</div>
		<div class="row" id="specialOfferDetail">
			<div class="col">
			</div>
		</div>
	</div>
</div>
<%@ include file="common/footer.jsp" %>
</body>
</html>