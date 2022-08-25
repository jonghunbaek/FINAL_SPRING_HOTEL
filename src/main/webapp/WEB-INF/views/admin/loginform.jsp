<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/tags.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<link href="${pageContext.request.contextPath}/resources/css/home.css" rel="stylesheet">
<style>
	
	.btnLostId a {text-decoration: none; color: rgb(250, 241, 208);}
	.btnLostPw a {text-decoration: none; color: rgb(250, 241, 208);}
	
</style>
<title>관리자 로그인</title>
</head>
<body>
<c:set var="menu" value="adminlogin"/>
<%@ include file="../common/nav.jsp"%>
<div class="container" id="container">
	<div class="loginBox contents" id="contents">
        <!-- 로그인 헤더 -->
		<div class="location rgt">
			<p class="list">
				<span class="crPosit"></span> &gt; <strong>관리자 로그인</strong>
			</p>
		</div>
		<div class="headTit">
			<h4 class="tit">관리자 로그인</h4>
		</div>
		<div class="top">
			<h1 class="logo">
				<span><p>스프링호텔 관리자</p></span>
			</h1>
			<div class="info">
				<p>
					<strong>이메일과 비밀번호를 입력해 주시기 바랍니다.</strong>
				</p>
			</div>
		</div>
		<!--  로그인 폼 -->
		<div class="tabForm">				
			<div class="tabContent">
				<div class="allBox">
					<div class="box">
							<form id="loginForm" action="login" method="post">
								<input type="hidden" id="" name="" value="">
								<div class="inputForm">
									<div class="inputId">
										<input type="text" class="id" name="email" id="email-field" placeholder="이메일 입력" >
									</div>
									<div class="inputPw">
										<input type="password" class="pw" name="password" id="password-field" maxlength="20" placeholder="비밀번호 입력">
									</div>
									<div class="loginBtn">
										<input type="image" src="../resources/images/loginBtnLogin.gif"/>
									</div>
								</div>
								<p class="msg" id="pwNot" style="display: none">
									아이디와 비밀번호가 일치하지 않습니다.<br>연속 5회 오류시(로그인 날짜가 달라도 해당됨) 로그인이
									제한됩니다.<br>제한해제를 위해서는 임시 비밀번호를 발급받으시거나 비밀번호를 재설정해주시기 바랍니다.
								</p><br>
								<p class="msg" id="pwError" style="display: none">비밀번호를 연속
									5회 잘못 입력하셨습니다. 임시 비밀번호를 발급받아 이용해주시기 바랍니다.</p>
								<input type="hidden" name="nextURL" id="nextURL" value="">
							</form>
							
							<div>
								<button class="btnLostId">
									<a href="">이메일 찾기</a>
								</button>
								<button class="btnLostPw">
									<a href="">비밀번호 찾기</a>
								</button>
							</div>
						</div>
					</div>
				</div>
			
				<div class="loginT">
					<p>직원 등록시 관리자에게 문의 바랍니다.</p>
				</div>
				
		</div>
	</div>
</div>
<%@ include file="../common/footer.jsp"%>
<script>
$(function() {
	$("#loginForm").submit(function() {
		let emailValue = $("#id-field").val();  
		if (emailValue === "") {
			alert("아이디는 필수입력값입니다.");
			return false;
		}
		
		let passwordValue = $("#password-field").val();
		if (passwordValue === "") {
			alert("비밀번호는 필수입력값입니다.");
			return false;
		}
	});
});	
</script>
</body>
</html>