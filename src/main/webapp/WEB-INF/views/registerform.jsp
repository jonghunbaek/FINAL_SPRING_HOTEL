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
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!-- 다음주소검색 -->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=0f5efd23f2359c36bc8e32b428cd9954&libraries=services"></script>
<title>Spring Hotel</title>
</head>
<link href="${pageContext.request.contextPath}/resources/css/home.css" rel="stylesheet">
<body>
<c:set var="menu" value="home" />
<%@ include file="common/nav.jsp"%>
<div class="container" id="container">
		<div class="registerBox contents" id="contents">
	        <!-- 회원가입 헤더 -->
			<div class="location rgt">
				<p class="list">
					<span class="crPosit"></span> &gt; <strong>회원가입</strong>
				</p>
			</div>
			<div class="headTit">
				<h4 class="registerTit">회원가입</h4>
			</div>
			
			<!-- 회원가입 폼 -->
			<form:form id="registerForm" action="register" method="post" modelAttribute="userRegisterForm">
			<ul>
				<div class="row">
				<p class="col">기본 입력</p> <p class="col-3 required">표시 필수입력사항</p>
				</div>
				<li class="first">
					<label class="required">성명(국문)</label>
					<form:input path="name"/>
					<form:errors path="name" class="text-danger small fst-italic"></form:errors>
				</li>
				<li>
					<label class="required">성명(영문)</label> 
					&nbsp; First name(이름) <form:input path="firstName"/> 
					Last name(성) <form:input path="lastName"/>
				</li>
				<li>
					<label class="required">생년월일</label>
					<form: input type="date" name="birthDay"/>
				</li>
				<li><label class="required">이메일</label>
					<form:input path="email"/>
					<!-- @<input type="text" name="emailServer"> -->
					<button id="btn" onclick="emailCheck()">이메일 중복확인</button>
					<form:errors path="email" class="text-danger small fst-italic"></form:errors>
				</li>
				
				<li>
					<label class="required ">휴대전화</label>
					<form:input path="tel"/>
					<form:errors path="tel" class="text-danger small fst-italic"></form:errors>
				</li>
				
				<!-- 다음API 주소검색 --> 
				<li class><label>&nbsp;</label>
					<form:input path="postcode" id="postcode" style="width:150px;" placeholder="우편번호"/>
					<input id="btn" type="button" onclick="execDaumPostcode()" value="주소 찾기"><br>
				</li>
				<li class="none">
					<label>자택주소</label>
					<form:input path="address" id="address" style="width:200px;" placeholder="주소"/><br>
				</li>
				<li class="end none"><label>&nbsp;</label>
					<input type="text" id="detailAddress" style="width:300px;" placeholder="상세주소">
					<input type="text" id="extraAddress" style="width:250px;" placeholder="참고항목">
				</li>
				<p> 웹사이트 비밀번호 입력 </p>
				<li class="first">
					<label class="required" name="id">아이디</label>
					<form:input path="id"/>
					<button id="btn" onclick="idCheck()">아이디 중복확인</button>
					<span id="ex">5~12자 이내 영문 또는 영문/숫자 조합</span><br>
					<form:errors path="id" class="text-danger small fst-italic"></form:errors>
				</li>
				<li>
					<label class="required">비밀번호</label>
					<form:password path="password"/>
					<span id="ex">비밀번호입력안내</span>
					<span id="ex">8~20자 이내 영문/숫자 조합(특수문자 입력가능)</span><br>
					<form:errors path="password" class="text-danger small fst-italic"></form:errors>
				</li>
				<li class="end">
					<label class="required">비밀번호 확인</label>
					<input type="password" name="passwordCheck"/>
				</li>
					<button id="registerbutton" type="submit" >가입 신청</button>
			</ul>
			</form:form>
		</div>
</div>

<%@ include file="common/footer.jsp"%>
<!-- 다음주소검색 스크립트코드 -->
<script>
    function execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("extraAddress").value = '';
                }
				
                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('postcode').value = data.zonecode;
                document.getElementById("address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("detailAddress").focus();
            }
        }).open();
    }
    
    
</script>
</body>
</html>