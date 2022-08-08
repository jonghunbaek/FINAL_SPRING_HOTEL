<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/tags.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<!-- DatePicker 라이브러리 -->
<link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
<!-- <link rel="stylesheet" href="/resources/demos/style.css"> -->
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
  
<!-- 카카오 주소 검색 라이브러리 -->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=0f5efd23f2359c36bc8e32b428cd9954&libraries=services"></script>
<title>신규 직원 등록</title>
<style>
	p {
		color:black;
		font-size:20px;
		font-weight:bold;
	}
	
    #form {
		font-size: bold !important;
		color: black;
		background-color: #dcdcdc !important;
		position:relative; top:70px;
		border-radius: 10px;
	} 
	
	.form-control {
		box-shadow: 1px 1px 5px 1px black;
		font-size: 12px;
	}
	
	/* 가운데 구분선 */
	#half1 {
	  padding-right:-10px;
	  margin-right:30px;
	  border-right:1px solid white;
	}
	
	.btn {
		color: rgba(30, 22, 54, 0.6);
		box-shadow: rgba(30, 22, 54, 0.4) 0 0px 0px 2px inset;
	}
	
	.btn:hover {
		color: rgba(255, 255, 255, 0.85);
		box-shadow: rgba(30, 22, 54, 0.7) 0 80px 0px 2px inset;
	}
	
	/* #submitForm {
		background-color:;
	} */
	
</style>
</head>

<body>
	<c:set var="menu" value="registerform" />
	<%@ include file="common/nav.jsp"%>

	<div class="container-fluid" id="container">
		<div class="col-md-9 ms-sm-auto col-lg-10 px-md-4 mt-3 pb-3">
			<p class="list">
				<span data-feather="user"></span>&nbsp;&gt;&nbsp;<span data-feather="user-plus"></span>&nbsp;<strong style="font-size:13px;">신규 직원등록</strong>
			</p>
		</div>
		<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4" id="main">
			<form:form class="border bg-light p-3" id="form" method="post" action="register" modelAttribute="adminRegisterForm" enctype="multipart/form-data">
				<div class="row">
					<div class="col-5" id="half1">
						<p>기본정보</p>
						<div class="row mb-3">
							<div class="col-9">
								<label for="email-field" class="form-label">이메일</label>
								<form:input class="form-control" path="email" id="email-field" placeholder="sample@abc.com" />
								<form:errors path="email" class="text-danger small fst-italic"></form:errors>					
							</div>
							<div class="col-6" id="email-helper"></div>	
						</div>
						<div class="row mb-3">
							<div class="col-6">
								<label for="password-field" class="form-label">비밀번호</label>
								<form:password class="form-control" path="password" id="password-field" placeholder="비밀번호는 영어 대소문자와 숫자로 8글자 ~ 20글자입니다." />
								<form:errors path="password" class="text-danger small fst-italic"></form:errors>
							</div>
							<div class="col-6">
								<label for="birth-field" class="form-label">비밀번호 확인</label>
								<input type="password" class="form-control" id="password2-field"  placeholder="비밀번호를 재입력해주세요">
							</div>
							<div class="col-6" id="password-helper"></div>
						</div>
						<div class="row">
							<div class="col-4 mb-3">
								<label for="name-field" class="form-label">이름</label>
								<form:input class="form-control" path="name" id="name-field" placeholder="2글자 이상입니다." />
								<form:errors path="name" class="text-danger small fst-italic"></form:errors>
							</div>
							<div class="col-6 mb-3">
								<label for="tel-field" class="form-label">전화번호</label>
								<form:input class="form-control" path="tel" id="tel-field" placeholder="010-1234-5678" />
								<form:errors path="tel" class="text-danger small fst-italic"></form:errors>
							</div>
						</div>
					</div>				

					<div class="col" id="half2">	
						<p>상세정보</p>		
						<div class="row">
							<div class="col-6 mb-3">
								<label for="birth-field" class="form-label">생년월일</label>
								<form:input type="text" class="form-control" id="datepicker" path="birth" />
							</div>
							<div class="col-6 mb-3">
								<label for="birth-field" class="form-label">입사일</label>
								<form:input type="text" class="form-control datepicker" path="hireDate" />
							</div>
						</div>
						<div class="row">
							<div class="col-6 mb-3">
								<label for="postcode-field" class="form-label">우편번호</label>
								<form:input class="form-control" id="postcode-field" path="postcode" />
							</div>
							<div class="col-4 mb-3">
								<label for="birth-field" class="form-label">참고항목</label>
								<input type="text" class="form-control" id="extraAddress" placeholder="참고항목">
							</div>
						</div>
						<div class="row">
							<div class="col-6 mb-3">
								<label for="address-field" class="form-label">주소</label>
								<form:input class="form-control" path="address" id="address-field" placeholder="주소를 입력하세요" />
							</div>
							<div class="col-6 mb-3">
								<label for="addressDetail-field" class="form-label">상세주소</label>
								<form:input class="form-control" path="addressDetail" id="addressDetail-field" placeholder="상세주소를 입력하세요" />
							</div>
						</div>
						<div class="row">
							<div class="col-3 mb-3">
								<label for="birth-field" class="form-label">직급</label>
								<form:select type="select" class="form-control" path="grade" placeholder="010-1234-5678">
									<option value="M">매니저</option>
								    <option value="E">사원</option>
								</form:select>
							</div>
							<div class="col-3 mb-3">
								<label for="tel-field" class="form-label">근무지</label>
								<form:select class="form-control" path="locationNo" name="locationNo" id="location-field">
									<option value="1">서울</option>
								    <option value="2">부산</option>
								    <option value="3">제주</option>
								    <option value="4">강릉</option>
								    <option value="5">광주</option>
								</form:select>
							</div>
							<div class="col-3 mb-3">
								<label for="tel-field" class="form-label">프로필이미지</label> 
								<input type="file" class="form-control" name="profileFile" id="profile-file-field" />
							</div>
							<div class="col-3 mb-3">
								<label for="name-field" class="form-label">성별</label>
								<form:radiobutton path ="gender" value = "M" label = "남" />
		                  		<form:radiobutton path ="gender" value = "F" label = "여" />
							</div>
						</div>
					</div>
				</div>
				<div class="text-end">		
					<a href="main" class="btn">취소</a>
					<button id="submitForm" type="submit" class="btn">등록</button>
				</div>
			</form:form>
		</main>
	</div>
<script src="https://cdn.jsdelivr.net/npm/feather-icons@4.28.0/dist/feather.min.js" integrity="sha384-uO3SXW5IuS1ZpFPKugNNWqTZRRglnUJK6UAZ/gxOX80nxEkN9NcGZTftn6RzhGWE" crossorigin="anonymous"></script>
<script src="${pageContext.request.contextPath}/resources/admincss/dashboard.js"></script>
<script>
$(function() {
	
	// 제출시 기본정보 공란인 경우 제출 못하게 설정
	$("#form").submit(function() {
		let $idField = $("#id-field");
		let $pwField = $("#password-field");
		let $nameField = $("#name-field");
		let $telField = $("#tel-field");
		
		if ($idField.val() === "") {
			alert("아이디는 필수입력값입니다.");
			$idField.focus();
			return false;
		}
	})
	
	// 이메일 중복 확인 
	$("#email-field").keyup(function() {
		
		 let email = $('#email-field').val();
		 let $emailHelper = $("#email-helper");
		 // 기존 스타일을 삭제 시킨다.
		 $emailHelper.removeClass("text-danger", "text-success");
		 
		 $.ajax({
	            url:'../admin/emailCheck', //Controller에서 요청 받을 주소
	            type:'post', //POST 방식으로 전달
	            data: {email},
	            success:function(emailCheck){ //컨트롤러에서 넘어온 emailCheck값을 받는다 
	                if(emailCheck == 0){ //emailCheck가 0이면 존재하는 이메일이 없다.
	                    $emailHelper.addClass("text-success"); 
	                    $emailHelper.html("사용가능한 이메일입니다.");
	                } else { 
	                	$emailHelper.addClass("text-danger"); 
		                $emailHelper.html("이미 존재하는 이메일입니다.");
	                    $('#id').val('');
	                }
	            },
	            error:function(){
	                alert("에러입니다");
	            }
	        });
	});
	
	// 비밀번호 일치여부 확인
	$("#password2-field").keyup(function() {
		let $password = $("#password-field").val();
		let $password2 = $("#password2-field").val();
		let $passwordHelper = $("#password-helper");

		$passwordHelper.removeClass("text-danger", "text-success");

		if ($password !== $password2) {
			$passwordHelper.addClass("text-danger");
			$passwordHelper.html("비밀번호가 일치하지 않습니다.");
		} else if ($password === $password2) {
			$passwordHelper.addClass("text-success");
			$passwordHelper.html("비밀번호가 일치합니다.");
		}
	});
	
 	//생년월일
    $("#datepicker").datepicker({
        dateFormat: 'yy-mm-dd' //달력 날짜 형태
        ,showOtherMonths: true //빈 공간에 현재월의 앞뒤월의 날짜를 표시
        ,showMonthAfterYear:true // 월- 년 순서가아닌 년도 - 월 순서
        ,changeYear: true //option값 년 선택 가능
        ,changeMonth: true //option값  월 선택 가능                          
        ,yearSuffix: "년" //달력의 년도 부분 뒤 텍스트
        ,monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] //달력의 월 부분 텍스트
        ,monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] //달력의 월 부분 Tooltip
        ,dayNamesMin: ['일','월','화','수','목','금','토'] //달력의 요일 텍스트
        ,dayNames: ['일요일','월요일','화요일','수요일','목요일','금요일','토요일'] //달력의 요일 Tooltip
        ,minDate: "-60y" //최소 선택일자(-1D:하루전, -1M:한달전, -1Y:일년전)
        ,maxDate: "-20y" //최대 선택일자(+1D:하루후, -1M:한달후, -1Y:일년후)  
        ,yearRange: "-100:+0"
    });                    
    
    //초기값을 40년 전으로 설정
    $('#datepicker').datepicker('setDate', '-40y'); //(-1D:하루전, -1M:한달전, -1Y:일년전), (+1D:하루후, -1M:한달후, -1Y:일년후)    
    
 	//입사일선택
    $(".datepicker").datepicker({
        dateFormat: 'yy-mm-dd' //달력 날짜 형태
        ,showOtherMonths: true //빈 공간에 현재월의 앞뒤월의 날짜를 표시
        ,showMonthAfterYear:true // 월- 년 순서가아닌 년도 - 월 순서
        ,changeYear: true //option값 년 선택 가능
        ,changeMonth: true //option값  월 선택 가능                          
        ,yearSuffix: "년" //달력의 년도 부분 뒤 텍스트
        ,monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] //달력의 월 부분 텍스트
        ,monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] //달력의 월 부분 Tooltip
        ,dayNamesMin: ['일','월','화','수','목','금','토'] //달력의 요일 텍스트
        ,dayNames: ['일요일','월요일','화요일','수요일','목요일','금요일','토요일'] //달력의 요일 Tooltip
        ,minDate: "-20y" //최소 선택일자(-1D:하루전, -1M:한달전, -1Y:일년전)
        ,maxDate: "+20y" //최대 선택일자(+1D:하루후, -1M:한달후, -1Y:일년후)  
        ,yearRange: "-100:+0"
    });                    
    
    //초기값을 5년전으로 설정
    $('.datepicker').datepicker('setDate', '-5y'); //(-1D:하루전, -1M:한달전, -1Y:일년전), (+1D:하루후, -1M:한달후, -1Y:일년후) 
    
    // 카카오 주소 검색 API
    $("#postcode-field").click(function execDaumPostcode() {
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
                    $("#extraAddress").val(extraAddr);
                
                } else {
                    $("#extraAddress").val('');
                }
				
                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                $('#postcode-field').val(data.zonecode);
                $("#address-field").val(addr);
                // 커서를 상세주소 필드로 이동한다.
                $("#addressDetail").focus();
            }
        }).open();
    })
});
</script>
</body>
</html>