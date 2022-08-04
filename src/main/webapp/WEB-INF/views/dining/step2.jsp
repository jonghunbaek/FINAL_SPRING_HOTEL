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
	<form id="form-select" method="get">
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
	

<!-- <div id="datepicker"></div> -->

</div>
<%@ include file="../common/footer.jsp" %>
<script type="text/javascript">
$(function() {
	
	$("#datepicker").datepicker({
	    dateFormat: "yy-mm-dd", 
	    showAnim: "slide",
	    currentText: '오늘',
	    showMonthAfterYear: true ,
	    dayNamesMin: ['월', '화', '수', '목', '금', '토', '일'], 
	    monthNames : ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
	    monthNamesShort : ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월']
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
	});
	$('#increaseAdult').click(function(e){
		e.preventDefault();
		var stat = $('#adultScore').text();
		var num = parseInt(stat,10);
		num++;

		if(num>5){
			alert('더이상 늘릴수 없습니다.');
			num=5;
		}
		$('#adultScore').text(num);
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
	});
});
</script>
</body>
</html>