<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/tags.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<style type="text/css">

	#container {padding-top: 65px; width: 1200px; height:1500px; margin: auto; padding-left: 0px; padding-right: 0px;}
	#div-sidebar a {text-decoration: none; color: rgb(99, 62, 16);}
	#container h3 {font-family: 'Nanum Myeongjo', serif; color: rgb(133, 111, 86); margin-bottom: 0;}
	#container input {border: 1px solid rgb(204,204,204);}
	li {list-style: none;}
	#h5 {font-size: 15px; border-bottom: 3px; border-color: black; margin-top: 30px; margin-bottom: 30px;}
	#div-sidebar {float: left; width: 264px; height: 700px; background-color: rgb(241, 227, 196);
				  margin: auto; padding: 23px; text-align: left; border: 1px solid #e9dab8;}
	#div-sidebar ul {padding: 0px;}
	#list {margin-top: 25px; text-align: left;}
	#list li {margin-top:10px; text-align: left; font-size: 13px;}
	#div-sidebar span {color: rgb(99, 62, 16); font-weight: bold;}
	#div-sidebar li a {display: block; color: rgb(135,97,51);}
	#list-border {border-top: 1px dotted rgb(206,194,168); padding-top: 5px; margin-top: 5px;}
	#div-contents {float: right; margin: auto; width: 866px; height: 100%;}
	#span-color {color:rgb(118,118,118)}
	#div-msg {border: 1px solid #e9e9e9; background-color: #fbfbfb; color:#666; padding: 15px; margin: 0 0 20px 0; font-size: 15px;}
	#div-table {border: none; border-top: 1px solid #cdcbbe; width: 100%; border-collapse: collapse; font-size: 15px;}
	#div-table th {border-bottom: 1px solid #cdcbbe; background-color: #faf9f4; color: #666; line-height: 20px; vertical-align: middle;}
	#div-table .last {border-bottom: 1px solid #cdcbbe;}
	#div-btn {width: 866px; height: 70px; padding-top: 20px; text-align: right; display: block;}
	#btn1 {text-decoration: none; display: block; color: rgb(250,241,208); padding-top: 5px; margin-left: 300px;
	       background-color: rgb(62,43,44); width:130px; height:32px; text-align: center; font-size: 14px; display: block; float: left;}
    #btn2 {text-decoration: none; display: block; margin-right: 300px;
	       background-color: rgb(62,43,44); width:130px; height:32px; text-align: center; font-size: 14px; display: block; float: right;}
	#btn2 span {color: rgb(250,241,208); padding-top: 5px;}
	       
    .modal-content {width: 550px;}
  	.modal-header {background-color: #9b7f5b; color:white; border: 0; padding: 10px 25px 5px;}
  	.modal-body {border: solid 5px #9b7f5b; padding: 25px 27px; font-size: 13px;}
  	.modal-body h5 {color:rgb(121,87,45); padding-left: 15px; font-size: 16px;}
	#div-modal-body {padding: 15px; border: solid 1px #e2d5c5;}
	.formBox input, .formBox select {border: 1px solid rgb(204,204,204);}
	.formBox {border:solid 1px #e9e9e9; background-color: #fbfbfb; padding: 19px; margin: 0 0 10px 0;}
	.formBox table {border-collapse: separate; border-spacing: 10px;}
	#div-modal-btn {text-align: center; padding-top:30px; margin-bottom:30px;}
	#div-modal-btn button {border: 0; padding: 0;}
	.modal-footer {border-top: solid 1px #a1886f;  padding: 10px; margin: 0;}
	#div-modal-box1 {float: left; text-align: center; width: 197px;}
	#div-modal-box2 {float: right; text-align: center; width: 200px;}
	
</style>
<title>Spring Hotel</title>
</head>
<body>
<%@ include file="../common/nav.jsp" %>
<div class="container-fluid" id="container">
	<div id="div-sidebar">
		<h3 class="fs-7 border-dark border-bottom border-5 pb-3">마이 페이지</h3>
		<ul class="menu">
			<li id="list"><a href="mypage"><span>스프링리워즈 등급 및 포인트</span></a></li>
			<li id="list"><span >예약 확인/취소</span>
				<ul id="list-border">
					<li><a href="room">객실/패키지</a></li>
					<li><a href="dining">다이닝</a></li>
				</ul>
			</li>
			<li id="list"><span>스프링 샵</span>
				<ul id="list-border">
					<li><a href="shop">주문내역 조회</a></li>
				</ul>
			</li>
			<li id="list"><span>포인트</span>
				<ul id="list-border">
					<li><a href="point">포인트 조회</a></li>
					<!-- <li><a href="#">포인트 조정신청</a></li>
					<li><a href="#">상품권 교환 신청</a></li> -->
				</ul>
			</li>
			<li id="list"><span>쿠폰</span>
				<ul id="list-border">
					<li><a href="coupon">쿠폰함</a></li>
					<!-- <li><a href="#">프로모션 숙박권</a></li> -->
				</ul>
			</li>
			<li id="list"><span>내 정보</span>
				<ul id="list-border">
					<li><a href="modify">프로필 수정</a></li>
					<li><a href="changePw">비밀번호 변경</a></li>
					<li><a href="inquery">문의 내역</a></li>
					<li><a href="withdrawal">탈퇴 요청</a></li>
				</ul>
			</li>
		</ul>
	</div>
	
	<div id="div-contents">
		<div id="div-content1">
		<form action="modifyform" method="POST">
			<h3 class="fs-7 border-dark border-bottom border-5 pb-3">프로필 수정</h3>
			<div id="div-msg">
				${user.name } 님의 정보를 안전하게 보호하기 위해 비밀번호를 다시 한번 확인합니다.
			</div>
			<div id="div-table">
				<table class="table" summary="아이디,비밀번호로 구성된 테이블">
					<colgroup>
						<col width="17%" class="col1">
						<col class="col2">
					</colgroup>
					<tbody>
						<tr class="first">
							<th scope="row" class="first">스프링리워즈 번호</th>
							<td class="first">${user.no }</td>
						</tr>
						<tr class="last">
							<th scope="row" class="last"><label for="password" class="pw">비밀번호</label></th>
							<td class="last">
							<input type="password" class="pw uiform password" id="input-password" name="password" maxlength="20" onkeydown="javascript: if(event.keyCode == 13) selectPwCnfm()" autocomplete="off">
							</td>
						</tr>
					</tbody>
				</table>
			</div>
			<div id="div-btn">
				<a href="#" id="btn1" data-bs-toggle="modal" data-bs-target="#modal-password">비밀번호 찾기</a>
				<button id="btn2"><span>확인</span></button>
			</div>
		</form>
		</div>
	</div>
</div>

<!-- 비밀번호 찾기 Modal -->
<div class="modal fade" id="modal-password" tabindex="-1" aria-labelledby="modalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
    <form action="findPassword" method="post">
    	<div class="modal-header">
       		<h5 class="modal-title" id="modalLabel">비밀번호 찾기</h5>
        	<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      	</div>
  		<div class="modal-body">
			<h5>비밀번호 찾기</h5>
  			<div id="div-modal-body">
  				<p>회원가입 시 등록하신 아이디와 이메일로 비밀번호를 찾아드립니다.</p>
  				<div class="formBox">
					<table class="tableFormBox">
						<colgroup>
							<col width="25%">
							<col>
						</colgroup>
						<tbody>
							
							<tr>
								<th scope="row"><label for="idInput" class="idInput2">아이디</label></th>
								<td>
									<div class="inputForm2">
										<div class="Fname" style="float: left;">
											<label for="firstName"></label>
											<input type="text" class="firstName input uiform" id="input-id" name="id" placeholder="아이디" style=" width:260px;">
										</div>
									</div>
								</td>
							</tr>
							<tr>
								<th scope="row" style="text-align:left;">
									<label for="findIdOpt1" class="findIdOpt1">이메일</label>
								</th>
								<td>
									<label class="emailId" for="emailId"></label>
									<input id="input-email1" name="email" class="emailId uiform text" type="text" placeholder="이메일" style="width: 260px;" size="15">
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="mb-5" id="div-modal-btn">
					<button class="me-2" data-bs-toggle="modal" onclick="findPassword();"><img alt="확인" src="/resources/images/mypage/popFindIdBtnSubmit.gif"></button>
					<button class="ms-2" ><img alt="취소" src="/resources/images/mypage/popFindIdBtnCancel.gif" data-bs-dismiss="modal"></button>
				</div>
				<div class="modal-footer justify-content-center">
					<div id="div-modal-box1">
						<span class="txt1">로그인을 하시려면</span>
						<p><a href="/login" class="btnLogin"><img src="/resources/images/mypage/popFindIdBtnLogin.gif"></a></p>
					</div>
					<div class="pb-4">
						<img src="/resources/images/mypage/popFindIdLine.gif">
					</div>
					<div id="div-modal-box2">
						<span class="txt3">아이디를 찾으시려면?</span>
						<p><a href="#modal-id" data-bs-toggle="modal" class="btnLostId"><img src="/resources/images/mypage/popFindPwBtnLostId.gif"></a></p>
					</div>
		    	</div>
  			</div>
    	</div>
    </form>
    </div>
  </div>
</div>
<!-- 비밀번호 찾기 결과 Modal -->
<div class="modal fade" id="modal-password-result" aria-hidden="true" aria-labelledby="modalToggleLabel2" tabindex="-1">
	<div class="modal-dialog modal-dialog-centered">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="modalToggleLabel2">비밀번호 찾기</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
			</div>
      		<div class="modal-body">
      			<div class="formBox" style="text-align: center;">
					<p class="pt-3">회원님의 비밀번호는</p>
					<p id="password-result"></p>
				</div>
		      	<div class="modal-footer justify-content-center border-0">
		        	<div id="div-modal-btn">
						<a href="/login" class="btnLogin"><img src="/resources/images/mypage/popFindIdBtnLogin.gif"></a>
					</div>
		      	</div>
			</div>
		</div>
	</div>
</div>
<!-- 아이디 찾기 Modal -->
<div class="modal fade" id="modal-id" aria-hidden="true" aria-labelledby="modalToggleLabel2" tabindex="-1">
	<div class="modal-dialog modal-dialog-centered">
		<div class="modal-content">
		<form action="findId" method="post">
			<div class="modal-header">
				<h5 class="modal-title" id="modalToggleLabel2">아이디 찾기</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
			</div>
      		<div class="modal-body">
      			<div class="formBox">
					<table class="tableFormBox">
						<colgroup>
							<col width="25%">
							<col>
						</colgroup>
						<tbody>
							<tr>
								<th scope="row"><label for="idInput" class="idInput2">성명</label></th>
								<td>
									<div class="inputForm2">
										<div class="Fname">
											<label for="firstName"></label>
											<input type="text" class="firstName input uiform" id="input-name" name="name" placeholder="이름" style=" width:260px;">
										</div>
									</div>
								</td>
							</tr>
							<tr>
								<th scope="row" style="text-align:left;">
									<label for="findIdOpt1" class="findIdOpt1">이메일</label>
								</th>
								<td>
									<label class="emailId" for="emailId"></label>
									<input id="input-email2" name="email" class="emailId uiform text" type="text" placeholder="이메일" style="width: 260px;" size="15">
								</td>
							</tr>
						</tbody>
					</table>
				</div>
		      	<div class="modal-footer justify-content-center border-0">
		        	<div id="div-modal-btn" class="pt-3">
						<button class="me-2" data-bs-toggle="modal" onclick="findId();"><img alt="확인" src="/resources/images/mypage/popFindIdBtnSubmit.gif"></button>
					</div>
		      	</div>
			</div>
		</form>
		</div>
	</div>
</div>
<!-- 아이디 찾기 결과 Modal -->
<div class="modal fade" id="modal-id-result" aria-hidden="true" aria-labelledby="modalToggleLabel2" tabindex="-1">
	<div class="modal-dialog modal-dialog-centered">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="modalToggleLabel2">아이디 찾기</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
			</div>
      		<div class="modal-body">
      			<p>스프링 리워즈 번호 찾기 결과는 아래와 같습니다.</p>
      			<div class="formBox" style="text-align: center;">
					<p class="pt-3"><strong>${user.firstName }&nbsp;${user.lastName }</strong> 스프링리워즈 번호 - <strong>[${user.no }]</strong></p>
					<p id="id-result"></p>
				</div>
		      	<div class="modal-footer justify-content-center border-0">
		        	<div id="div-modal-btn">
						<a class="me-2" href=""><img alt="확인" src="/resources/images/mypage/popFindIdBtnSubmit.gif" data-bs-dismiss="modal"></a>
						<a class="ms-2" href="#modal-password" data-bs-toggle="modal"><img alt="비밀번호찾기" src="/resources/images/mypage/popFindIdBtnLostPw.gif"></a>
					</div>
		      	</div>
			</div>
		</div>
	</div>
</div>
<%@ include file="../common/footer.jsp" %>
</body>
<script type="text/javascript">

	//비밀번호 찾기
	function findPassword() {
		let id = document.getElementById('id').value;
		let email = document.getElementById('email1').value;
		
		$.ajax({
			url: '/findPassword',
			type: 'post',
			data: {"id":id, "email":email},
			success:function(data){
				if(data == 0) {
					alert("아이디 혹은 이메일이 잘못되었습니다.");
				} else {
					$('#modal-password').modal('hide');
					$('#modal-password-result').modal('show');
					$('#password-result').html("<strong>[" + data + "]</strong>입니다.");
				}
			}, 
			error:function(){
				alert("에러입니다.");
			}
		})
	};
	
	//아이디 찾기
	function findId() {
		let name = document.getElementById('name').value;
		let email = document.getElementById('email2').value;
		
		$.ajax({
			url: '/findId',
			type: 'post',
			data: {"name":name, "email":email},
			success:function(data){
				if(data == 0) {
					alert("아이디가 존재하지 않습니다.");
				} else {
					$('#modal-id').modal('hide');
					$('#modal-id-result').modal('show');
					$('#id-result').html("<strong>[" + data + "]</strong>입니다.");
				}
			}, 
			error:function(){
				alert("에러입니다.");
			}
		})
	};

	/* function passwordCheck() {
		let inputId = $('#input-id').val();
		let inputEmail1 = $('#input-email1').val();
		let inputName = $('#input-name').val();
		let inputEmail2 = $('#input-email2').val();
		let userId = "${user.id}";
		let userEmail = "${user.email}";
		let userName = "${user.name}";
		
		if (inputId !== userId || inputEmail1 !== userEmail) {
			alert("아이디 혹은 이메일이 일치하지 않습니다.");
			return false;
		} else {
			$('#modal-password').modal('hide');
			$('#modal-password-result').modal('show');
			$('#password-result').html("<strong>[${user.password }]</strong>입니다.");
		}
	} */
	
</script>
</html>
