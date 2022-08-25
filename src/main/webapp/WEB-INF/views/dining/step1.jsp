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
#container {width: 1300px; margin: 0 auto;}

#div-main-titUp{border-bottom:#94816b solid 2px;}

#div-main-tit h2{color:#a59582;}

#div-hotel-select{border-bottom:#f7f7f7 solid 5px;}

.tit {
	margin-bottom: 20px;
	font-size: 140%;
	font-weight: 800;
	color:#81725f;
}
.subTit {
	font-size: 100%;
	margin-bottom: 20px;
	font-weight: 500;
}
.bnt-rest-info {
	font-size: 100%;
	color: red;
	margin-bottom: 50px;
	font-weight:600;
}
.info{
	margin-top:30px;
	font-size: 80%;
	font-weight:600;
}
#modal-main-img img{
    width: 750px;
    height: 500px;
}
#modal-sub-img1 img{
    width: 400px;
    height: 700px;
}
#modal-sub-img2 img{
    width: 300px;
    height: 200px;
}
#btn-open-modal-detail{color:brown; margin-bottom: 100px;}

#form-select .btn-outline-secondary{ margin-right: 10px; margin-bottom: 10px;}

#dining-main-image {width: 550px; height:350px;}

.modal-main-img-div{width:600px; heigth:250px;}

#modal-main-img{width:600px; heigth:100px;}

#hotel-info {padding-top: 50px;}



</style>
<title>Spring Hotel</title>
</head>
<body>
<c:set var="menu" value="home"/>
<%@ include file="../common/nav.jsp" %>
<div class="container-fluid" id="container">
	<div id="div-main-titUp" class="row p-5" >
		<div id="div-main-tit" class="col text-center">
			<h2><strong>다이닝 예약</strong></h2>
		</div>
	</div>
		<div id="div-hotel-select" class="row p-4 ">
			<div class="col-6">
			<form id="form-select" method="get">
				<label class="form-label">호텔 선택</label>
				<div>
					<c:forEach var="location" items="${locations }">
					<input type="radio" class="btn-check" name="hotel" id="hotel-${location.no }" value="${location.no }" autocomplete="off"   >
					<label class="btn btn-outline-secondary" for="hotel-${location.no }">${location.name }스프링호텔</label>
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
					    <button type="submit" class="btn btn-secondary btn-sm">예약</button>
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

<div class="modal" id="modal-detail">
	<div class="modal-dialog modal-dialog-scrollable modal-lg">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title">레스토랑 상세보기</h4>
				<button type="button" class="btn-close" data-bs-dismiss="modal"></button>
			</div>
			<div class="modal-body">
				<div class="row modal-main-img-div">
					<div class="col" id="modal-main-img">
						<img src="../resources/images/dining/더파크뷰메인.jpg"/>
					</div>
				</div>
				<div class="row">
					<div class="col-7" id="modal-sub-img1">
						<img src="../resources/images/dining/아리아께1.png"/>
					</div>
					<div class="col-5" id="modal-sub-img2">
						<img src="../resources/images/dining/아리아께2.png"/>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<%@ include file="../common/footer.jsp" %>
<script type="text/javascript">
$(function() {
	
	let params = new URLSearchParams(document.location.search);
	let diningNo = params.get("diningNo");
	let hotelNo = '${hotel}'
	
	$(":radio[id=hotel-${hotel}]").prop('checked', true)

	/* $(":radio[id=hotel-${hotel}]").click(); */
	
	//상세창 모달
	let detailModal = new bootstrap.Modal(document.getElementById("modal-detail"));
	
	// json이후 추가된 버튼에서 상세정보 모달창 띄우기
	$("#container").on('click', "#btn-open-modal-detail", function() {
		
		let queryString = $("#form-dining-select").serialize();
		let $hotelInfo = $("#modal-detail").empty();
			
		$.getJSON("/dining/info", queryString, function(dining){
			
			let content = '';
			content +=	'<div class="modal-dialog modal-dialog-scrollable modal-lg">'
			content +=		'<div class="modal-content">'
			content +=			'<div class="modal-header">'
			content +=				'<h5 class="modal-title">레스토랑 상세보기</h4>'
			content +=				'<button type="button" class="btn-close" data-bs-dismiss="modal"></button>'
			content +=			'</div>'
			content +=			'<div class="modal-body">'
			content +=				'<div class="row modal-main-img-div">'
			content +=					'<div class="col" id="modal-main-img">'
			content +=						'<img src="../resources/images/dining/'+dining.imagename+'"/>'
			content +=					'</div>'
			content +=				'</div>'
			content +=				'<div class="row">'
			content +=					'<div class="col-7" id="modal-sub-img1">'
			content +=						'<img src="../resources/images/dining/'+dining.subImg1+'"/>'
			content +=					'</div>'
			content +=					'<div class="col-5" id="modal-sub-img2">'
			content +=						'<img src="../resources/images/dining/'+dining.subImg2+'"/>'
			content +=					'</div>'
			content +=				'</div>'
			content +=			'</div>'
			content +=		'</div>'
			content +=	'</div>'
			
			$hotelInfo.append(content);
			
		})
		detailModal.show();
	});
	
	$(":radio[name=hotel]").change(function() {
		searchHotel();
	})
	
	$("select[name=dining]").change(function() {
		changeHotelInfo();
	})
	
	function searchHotel() {
		let queryString = $("#form-select").serialize();
		let $diningSelect = $("#dining-select").empty();
		
		let $hotelInfo = $("#hotel-info").empty();
		
		//console.log(queryString);
		
		let hotelInfoContent = `
			<div class="col-12">
				<h3 class="text-center" style="margin: 100px;">예약을 원하시는 호텔, 다이닝을 선택해주세요.</h3>
			</div>
		`
		$hotelInfo.append(hotelInfoContent);
		$diningSelect.append('<option selected>다이닝선택</option>');
		
		$.getJSON("/dining/search", queryString, function(dinings){
			
			$.each(dinings, function(index, dining) {
				let content = '<option value="' + dining.no + '"> '+ dining.name + '</option>';
				$diningSelect.append(content);
			})
			
		})
		
	}
	
	function changeHotelInfo() {
		let queryString = $("#form-dining-select").serialize();
		let $hotelInfo = $("#hotel-info").empty();
		
		
		//console.log(queryString);
		
		$.getJSON("/dining/info", queryString, function(dining){
			if(dining == null) {
				let content = `
					<div class="col-12">
						<h3 class="text-center" style="margin: 100px;">예약을 원하시는 호텔, 다이닝을 선택해주세요.</h3>
					</div>
				`
				$hotelInfo.append(content);
			} else {
				let content = '';
				content += '<div class="col-6 text-center">'
				content += '<img id="dining-main-image" src="../resources/images/dining/'+dining.imagename+'"/>'
				content += '</div>'
				content += '<div class="col-6">'
				content += 	'<h4 class="tit" >'+dining.dnInfo.main+'</h4>'
				content += 	'<p class="subTit">'+dining.dnInfo.detail+'</p>'
				content += 	'<a href="#" id="btn-open-modal-detail">레스토랑 상세보기 <i class="bi bi-plus-circle"></i></a>'
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