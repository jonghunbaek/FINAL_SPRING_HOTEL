<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/tags.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.3/font/bootstrap-icons.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<style>
.col-6 img {
    width: 500px;
    height: 300px;
}
.tit {
	margin-bottom: 20px;
}
.subTit {
	margin-bottom: 20px;
}
.bnt-rest-info {
	font-size: 80%;
	color: red;
	margin-bottom: 50px;
}
.info{
	margin-top:30px;
	font-size: 50%;
}
</style>
<title>Spring Hotel</title>
</head>
<body>
<c:set var="menu" value="home"/>
<%@ include file="../common/nav.jsp" %>
<div class="container-fluid" id="container">
	<div class="row border-bottom p-5" >
		<div class="col text-center">
			<h4>다이닝 예약</h4>
		</div>
	</div>
		<div class="row p-4 border-bottom">
			<div class="col-6">
			<form id="form-select" method="get">
				<label class="form-label">호텔 선택</label>
				<div>
					<c:forEach var="location" items="${locations }">
					<input type="radio" class="btn-check" name="hotel" id="hotel-${location.no }" value="${location.no }" autocomplete="off">
					<label class="btn btn-outline-secondary" for="hotel-${location.no }">${location.name }신라호텔</label>
					</c:forEach>
				</div>
			</form>
			</div>
			<div class="col-6">
			<form id="form-dining-select" method="get" action="step2">
				<div class="row">
					<label class="form-label">다이닝 선택</label>
					<div class="col-8">
						<select class="form-select form-select-sm" name="dining" id="dining-select">
							<option selected>다이닝선택</option>
						</select>
					</div>
					<div class="col-4">
					    <button type="submit" class="btn btn-secondary btn-sm">Confirm identity</button>
					</div>
				</div>
			</form>
			</div>
		</div>
	<div class="row mb-3" id="hotel-info">
		<div class="col-12">
			<h3 class="text-center" style="margin: 100px;">예약을 원하시는 호텔, 다이닝을 선택해주세요.</h3>
		</div>
	</div>
</div>
<%@ include file="../common/footer.jsp" %>
<script type="text/javascript">
$(function() {
	
	$(":radio[name=hotel]").change(function() {
		searchHotel();
	})
	
	$("select[name=dining]").change(function() {
		changeHotelInfo();
	})
	
	function searchHotel() {
		let queryString = $("#form-select").serialize();
		let $diningSelect = $("#dining-select").empty();
		
		console.log(queryString);
		
		$.getJSON("/dining/search", queryString, function(dinings){
			if(dinings.length == 0) {
				let content = '';
				$diningSelect.append(content);
			
				
			} else {
				$.each(dinings, function(index, dining) {
					content = '<option value="' + dining.no + '"> '+ dining.name + '</option>';
					$diningSelect.append(content);
				})
			}
		})
		
	}
	
	function changeHotelInfo() {
		let queryString = $("#form-dining-select").serialize();
		let $hotelInfo = $("#hotel-info").empty();
		
		console.log(queryString);
		
		$.getJSON("/dining/info", queryString, function(dining) {
			if(dining == null) {
				let content = `
					<div class="col-12">
						<h3 class="text-center" style="margin: 100px;">예약을 원하시는 호텔, 다이닝을 선택해주세요.</h3>
					</div>
				`
				$hotelInfo.append(content);
			} else {
				let content = '';
				content += '<div class="col-6">'
				content += '<img  src="../resources/images/dining/'+dining.imagename+'"></a>'
				content += '</div>'
				content += '<div class="col-6">'
				content += 	'<h4 class="tit" >'+dining.dnInfo.main+'</h4>'
				content += 	'<p class="subTit">'+dining.dnInfo.detail+'</p>'
				content += 	'<a href="step2" class="bnt-rest-info">레스토랑 상세보기 <i class="bi bi-plus-circle"></i></a>'
				content += 	'<div class="row">'
				content += 		'<div class="col-4 info" >'
				content += 			'<p><strong>문의</strong></p>'
				content += 			'<p><strong>위치</strong> </p>'
				content += 			'<p><strong>운영시간</strong></p>'
				content += 		'</div>'
				content += 		'<div class="col-8 info">'
				content += 			'<p>'+dining.dnInfo.location+'</p>'
				content += 			'<p>Lunch 12:00 ~ 14:30 / Dinner 17:30 ~ 21:30</p>'
				content += 			'<p>'+dining.dnInfo.tel+'</p>'
				content += 		'</div>'
				content += 	'</div>'
				content += 	'<p style="font-size: 70%; color: brown;">'+(dining.dnInfo.notice == null ? '' : dining.dnInfo.notice)+'</p>'
				content += '</div>'
				
				$hotelInfo.append(content);
			}
		})
	}
})
</script>
</body>
</html>