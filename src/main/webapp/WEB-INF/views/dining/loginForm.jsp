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

#div-form-login{width: 750px; margin-left:200px; margin-top:40px;}

#div-btn-choice-member img{ width:90%; height:100%; padding: 10px;}

#div-btn-choice-member {border-top: grey 1px solid;}

#btn-login{margin-left: 20px;width:150px; height: 70px;}

.input-field {width: 400px; margin-bottom: 5px; margin-left:30px;}

#field-input {margin-bottom: 10px;}

#div-form-member{background:#f1ebd6; padding-top:30px; }

#div-btn-member{border-right: grey 1px dotted;}

#div-btn{margin-top: 10px;}

#div-btn img {margin-bottom: 50px;}
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
		<h3>스프링리워즈에 오신것을 환영합니다.</h3>
		<p>스프링리워즈 번호와 비밀번호를 입력해 주시기 바랍니다.</p>
		<p>※스프링리워즈 회원이 되시면 회원만을 위한 다양한 서비스와 혜택을 받으실 수 있습니다.</p>
	</div>
	<div id="div-form-login" class="text-center">
		<form id="form-login" method="post" action="/confirmRev">
		<div id="div-btn-choice-member" class="row">
			<div id="div-btn-member" class="col-6">
				<a id="btn-member"href="#"><img src="../resources/images/dining/btn-member.png"></a>		
			</div>
			<div id="div-btn-nonmember" class="col-6">
				<a id="btn-nonmember" href="#"><img src="../resources/images/dining/btn-nonmember.png"></a>		
			</div>
		</div>
		<div id="div-form-member" >
			<div id="field-input" class="row">
				<div class="col-8">
					<input class="input-field" type="text" name="email">
					<input class="input-field" type="password" name="password">
				</div>
				<div class="col-4 text-start">
					<a href="#"><img id="btn-login" src="../resources/images/dining/btn-login.png"></a>
				</div>
			</div>
			<input type="checkbox"><label>스프링리워즈번호 또는 아이디 저장</label>
			<div id="div-btn">
				<a href="#"><img src="../resources/images/dining/btn-new-member.png"></a>
				<a href="#"><img src="../resources/images/dining/btn-find-id.png"></a>
				<a href="#"><img src="../resources/images/dining/btn-find-password.png"></a>
			</div>
		</div>
		</form>
	</div>
</div>
<%@ include file="../common/footer.jsp" %>
<script type="text/javascript">
$(function(){
	$("#btn-nonmember").click(function(){
		document.querySelector("#div-btn-nonmember").style.cssText = 'border-bottom: solid #aa9479 5px ;';
		$("#div-btn-member").css('border-bottom', '');
	})
	
	$("#btn-member").click(function(){
		document.querySelector("#div-btn-member").style.cssText = 'border-bottom: solid #aa9479 5px ;';
		$("#div-btn-nonmember").css('border-bottom', '');
	})
	
})
</script>
</body>
</html>