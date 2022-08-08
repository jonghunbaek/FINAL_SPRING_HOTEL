<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/tags.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />  
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>  
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.3/font/bootstrap-icons.css">
<title>스프링 온라인</title>
<style>
*{font-family: 돋움, sans-serif, Arial}
#container {width: 1000px; margin: 0 auto;}
.logo-outer { 
	margin-top: 100px; border-bottom: solid 2px brown; 
}
.logo-inner {
  width : 200px;
  height : 100px;
  margin: auto;
}
.inner-div img { width: 160px; height: 80px;}

#div-hotel-name{margin-top: 20px; border-bottom: solid 5px #D5D5D5;}

#must-require {text-align: right; color: red; margin-top: 10px; font-size: 5px; margin-bottom:0px;}

#form-select .btn-outline-secondary{width: 150px;}

#seat-notice {font-size: 60%; margin-top: 20px;}

#select-people a,span{margin-right:15px;}

#select-people .bi{border: 1px solid brown; color:brown;}

#date-choice img{width: 100px; height: 30px;}

#visit-div{border: 1px solid grey;}

#datepicker{margin-left: 50px; margin-bottom: 50px;}

#visit-div .col-6{border-left: 1px solid grey;}

#date-choice-text, #time-choice-text{margin: 10px; margin-bottom: 30px;}

#meal-type-select {margin-bottom: 30px;}

#gap {margin-top: 50px; border-bottom: solid 3px brown; }

#submit-button {margin-top: 50px;}

#submit-button img {width: 150px; height: 50px;}
</style>
</head>
<body>
<c:set var="menu" value="home"/>
<%@ include file="../common/nav.jsp" %>
<div class="container-fluid" id="container">
	<div class="logo-outer">
		<div class="logo-inner">
			<img src="../resources/images/dining/dining_rsv_step1_on.jpg"/>
		</div>
	</div>
	<div id="div-hotel-name" class=row>
		<div class="col-11">
			<p><strong>더파크뷰</strong>(제주신라호텔)</p>
		</div>
		<div class="col-1">
			<a href="#"><img src="../resources/images/dining/btn_rsvclear.png"/></a>
		</div>
	</div>
	<div id="must-require">
		<p>표시 필수 입력사항</p>
	</div>
	<form id="form-select" method="get" action="step3">
		<div id="seat-choice">
			<p><strong>좌석 유형 선택</strong></p>
		</div>
		<div>
			<input type="radio" class="btn-check" name="seat" id="table-select" value="table" autocomplete="off">
			<label class="btn btn-outline-secondary" for="table-select">테이블</label>
			<input type="radio" class="btn-check" name="seat" id="room-select" value="room" autocomplete="off">
			<label class="btn btn-outline-secondary" for="room-select">룸</label>
		</div>
		<div id="seat-notice">
			<ul>
				<li>성인과 소인 동반 시, 최대 4명까지 이용 가능합니다.</li>
				<li>5명 이상 예약을 원하시는 경우 전화 문의 부탁드립니다.</li>
				<li>사회적 거리두기에 발맞추어 이용 인원이 제한될 수 있으니 양해 부탁드립니다.</li>
			</ul>
		</div>
		<div id="select-people">
			<div class="row">
				<div class="col-2">
					<p><strong>인원선택</strong></p>
				</div>
				<div class="col-1">
					<p>성인</p>
				</div>
				<div class="col-2" id="adult-people">
    				<a href="#" id="decreaseAdult"><i class="bi bi-dash-lg"></i></a>
					<span id="adultScore">0</span>
					<a href="#" id="increaseAdult"><i class="bi bi-plus-lg"></i></a>
					<input type="hidden" name="adult"/>
				</div>
				<div class="col-1">
					<p>어린이</p>
				</div>
				<div class="col-2" id="child-people">
    				<a href="#" id="decreaseChild"><i class="bi bi-dash-lg"></i></a>
					<span id="childScore">0</span>
					<a href="#" id="increaseChild"><i class="bi bi-plus-lg"></i></a>
					<input type="hidden" name="child"/>
				</div>
					<div class="col-1">
					<p>유아</p>
				</div>
				<div class="col-2" id="baby-people">
    				<a href="#" id="decreaseBaby"><i class="bi bi-dash-lg"></i></a>
					<span id="babyScore">0</span>
					<a href="#" id="increaseBaby"><i class="bi bi-plus-lg"></i></a>
					<input type="hidden" name="baby"/>
				</div>
				<div class="col-1" id="date-choice">
					<a href="#"><img src="../resources/images/dining/날짜선택.png"></a>
				</div>
			</div>
		</div>
		<div class="row" id="visit-div">
			<div class="col-6">
				<div id="date-choice-text">
					<p><strong>날짜선택</strong></p>
				</div>
				<div id="datepicker"></div>
				<input type="hidden" id="date" name="date"/>
			</div>
			<div class="col-6">
				<div id="time-choice-text">
					<p><strong>시간선택</strong></p>
				</div>
				<div id="meal-type-select">
					<input type="radio" class="btn-check" name="mealTime" id="lunch-select" value="lunch" autocomplete="off">
					<label class="btn btn-outline-secondary" for="lunch-select">런치</label>
					<input type="radio" class="btn-check" name="mealTime" id="dinner-select" value="dinner" autocomplete="off">
					<label class="btn btn-outline-secondary" for="dinner-select">디너</label>
				</div>
				<div>
					<select class="form-select form-select-sm" name="visitTime" id="time-select">
						<option selected>방문예정시간을 선택해주세요.</option>
						<option value="18:00">18:00</option>
						<option value="18:00">18:00</option>
						<option value="18:00">18:00</option>
					</select>
				</div>
			</div>
		</div>
		<div id="gap">
		</div>
		<div class="row" id="submit-button">
			<div class="col-7">
				<a href="step1"><img src="../resources/images/dining/이전.png"/></a>
			</div>
			<div class="col-5 text-end">
				<a href="#" id="btn-member-rev"><img src="../resources/images/dining/회원예약.png"/></a>
				<a href="#" id="btn-non-member-rev"><img src="../resources/images/dining/비회원예약.png"/></a>
			</div>
		</div>
	</form>
	


</div>
<%@ include file="../common/footer.jsp" %>
<script type="text/javascript">
$(function() {
	$("#btn-non-member-rev").click(function(){
		$("#form-select").submit()
	});	
	
	$("#form-select").submit(function(){
		let seatValue = $(":input[name=seat]").val();
		console.log(seatValue);
		if (seatValue === "") {
			alert("좌석유형을 골라주세요");
			return false;
		}
	});
	
	$("#datepicker").datepicker({
		inline: true,
	    dateFormat: "yy-mm-dd", 
	    showAnim: "slide",
	    currentText: '오늘',
	    showMonthAfterYear: true ,
	    dayNamesMin: ['월', '화', '수', '목', '금', '토', '일'], 
	    monthNames : ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
	    monthNamesShort : ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
	    onSelect: function (date) {
	        $("#date").val(date)
	    }
		
	});
	
	$('#decreaseAdult').click(function(){
		let seatValue = $(":input[name=seat]").val();
		console.log(seatValue);
		if (seatValue === "") {
			alert("좌석유형을 골라주세요");
			return false;
		}
	});
	
	$('#decreaseAdult').click(function(e){
		e.preventDefault();
		var stat = $('#adultScore').text();
		var num = parseInt(stat,10);
		num--;
		if(num<=-1){
			num =0;
		}
		$('#adultScore').text(num);
		$(":input[name=adult]").val(num);
	});
	$('#increaseAdult').click(function(e){
		let seatValue = $.trim( $(":input[name=seat]").val() );
		if (seatValue === "") {
			alert("좌석유형을 골라주세요");
			return false;
		}
		e.preventDefault();
		var stat = $('#adultScore').text();
		var num = parseInt(stat,10);
		num++;

		if(num>5){
			alert('더이상 늘릴수 없습니다.');
			num=5;
		}
		$('#adultScore').text(num);
		$(":input[name=adult]").val(num);
	});
	$('#decreaseChild').click(function(e){
		e.preventDefault();
		var stat = $('#childScore').text();
		var num = parseInt(stat,10);
		num--;
		if(num<=-1){
			num =0;
		}
		$('#childScore').text(num);
		$(":input[name=child]").val(num);
	});
	$('#increaseChild').click(function(e){
		e.preventDefault();
		var stat = $('#childScore').text();
		var num = parseInt(stat,10);
		num++;

		if(num>5){
			alert('더이상 늘릴수 없습니다.');
			num=5;
		}
		$('#childScore').text(num);
		$(":input[name=child]").val(num);
	});
	$('#decreaseBaby').click(function(e){
		e.preventDefault();
		var stat = $('#babyScore').text();
		var num = parseInt(stat,10);
		num--;
		if(num<=-1){
			num =0;
		}
		$('#babyScore').text(num);
		$(":input[name=baby]").val(num);
	});
	$('#increaseBaby').click(function(e){
		e.preventDefault();
		var stat = $('#babyScore').text();
		var num = parseInt(stat,10);
		num++;

		if(num>5){
			alert('더이상 늘릴수 없습니다.');
			num=5;
		}
		$('#babyScore').text(num);
		$(":input[name=baby]").val(num);
	});
});
</script>
</body>
</html>