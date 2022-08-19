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
<div class="container-fluid " id="container">
<h1 class="text center">예약이완료 되었습니다</h1>
<p>${diningReservationForm.reservationNo }</p>
</div>

<%@ include file="../common/footer.jsp" %>
<script type="text/javascript">

</script>
</body>
</html>