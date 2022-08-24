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

#container {width: 1200px; margin: 0 auto;}

#div-login{ color:#8c5919; padding-bottom: 10px; margin-top: 80px; border-bottom:#432c10 solid 3px;}

#div-notice h3{margin-top: 50px; color:#592d39;}
#div-notice p{margin-top: 10px; color:#592d39; font-size:70%}

#div-form-login{width: 600px; margin-left:280px; margin-top:40px;}

#div-btn-choice-member img{ width:90%; height:100%; padding: 10px;}

#div-btn-choice-member {border-top: grey 1px solid;}

#img-login-member{margin-right: 50px; width:120px; height: 60px; margin-top:5px}

#img-login-non-member{margin-right: 50px; width:120px; height: 60px; margin-top:5px}

.input-field {width: 300px; margin-bottom: 5px; margin-left:70px;}

#field-input {margin-bottom: 10px;}

#div-btn-choice-member {background: #faf9f7;}

#div-form-member{background:#f1ebd6; padding-top:30px; }

#div-btn-member{border-right: grey 1px dotted; border-bottom: solid #aa9479 1px ;}

#div-btn-nonmember{border-bottom: solid #aa9479 5px ;}

#div-btn{margin-top: 10px;}

#div-btn img {margin-bottom: 20px;}

#div-form-member label{font-size: 70%;}

#btn-find-id {width: 180px; height: 30px;}

#btn-new-member{width:135px; height:30px}

#btn-find-password{width:130px; height: 30px;}

#div-form-nonmember{background:#f1ebd6; padding-top:30px; }

#field-input-nonmember .col-8{margin-bottom: 70px;}

input[name=select] {margin-left: 20px;}

#div-select-dining {margin-left: 60px; padding-left: 5px; margin-bottom:5px;}

.alert-danger{width:600px; margin-top:50px; margin-left:280px;}
</style>
</head>
<body>
<c:set var="menu" value="home"/>
<%@ include file="../common/nav.jsp" %>
<div class="container-fluid" id="container">
	<div id="div-login">
		<h1><strong>로그인</strong></h1>
	</div>
	<div id="div-notice" class="text-center">
		<h3>신라리워즈에 오신것을 환영합니다.</h3>
		<p>신라리워즈 번호와 비밀번호를 입력해 주시기 바랍니다.</p>
		<p>※신라리워즈 회원이 되시면 회원만을 위한 다양한 서비스와 혜택을 받으실 수 있습니다.</p>
	</div>
	<div id="div-form-login" class="text-center">
		<div id="div-btn-choice-member" class="row">
			<div id="div-btn-member" class="col-6">
				<a id="btn-member"href="#"><img src="../resources/images/dining/btn-member.png"></a>		
			</div>
			<div id="div-btn-nonmember" class="col-6">
				<a id="btn-nonmember" href="#"><img src="../resources/images/dining/btn-nonmember.png"></a>		
			</div>
		</div>
		<div id="div-form-member" class="d-none">
			<form id="form-member" method="post" action="/confirmRev">
			<div id="field-input" class="row">
				<div class="col-8">
					<input class="input-field" type="text" name="email" placeholder="스프링리워즈 아이디입력">
					<input class="input-field" type="password" name="password" placeholder="비밀번호 입력">
				</div>
				<div class="col-4 text-start">
					<a href="#"><img id="img-login-member" src="../resources/images/dining/btn-login.png"></a>
				</div>
			</div>
			<input type="checkbox"><label>신라리워즈번호 또는 아이디 저장</label>
			<div id="div-btn">
				<a href="#"><img id="btn-new-member" src="../resources/images/dining/btn-new-member.png"></a>
				<a href="#"><img id="btn-find-id" src="../resources/images/dining/btn-find-id.png"></a>
				<a href="#"><img id="btn-find-password" src="../resources/images/dining/btn-find-password.png"></a>
			</div>
			</form>
		</div>
		<div id="div-form-nonmember">
			<form id="form-nonmember" method="post" action="/dining/loginNonMember">
			<div id="div-select-dining" class="text-start">
				<input type="radio" for="room" ><label>객실</label>
				<input type="radio" for="dining" checked><label>다이닝</label>
			</div>
			<div id="field-input-nonmember" class="row">
				<div class="col-8">
					<input class="input-field" type="text" name="reservationNo" placeholder="예약번호">
					<input class="input-field" type="text" name="name" placeholder="이름">
				</div>
				<div class="col-4 text-start">
					<a href="#" id="btn-login-nonmember"><img id="img-login-non-member" src="../resources/images/dining/btn-login.png"></a>
				</div>
			</div>
			</form>
		</div>
	</div>
	<c:if test="${param.fail eq 'nonMemberInvalid'}">
	<div class="alert alert-danger text-center">
		<string>예약 조회 실패</string><br>
		예약번호 혹은 이름이 올바르지 않습니다.
	</div>
	</c:if>
</div>
<%@ include file="../common/footer.jsp" %>
<script type="text/javascript">
$(function(){
	$("#btn-nonmember").click();
	
	//회원버튼 클릭
	$("#btn-nonmember").click(function(){
		document.querySelector("#div-btn-nonmember").style.cssText = 'border-bottom: solid #aa9479 5px ;';
		document.querySelector("#div-btn-member").style.cssText = 'border-bottom: solid #aa9479 1px ;';
		$("#div-form-member").addClass('d-none');
		$("#div-form-nonmember").removeClass('d-none');
	})
	
	//비회원 버튼 클릭
	$("#btn-member").click(function(){
		document.querySelector("#div-btn-member").style.cssText = 'border-bottom: solid #aa9479 5px ;';
		document.querySelector("#div-btn-nonmember").style.cssText = 'border-bottom: solid #aa9479 1px ;';
		$("#div-form-nonmember").addClass('d-none');
		$("#div-form-member").removeClass('d-none');
	})
	
	//비회원 로그인버튼클릭시
	$("#btn-login-nonmember").click(function(){
		$("#form-nonmember").submit();
	})
	
	//비회원 로그인폼 제출 유효성체크
	$("#form-nonmember").submit(function(){
		if(!$(":input[name=reservationNo]").val()){
			alert("예약번호를 입력해주세요.");
			return false;
		}
		if(!$(":input[name=name]").val()){
			alert("이름을 입력해주세요.");
			return false;
		}
	})
	
	
})
</script>
</body>
</html>