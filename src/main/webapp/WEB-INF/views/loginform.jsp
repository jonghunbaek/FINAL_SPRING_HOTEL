<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="common/tags.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<link rel="stylesheet" href="css/home.css">
<title>Spring Hotel</title>
</head>
<style>
#container {
	padding: 65px 0 0 0;
	text-align: center;
	width: 1200px;
	margin: auto;
	zoom: 1;
	margin: 0 auto 100px auto;
}

#div-dining {
	display: block;
	margin-top: 50px;
}

#div-dining img {
	width: 1200px;
	height: 60px;
}

#div-specialOffer {
	display: block;
	margin: auto;
	margin-top: 50px;
	width: 1200px;
	height: 2400px;
}

#specialOffer img {
	width: 300px;
	height: auto;
}

#plus {
	float: right;
	text-align: center;
	vertical-align: bottom;
}

#plus img {
	width: 80px;
	height: auto;
}

/* 로그인 헤더 */
.contents .location {
	float: right;
	height: 20px;
	padding: 9px 0 0 0;
	margin: 0 0 -30px 0;
	overflow: hidden;
	z-index: 9;
	position: relative;
}

.rgt {
	right: 172px;
}

.contents .location .list {
	display: block;
	font-size: 11px;
	background: url(resources/images/locaton.gif) no-repeat 0 1px;
	line-height: 12px;
	padding: 0 0 0 17px;
}

.contents .location .list strong {
	color: #865009;
	font-weight: normal;
	text-decoration: underline;
}

.logo {
	margin: 50px 0 30px 0;
	color: #865009;
	font-size: 30px;
	font-weight: normal;
}

.info {
	font-size: 14px;
}

.contents .headTit .tit {
	float: left;
	width: 430px;
	height: 35px;
	line-height: 100px;
	overflow: hidden;
}

.loginBox.contents .headTit {
	border-bottom: #432c10 solid 5px;
	height: 47px;
	width: 866px;
	margin: 0 auto;
}

/* 로그인폼 */
.loginBox .tabForm .loginTab {
	display: block;
	position: relative;
	top: 0px;
	left: 0px;
	width: 600px;
	margin: 0 auto;
}

.loginBox .inputId .id, .loginBox .inputPw .pw {
	background-position: 2px 3px;
	width: 280px;
	border: 0 ;
	margin: 0 0 7px 0;
}

.loginBox .box .formBox {
	width: 404px;
	margin: auto;
	position: relative;
}

.loginBox .formBox .loginSet {
	position: relative;
	zoom: 1;
}

.logintab img {
	width: 300px;
	margin: 0;
	pading: 0;
}

.loginBox .box {
	background: #f1ebd6;
	padding: 30px 0 30px 0;
	width: 600px;
	margin: auto;
}

.loginBox.contents .headTit .tit {
	background: url(resources/images/loginTit.gif) no-repeat;
	width: 467px;
	line-height: 200px;
	overflow: hidden;
}

.loginBox .top {
	background: url(resources/images//loginTop.gif) no-repeat;
	width: 600px;
	height: 144px;
	margin: 0 auto 35px;
}
.loginheader{
	display:inline-flex;
}

.loginimage {
	float:left;
}

button{
	background-color: #856f56;
	color: #fff;
	border: 0px;
	pading: 2px;
	margin: 0;
}

button a{
	color: white;
	font-size: 13px;
	hover: none;
}

.loginT {
	background: none repeat scroll 0 0 #FBFBFB;
	text-align: center;
	border: 1px solid #E9E9E9;
	padding: 8px 0 8px 0;
	width: 600px;
	margin: 10px auto;
	font-size: 13px;
}

.loginT p {
	margin-top : 0;
	margin-bottom: 0;
}

.beLogin {
	background: #f1ebd6;
	padding: 20px 0 20px 0;
	width: 600px;
	margin: 10px auto;
	font-size: 13px;
}

.loginBtn {
	display: inline-block;
}

</style>
<body>
	<c:set var="menu" value="home"/>
	<%@ include file="common/nav.jsp"%>
	<div class="container" id="container">
		<div class="loginBox contents" id="contents">
	        <!-- 로그인 헤더 -->
			<div class="location rgt">
				<p class="list">
					<span class="crPosit"></span> &gt; <strong>로그인</strong>
				</p>
			</div>
			<div class="headTit">
				<h4 class="tit">로그인</h4>
			</div>
			<div class="top">
				<h1 class="logo">
					<span><p>스프링리워즈에 오신 것을 환영합니다</p></span>
				</h1>
				<div class="info">
					<p>
						<strong>스프링리워즈 번호와 비밀번호를 입력해 주시기 바랍니다.</strong>
					</p>
					<p>※ 스프링리워즈 회원이 되시면 회원만을 위한 다양한 서비스와 혜택을 받으실 수 있습니다.</p>
				</div>
			</div>
			<!--  로그인 폼 -->
			<div class="tabForm">
				<div class="loginheader">
					<div class="loginimage"><a href="#"><img src="resources/images/login_mem_on.jpg" alt="회원"></a></div>
					<div class="loginimage"><a href="#"><img src="resources/images/login_nomem_off.jpg" alt="비회원"></a></div>
				</div>
				
				<div class="tabContent">
					<div class="allBox">
						<div class="box">
								<form id="loginForm" action="login" method="POST">
									<input type="hidden" id="" name="" value="">
									<div class="inputForm">
										<div class="inputId">
											<input type="text" class="id" name="id" id="id-field"
												onkeydown="javascript: if(event.keyCode == 13) loginSubmit()"
												placeholder="스프링리워즈 번호 또는 아이디 입력" onfocus="this.placeholder = ''"
												onblur="this.placeholder = '스프링리워즈 번호 또는 아이디 입력'">
										</div>
										<div class="inputPw">
											<input type="password" class="pw" name="password" id="password-field" maxlength="20"
												onkeydown="javascript: if(event.keyCode == 13) loginSubmit()"
												placeholder="비밀번호 입력" onfocus="this.placeholder = ''"
												onblur="this.placeholder = '비밀번호 입력'">
										</div>
										<div class="loginBtn">
										<input type="image" src="resources/images/loginBtnLogin.gif"/>
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
									<button class="btnJoin">
									<a href="/register">스프링리워즈 가입</a> 
									</button>
									<button class="btnLostId">
									<a href="javascript:popForId('mem');" id="popForIdButton">아이디 찾기</a>
									</button>
									<button class="btnLostPw">
									<a href="javascript:popForPw('mem');" id="popForPwButton">비밀번호찾기</a>
									</button>
								</div>
							</div>
						</div>
					</div>
				
					<div class="loginT">
						<p>이메일, 연락처 등의 정보가 변경되면 웹사이트에서 회원정보를 수정해주시기 바랍니다.</p>
					</div>
					
			</div>
		</div>
	</div>
               <!-- 
					<div class="beLogin">
						<p class="tpBox">※ 현장가입 및 기존 멤버십에서 전환하신 회원님께는 온라인 계정을 활성화 하시면
							로그인 하실 수 있습니다.</p>
						<p class="btnBox">
							<a href="javascript:fnCmdActi();" class="btnOnline"><span>온라인
									계정 등록하기</span></a>
						</p>
					</div>
				</div>
			</div>
             
				<div class="allBox">
					<div class="box">
						<div class="loginTabl rBtn">
							<div class="radio" id="uniform-rMember">
								<span class="checked"><input type="radio"
									class="rMember uiform radio" id="rMember" name="rMember"
									checked="" value="Y" autocomplete="off"></span>
							</div>
							<label class="rMember mgr22" for="rMember">객실</label>
							<div class="radio" id="uniform-rMemberNone">
								<span><input type="radio"
									class="rMemberNone uiform radio" id="rMemberNone"
									name="rMember" value="N" autocomplete="off"></span>
							</div>
							<label class="rMemberNone" for="rMemberNone">다이닝</label>
						</div>
						<div class="formBox">
							<div class="cBox">
								<fieldset class="loginSet">
									<form id="loginResvForm" action="/membership/resv/rpm/memListNonMbrResv.do" method="POST">
										<div class="inputFormNo formOn" id="roomR">
											<div class="inputId">
												<label for="rNum">예약번호</label><input type="text"
													onkeyup="return removeChar(event)"
													onkeydown="return onlyNumber(event)"
													class="id rNum input uiform text" id="resvId" name="resvId"
													value="" autocomplete="off">
											</div>
											<div class="inputPw">
												<label for="rName1">first name </label><input type="text"
													value="First name(이름)" id="guestEnFnm" name="guestEnFnm"
													style="text-transform: uppercase;"
													onkeyup="this.value=this.value.replace(/[^a-z]/gi,'');"
													class="rName1 input uiform text" autocomplete="off"
													title="성을 제외한 이름 입력"> <label for="rName2">Last
													name </label><input type="text" value="Last name(성)"
													id="guestEnLnm" name="guestEnLnm"
													class="rName2 input uiform text"
													style="text-transform: uppercase;"
													onkeyup="this.value=this.value.replace(/[^a-z]/gi,'');"
													autocomplete="off"
													onkeydown="javascript: if(event.keyCode == 13) loginSubmit();"
													title="이름을 제외한 성 입력">
											</div>
										</div>
										<div class="loginBtn">
											<a href="javascript:loginSubmit();" title="Login"><img
												src="resources/images/loginBtnLogin.gif" alt="로그인"
												class="btnLogin"></a>
										</div>
									</form>
									객실 예약

									 비회원 기능 
									 다이닝 예약 
									
									<form id="loginDiningForm"
										action="/membership/resv/rpm/memListNonMbrResv.do"
										method="POST">
										<input type="hidden" id="visitName" name="visitName"
											autocomplete="off"> <input type="hidden" id="resvId"
											name="resvId" autocomplete="off"> <input
											type="hidden" id="resvTypeCd" name="resvTypeCd" value="N"
											autocomplete="off">
										<div id="diningR" class="inputFormNo ">
											<div class="inputId">
												<input type="text" onkeydown="javascript: if(event.keyCode == 13) loginSubmit()" class="id rNum input uiform text" id="resvCode" name="resvCode"
													onkeyup="this.value=this.value.replace(/[^A-Z0-9]/gi,'');"
													placeholder="예약번호"">
											</div>
											<div class="inputPw">
												<input type="text" onkeydown="javascript: if(event.keyCode == 13) loginSubmit()" style="ime-mode: active" id="guestNm" 
													onkeyup="this.value=this.value.replace(/[^가-힣ㄱ-ㅎㅏ-ㅣ]/gi,'');"
													class="rName3 input uiform text" placeholder="이름">
											</div>
										</div>
									</form>
									<div class="loginBtn">
										<a href="javascript:loginSubmit();" title="Login"> <img
											src="resources/images/loginBtnLogin.gif"
											alt="로그인" class="btnLogin">
										</a>
									</div>
							</div>
						</div>
					</div>
					   -->
<%@ include file="common/footer.jsp"%>
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