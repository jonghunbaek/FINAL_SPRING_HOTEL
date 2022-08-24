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
	margin-top: 100px;
}
.logo-inner {
  width : 200px;
  height : 100px;
  margin: auto;
}
.logo-inner img { width: 140px; height: 100px;}

.revInfo{margin:5px; margin-top:50px; padding-bottom:20px; padding-top: 30px; border-bottom: solid 6px #D5D5D5;  border-top: solid 2px brown; }

.option-container{margin-top: 30px; border: solid 1px #D5D5D5;}

.option-container .title {background: #EAEAEA; padding:10px;}

.option-container .title strong { margin:20px;}

.customer-information .left{ border-right: solid 1px #D5D5D5;}

.customer-information > div{padding: 30px;}

.customer-information .left {border-right : solid 1px #D5D5D5;}

.customer-information .row p{font-size: 80%;}

select[name=nameTitle] {width:130px;}

.important {color: red;}

input[name=name] {width: 230px; height: 70%;}

input[name=email] {width: 365px; height: 70%;}

input[name=tel] {width: 280px; height: 70%;}

#btn-double-check{width: 80px; height: 25px;}

#alert-double-check{padding-top: 20px;}

select[name=cardSort] {width:365px; height:70%;}

#card-number input {width: 83px; height:70%;}

#expiration-date select {width:180px; height:70%;}

#alert-card p{font-size: 70%;}

#alert-card {padding-top: 20px;}

#notice-container{margin-top: 40px; border: solid 1px #D5D5D5;}

#notice-title{background: #EAEAEA; padding:10px; border-bottom:solid 1px #D5D5D5; }

#notice-title p{margin: 10px;}

#notice-text{padding: 30px;}

#notice-text li{margin-top: 10px; font-size: 70%;}

#notice-checkbox{padding:20px; background:  rgb(241, 227, 196); border-top: solid 1px #D5D5D5;}

#privacy-container{margin-top: 40px; border: solid 1px #D5D5D5;}

#privacy-title{background: #EAEAEA; padding:10px; border-bottom:solid 1px #D5D5D5; }

#privacy-title p{margin: 10px;}

#privacy-text{padding: 30px;}

#privacy-text p{overflow:auto; width:1100px; height: 100px; border:solid 1px #D5D5D5;}

#privacy-radio {margin-right: 30px; margin-bottom: 30px;}
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
			<h6><strong>${dining.name }</strong>&nbsp;&nbsp;&nbsp;${dining.location.name }스프링호텔<strong>&nbsp;&nbsp;&nbsp;&nbsp;${diningReservationForm.date }(${day})&nbsp;&nbsp;&nbsp;|
			&nbsp;&nbsp;&nbsp;${mealTime }&nbsp;&nbsp;&nbsp;&nbsp;${diningReservationForm.visitTime }&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;성인&nbsp;${diningReservationForm.adult }&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;
			어린이 ${diningReservationForm.child }&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;유아 ${diningReservationForm.baby }&nbsp;&nbsp;&nbsp;&nbsp;</strong></h6>
		</div>
		<div class="col-1">
			<span><a href="#"><img src="../resources/images/dining/btn_rsvclear.png"/></a></span>
		</div>
	</div>
	<div class="option-container">
		<form id="form-step4" method="post" action="reservation">
		<div class="title">
			<strong>정보입력</strong>
		</div>
		
		<div class="row customer-information">
			<c:if test="${not empty LOGIN_USER }">
				<div class="col-6 left">
				<p><strong>고객 정보</strong></p>
				<div class="row">
					<div class="col-3">
						<p>성명(국문)&nbsp;&nbsp;<span class="important">*</span></p>
					</div>
					<div class="col-9">
						<select name="nameTitle">
							<option selected>선택</option>
							<option value="Mr.">Mr.</option>
							<option value="Ms.">Ms.</option>
							<option value="Dr.">Dr.</option>
						</select>
						<input type="text" name="name" value="${LOGIN_USER.name }"/>
					</div>
				</div>
				<div class="row">
					<div class="col-3">
						<p>이메일 &nbsp;&nbsp;<span class="important">*</span></p>
					</div>
					<div class="col-9">
						<input type="email" value="${LOGIN_USER.email }" name="email" disabled/>
					</div>
				</div>
				<div class="row">
					<div class="col-3">
						<p>연락처(휴대전화) &nbsp;&nbsp;<span class="important">*</span></p>
					</div>
					<div class="col-9">
						<input type="text" name="tel" placeholder="-없이 숫자만 입력"/>
						<a href="#"><img id="btn-double-check" src="../resources/images/dining/btn-doubleCheck.png"/></a>
					</div>
				</div>
				<div class="row">
					<div class="col-3">
					</div>
					<div class="col-9" id="alert-double-check">
						<p>※ 동일한 날짜의 동일한 시간 대에 예약 내역을 확인하는 절차이며 중복된 예약 확인 시 예약이 제한될 수 있습니다.</p>
						<p>※ 월 기준 다중 예약은 가능하나 최대 예약 가능 횟수는 레스토랑에 따라 상이합니다.</p>
					</div>
				</div>
			</div>
			</c:if>
			<c:if test="${empty LOGIN_USER }">
			<div class="col-6 left">
				<p><strong>고객 정보</strong></p>
				<div class="row">
					<div class="col-3">
						<p>성명(국문)&nbsp;&nbsp;<span class="important">*</span></p>
					</div>
					<div class="col-9">
						<select name="nameTitle">
							<option selected>선택</option>
							<option value="Mr.">Mr.</option>
							<option value="Ms.">Ms.</option>
							<option value="Dr.">Dr.</option>
						</select>
						<input type="text" name="name"/>
					</div>
				</div>
				<div class="row">
					<div class="col-3">
						<p>이메일 &nbsp;&nbsp;<span class="important">*</span></p>
					</div>
					<div class="col-9">
						<input type="email" name="email"/>
					</div>
				</div>
				<div class="row">
					<div class="col-3">
						<p>연락처(휴대전화) &nbsp;&nbsp;<span class="important">*</span></p>
					</div>
					<div class="col-9">
						<input type="text" name="tel" placeholder="-없이 숫자만 입력"/>
						<a href="#"><img id="btn-double-check" src="../resources/images/dining/btn-doubleCheck.png"/></a>
					</div>
				</div>
				<div class="row">
					<div class="col-3">
					</div>
					<div class="col-9" id="alert-double-check">
						<p>※ 동일한 날짜의 동일한 시간 대에 예약 내역을 확인하는 절차이며 중복된 예약 확인 시 예약이 제한될 수 있습니다.</p>
						<p>※ 월 기준 다중 예약은 가능하나 최대 예약 가능 횟수는 레스토랑에 따라 상이합니다.</p>
					</div>
				</div>
			</div>
			</c:if>
			<div class="col-6 right">
				<p><strong>신용카드 정보</strong></p>
				<div class="row">
					<div class="col-3">
						<p>카드종류&nbsp;&nbsp;<span class="important">*</span></p>
					</div>
					<div class="col-9">
						<select name="cardSort">
							<option selected>선택</option>
							<option value="AMEX">AMEX CARD</option>
							<option value="BC">BC CARD</option>
							<option value="CITYBANK">CITYBAN CARDK</option>
							<option value="DINERS">DINERS CARD</option>
							<option value="HYUNDAI">HYUNDA CARDI</option>
							<option value="JCB">JCB CARD</option>
							<option value="KEB">KEB CARD</option>
							<option value="KOOKMIN">KOOKMIN CARD</option>
							<option value="LOTTE">LOTTE CARD</option>
							<option value="MASTER">MASTER CARD</option>
						</select>
					</div>
				</div>
				<div class="row">
					<div class="col-3">
						<p>카드번호&nbsp;&nbsp;<span class="important">*</span></p>
					</div>
					<div class="col-9" id="card-number">
						<input type="text" name="cardNum1" maxlength='4' onkeyup="if(this.value.length == 4) this.form.cardNum2.focus();" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"/>-
						<input type="password" name="cardNum2"  maxlength='4' onkeyup="if(this.value.length == 4) this.form.cardNum3.focus();" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"/>-
						<input type="password" name="cardNum3" maxlength='4' onkeyup="if(this.value.length == 4) this.form.cardNum4.focus();" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"/>-
						<input type="password" name="cardNum4" maxlength='4' oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"/>
					</div>
				</div>
				<div class="row">
					<div class="col-3">
						<p>유효기간&nbsp;&nbsp;<span class="important">*</span></p>
					</div>
					<div class="col-9" id="expiration-date">
						<select name="cardExpiryMonth">
							<option selected>월</option>
							<option value="01">01</option>
							<option value="02">02</option>
							<option value="03">03</option>
							<option value="04">04</option>
							<option value="05">05</option>
							<option value="06">06</option>
							<option value="07">07</option>
							<option value="08">08</option>
							<option value="09">09</option>
							<option value="10">10</option>
							<option value="11">11</option>
							<option value="12">12</option>
						</select>
						<select name="cardExpiryYear">
							<option selected>년</option>
							<option value="2032">2032</option>
							<option value="2031">2031</option>
							<option value="2030">2030</option>
							<option value="2029">2029</option>
							<option value="2028">2028</option>
							<option value="2027">2027</option>
							<option value="2026">2026</option>
							<option value="2025">2025</option>
							<option value="2024">2024</option>
							<option value="2023">2023</option>
							<option value="2022">2022</option>
						</select>
					</div>
				</div>
				<div id="alert-card">
					<p>※ 신용카드 정보는 고객님의 &nbsp;<span class="important">당일 취소 또는 노쇼(No- Show)에 의한 개런티</span> 외에는 어떤 목적으로도 사용되지 않으며, 체크카드 및 일부 신용 카드의 경우 사용이 제한 될 수 있습니다.</p>
					<p>※ 온라인 예약 시 직접 결제가 이루어지지 않으며,최종 결제는 레스토랑에서 해주시기 바랍니다.</p>
					<p>※ 단, 당일 취소나 인원 변경을 하시는 경우 입력하신 신용카드로 예약 인원 식사 금액의 10%가 위약금으로 결제됩니다.</p>
				</div>
			</div>
		</div>
	</div>
	
	<div id="notice-container">
		<div id="notice-title">
			<p><strong>유의사항</strong><p>
		</div>
		<div id="notice-text">
			<ul>
				<li>방문 예정일 1일 전까지는 변경 및 취소가 가능합니다.</li>
				<li>방문 당일 취소 및 변경은 불가하며, 예약 인원 식사 금액의 10%가 위약금으로 부과됩니다.</li>
				<li>방문 당일 취소 및 변경 시, 전화 문의 바랍니다.</li>
				<li>예약 내역과 상이할 시, 이용이 제한되거나 변경될 수 있습니다.</li>
			</ul>
		</div>
		<div id="notice-checkbox" class="text-center">
			<input type="checkbox" id="notice-agree">
			<label for="notice-agree">유의사항을 모두 확인해주십시오.</label>
		</div>
	</div>
	
	<div id="privacy-container">
		<div id="privacy-title">
			<p><strong>유의사항</strong><p>
		</div>
		<div id="privacy-text" >
			<p> <span style="font-size:70%">스프링호텔 다이닝 예약과 관련하여 귀사가 아래와 같이 본인의 개인정보를 수집 및 이용하는데 동의합니다.</span><br/><br/>

				<strong>① 수집·이용 항목 | 성명, 이메일, 연락처(휴대전화), 예약정보, 결제정보(카드종류, 카드번호, 유효기간)<br/>
				② 수집·이용 목적 | 레스토랑 예약 및 고객 응대<br/>
				③ 보유·이용 기간 | 예약일로부터 1년간<br/>
				<br/></strong>
				<span style="font-size:70%">※위 사항에 대한 동의를 거부할 수 있으나, 이에 대한 동의가 없을 경우 예약 서비스 제공과 관련된 제반 절차 진행이 불가능 할 수 있음을 알려드립니다.</span>
			</p>
		</div>
		<div id="privacy-radio" class="text-end">
			<input class="form-check-input privacy" type="radio" id="privacy-agree">
 			<label class="form-check-label" for="privacy-none">동의함</label>
			<input class="form-check-input privacy" type="radio" id="privacy-opposite">
 			<label class="form-check-label" for="privacy-opposite">동의하지 않음</label>
		</div>
	</div>
	
	<div class="row" id="submit-button">
		<div class="col-7">
			<a href="step2"><img src="../resources/images/dining/이전.png"/></a>
		</div>
		<div class="col-5 text-end">
			<a href="#" id="btn-go-next"><img src="../resources/images/dining/btn-reservation-complete.png"/></a>
		</div>
	</div>
	</form>
</div>

<%@ include file="../common/footer.jsp" %>
<script type="text/javascript">
$(function(){
	
	//동의함 버튼을 누를시
	$("#privacy-agree").click(function(){
		if($("#privacy-opposite").prop('checked')) {
			$("#privacy-opposite").prop('checked', false)
		} 
	});
	
	//동의안함 버튼을 누를시
	$("#privacy-opposite").click(function(){
		if($("#privacy-agree").prop('checked')) {
			$("#privacy-agree").prop('checked', false)
		} 
	});
	
	//예약하기 버튼을 누를시
	$("#btn-go-next").click(function(){
		$("#form-step4").submit();
	});
	
	//폼 제출시
	$("#form-step4").submit(function(){
		if($("select[name=nameTitle]").val() === "선택") {
			alert ("성별을 확인해주시기바랍니다.");
			return false;
		}
		if($(":input[name=name]").val() === '') {
			alert("이름을 확인해주시기 바랍니다.");
			return false;
		}
		if($(":input[name=email]").val() === '') {
			alert("이메일을 확인해주시기 바랍니다.");
			return false;
		}
		if($(":input[name=tel]").val() === '') {
			alert("전화번호를 확인해주시기 바랍니다.");
			return false;
		}
		if($("select[name=cardSort]").val() === '선택') {
			alert("카드종류를 확인해주시기 바랍니다.");
			return false;
		}
		if($(":input[name=cardNum1]").val() === '' || $(":input[name=cardNum2]").val() === '' || $(":input[name=cardNum3]").val() === '' || $(":input[name=cardNum4]").val() === '' ) {
			alert("카드번호를 확인해주시기 바랍니다.");
			return false;
		}
		if($(":input[name=cardNum1]").val().length != '4' || $(":input[name=cardNum2]").val().length != '4' || $(":input[name=cardNum3]").val().length != '4' || $(":input[name=cardNum4]").val().length != '4' ) {
			alert("카드번호를 확인해주시기 바랍니다.");
			return false;
		}
		
		if($("select[name=cardExpiryMonth]").val() === '월' || $("select[name=cardExpiryYear]").val() === '년'){
			alert("카드유효기간을 확인해주시기 바랍니다.");
			return false;
		}
		
		if($("#privacy-opposite").prop('checked') || !($("#privacy-agree").prop('checked'))) {
			alert("개인정보수집에 동의해주셔야 합니다.")
			return false;
		}
		if((!$("#notice-agree").prop("checked"))){
			alert("유의사항 약관을 확인하시고 동의해주세요");
			return false;
		}
	})
	
	// 카드번호 숫자만 입력받게
	function checkNumber(event) {
	  if(event.key === '.' 
	     || event.key === '-'
	     || event.key >= 0 && event.key <= 9) {
	    return true;
	  }
	  
	  return false;
	}
			
})
</script>
</body>
</html>