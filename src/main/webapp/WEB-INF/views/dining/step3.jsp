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
#container {width: 1200px; margin: 0 auto;}
.logo-outer { 
	margin-top: 100px; border-bottom: solid 2px brown; 
}
.logo-inner {
  width : 200px;
  height : 100px;
  margin: auto;
}
.logo-inner img { width: 140px; height: 100px;}

.revInfo{ margin:5px; margin-top:25px; padding-bottom:20px; border-bottom: solid 6px #D5D5D5;}

.option-container{margin-top: 30px; border: solid 1px #D5D5D5;}

.option-container .title {background: #EAEAEA; padding:10px;}

.option-container .title strong { margin:20px;}

.allergy-option .btn{width: 200px;}

.allergy-option .left{ border-right: solid 1px #D5D5D5;}

.option-container .row{ padding: 30px;}

#allergy-alert {font-size : 70%; margin-top: 15px; margin-bottom: 15px;}

#allergy-select div{ margin-bottom: 15px;}

#etc-select-text { width: 300px;}

#reqest-alert{font-size: 50%; margin-bottom:30px;}

.allergy-option .right{padding-left: 20px;}

#reservation-card{width: 550px; height:230px;}

#card-alert {font-size:70%; margin-bottom: 30px; margin-top: 10px;}

#submit-button img {width: 150px; height: 50px;}
</style>
<title>Spring Hotel</title>
</head>
<body>
<c:set var="menu" value="home"/>
<%@ include file="../common/nav.jsp" %>
<div class="container-fluid" id="container">
	<div class="logo-outer">
		<div class="logo-inner">
			<img src="../resources/images/dining/choice_option.png"/>
		</div>
	</div>
	<div class="row revInfo">
		<div class="col-11">
			<h6><strong>${dining.name }</strong>&nbsp;&nbsp;&nbsp;${location.name}신라호텔<strong>&nbsp;&nbsp;&nbsp;&nbsp;${date }(${day })&nbsp;&nbsp;&nbsp;|
			&nbsp;&nbsp;&nbsp;${mealTime }&nbsp;&nbsp;&nbsp;&nbsp;${visitTime }&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;성인&nbsp;${adult == 0 ? '' : adult }&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;
			어린이 ${child }&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;유아 ${baby }&nbsp;&nbsp;&nbsp;&nbsp;</strong></h6>
		</div>
		<div class="col-1">
			<span><a href="#"><img src="../resources/images/dining/btn_rsvclear.png"/></a></span>
		</div>
	</div>
	<div class="option-container">
		<form id="form-step3" method="post" action="step4">
		<div class="title">
			<strong>옵션 사항</strong>
		</div>
		<div class="row allergy-option">
			<div class="col-6 left">
				<p><strong>식품 알레르기 유무 선택</strong></p>
				<input type="radio" class="btn-check" name="isAllergy" id="allergy-none" value="N" autocomplete="off" checked>
				<label class="btn btn-outline-secondary" for="allergy-none">없음</label>
				<input type="radio" class="btn-check" name="isAllergy" id="allergy-yes" value="Y" autocomplete="off">
				<label class="btn btn-outline-secondary" for="allergy-yes">있음</label>
				<p id="allergy-alert">※식품 알레르기가 있는 경우 '있음'을 선택 후, 세부 항목을 체크해 주시기 바랍니다.</p>
				<div id="allergy-select" class="form-check d-none">
					<c:forEach var="allergy" items="${allergies }">
						<div>
							<input type="checkbox" name="allergyNos" value="${allergy.no }" >
							<label for="${allergy.no }">${allergy.type }</label>
						</div>
					</c:forEach>
					<div>
						<input type="checkbox" id="etc-check">
						<label for="etc">기타</label>
						<input type="text" id="etc-select-text"name="etcAllergy" placeholder="기타 사항을 입력해 주세요." disabled/>
					</div>
				</div>
			</div>
			<div class="col-6 right">
				<p><strong>추가 요청사항</strong></p>
				<textarea rows="3" cols="70" name="request"></textarea>
				<p id="reqest-alert">※요청사항은 레스토랑 사정에 따라 응대가 어려울수 있으며, 추가 문의는 전화주시기 바랍니다.</p>
				<p><strong>할인카드 안내</strong></p>
				<img id="reservation-card" src="../resources/images/dining/reservationCard.png"/>
				<p id="card-alert">※소지하신 카드종류에 따라 할인 적용여부가 상이할 수 있습니다.</p>
			</div>
		</div>
	</div>
	<div class="row" id="submit-button">
		<div class="col-7">
			<a href="step2"><img src="../resources/images/dining/이전.png"/></a>
		</div>
		<div class="col-5 text-end">
			<a href="#" id="btn-go-next"><img src="../resources/images/dining/btn-next.png"/></a>
		</div>
	</div>
	</form>
</div>

<%@ include file="../common/footer.jsp" %>
<script type="text/javascript">
$(function(){
	$btnIsAllergy = $(":input[name=isAllergy]");
	
	// 기타 버튼 클릭시 텍스트 활성화
	$("#etc-check").change(function(){
		if ($(this).prop('checked')) {
			$(":input[name=etc]").prop('disabled', false);
		} else {
			$(":input[name=etc]").prop('disabled', true);
		}
		
	})
	
	// allergy check버튼 기능
	$btnIsAllergy.change(function(){
		//console.log($("#allergy-yes:checked"));
		if($("#allergy-yes:checked").length === 0){
			$("#allergy-select").addClass('d-none');
		} else {
			$("#allergy-select").removeClass('d-none');
		}
	})
	
	$("#btn-go-next").on("click", function() {
		$("#form-step3").submit();
	})
	
	
})
</script>
</body>
</html>