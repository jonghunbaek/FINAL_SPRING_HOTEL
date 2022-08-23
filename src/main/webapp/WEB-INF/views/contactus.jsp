<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="common/tags.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://www.google.com/recaptcha/api.js"></script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="${pageContext.request.contextPath}/resources/css/contact.css" rel="stylesheet">
<title>Spring Hotel</title>
</head>
<body>
<%@ include file="common/nav.jsp" %>
<div class="container-fluid" id="container">
	<div id="div-sidebar">
		<h3 class="fs-7 border-dark border-bottom border-5 pb-3"><strong>고객 문의</strong></h3>
		
		<c:if test="${empty LOGIN_USER }">
		<ul class="menu">
			<li><a href="/contact" class="contact"><span>연락처</span></a></li>
			<li><a href="/inquiry/inquiryForm"" class="inquiry"><span>문의하기</span></a></li>
		</ul>
		</c:if>		
		<c:if test="${not empty LOGIN_USER }">
		<ul class="menu">
			<li><a href="/contact" class="contact"><span>연락처</span></a></li>
			<li><a href="/inquiry/inquiryForm"" class="inquiry"><span>문의하기</span></a></li>
			<li><a href="/inquiry/list?page=1" class="inquiry"><span>문의내역</span></a></li>
		</ul>
		</c:if>		
	</div>
	<div class="contacts">
		<!-- 연락처 -->
		<div id="content1">
			<div class="location rgt">
				<font class="list">
					<span class="crPosit"></span> &gt; 고객문의 > <strong>연락처</strong>
				</font>
			</div>
			<div class="headTit">
				<h3><strong>연락처</strong></h3>
			</div>
			
			<p>호텔 이용에 관련된 문의는 해당 호텔의 대표전화를 이용하면 더욱 빠르게 답변을 받으실 수 있습니다.</p>
			
			<div>
				<table class="table">
				<p>SPRING REWARDS<p>
					<tr>
						<td col width=20%><strong>스프링리워즈</strong></td>
						<td col width=80%>
						<span>대표전화</span> 
						<strong>02-1111-1111</strong><br>
						* 평일(월~금요일) 09:00~18:00, 주말 및 공휴일 휴무</td>
					</tr>
				</table>
				<p>THE SPRING<p>
				<table class="table">
					<tr>
						<td col width=20% rowspan="2"><strong>서울스프링호텔</strong></td>
						<td col width=80%>
						<span>대표전화</span> 
					    <strong>02-1111-1111</strong><br>
						</td>
					</tr>
					<tr>
						<td col width=80%>
						<span>객실예약</span>
						<strong>(대표)1588-0000</strong>
						<br>* 평일(월~금요일) 09:00~18:00, 주말 및 공휴일 휴무</td>
					</tr>
					<tr>
						<td col width=20% rowspan="2"><strong>부산스프링호텔</strong></td>
						<td col width=80%>
						<span>대표전화</span> 
					    <strong>02-1111-1111</strong><br>
						</td>
					</tr>
					<tr>
						<td col width=80%>
						<span>객실예약</span>
						<strong>(대표)1588-0000</strong>
						<br>* 평일(월~금요일) 09:00~18:00, 주말 및 공휴일 휴무</td>
					</tr>
					<tr>
						<td col width=20% rowspan="2"><strong>제주스프링호텔</strong></td>
						<td col width=80%>
						<span>대표전화</span> 
					    <strong>02-1111-1111</strong><br>
						</td>
					</tr>
					<tr>
						<td col width=80%>
						<span>객실예약</span>
						<strong>(대표)1588-0000</strong>
						<br>* 평일(월~금요일) 09:00~18:00, 주말 및 공휴일 휴무</td>
					</tr>
					<tr>
						<td col width=20% rowspan="2"><strong>강릉스프링호텔</strong></td>
						<td col width=80%>
						<span>대표전화</span> 
					    <strong>02-1111-1111</strong><br>
						</td>
					</tr>
					<tr>
						<td col width=80%>
						<span>객실예약</span>
						<strong>(대표)1588-0000</strong>
						<br>* 평일(월~금요일) 09:00~18:00, 주말 및 공휴일 휴무</td>
					</tr>
					<tr>
						<td col width=20% rowspan="2"><strong>광주스프링호텔</strong></td>
						<td col width=80%>
						<span>대표전화</span> 
					    <strong>02-1111-1111</strong>
						</td>
					</tr>
					<tr>
						<td col width=80%>
						<span>객실예약</span>
						<strong>(대표)1588-0000</strong>
						<br>* 평일(월~금요일) 09:00~18:00, 주말 및 공휴일 휴무</td>
					</tr>
				</table>
				<font size="2"> * 객실예약 운영시간 : 평일(월~금요일) 09:00~20:00, 주말(토~일요일) 및 공휴일 09:00~18:00</font>
			</div>
		</div>
		<!-- 문의하기 -->
		<div id="content2" style="display:none">
			<div class="location rgt">
				<p class="list">
					<span class="crPosit"></span> &gt; 고객문의 > <strong>문의하기</strong
				</p>
			</div>
			<div class="headTit">
				<h3><strong>문의하기</strong></h3>
			</div>
			<div>
				<form id="inquiryform" method="post" action="/inquiry/addInquiry">
					<c:if test="${not empty LOGIN_USER }">
						<input type="hidden" name="userNo" value="${LOGIN_USER.no}">
					</c:if>
					<table class="table">
						<colgroup>
							<col width="15%"></col>
							<col width="*"></col>
						</colgroup>
						<tr>
							<th class="required">구분</th>
							<td>
								<label class="label"><input type="radio" class="radio" name="category" value="rewards" checked>스프링리워즈</label>
								<label class="label"><input type="radio" class="radio" name="category" value="hotel">스프링호텔</label>
								<label class="label"><input type="radio" class="radio" name="category" value="finedining">스프링다이닝</label>
								<label class="label"><input type="radio" class="radio" name="category" value="shop">스프링SHOP</label>
							</td>
						</tr>
						<tr id="localhotel">
							<th class="required">호텔</th>
							<td>
							<select name="locationNo" disabled>
								<option label="호텔 선택">
								<c:forEach var="location" items="${location}">
								<option value="${location.no }" label="${location.name}스프링호텔">
								</c:forEach>
							</select>
							</td>
						</tr>
						<tr id="hotelinquiry">
							<th class="required">관련문의</th>
							<td>
							<select class="hotelCategory" name="qnaCategoryNo" disabled>
								<option label="선택">
								<c:forEach var="category" items="${category}">
									<c:if test="${category.groupNo eq 200 }">
										<option value="${category.no}" label="${category.name }">	
									</c:if>
								</c:forEach>
								<option value="500" label="기타">
							</select>
							</td>
						</tr>
						<tr id="reward">	
							<th class="required">질문유형</th>
							<td>
							<select class="rewardCategory" name="qnaCategoryNo">
								<option label="선택">
								<c:forEach var="category" items="${category}">
									<c:if test="${category.groupNo eq 100 }">
										<option value="${category.no}" label="${category.name }">	
									</c:if>
								</c:forEach>
								<option value="500" label="기타">
							</select>
							</td>
						</tr>
						<tr id="finedining">
							<th class="required">질문유형</th>
							<td>
							<select class="diningCategory" name="qnaCategoryNo" disabled>
								<option label="선택">
								<c:forEach var="category" items="${category}">
									<c:if test="${category.groupNo eq 300 }">
										<option value="${category.no}" label="${category.name }">	
									</c:if>
								</c:forEach>
								<option value="500" label="기타">
							</select>
							</td>
						</tr>
						<tr id="shop">	
							<th class="required">질문유형</th>
							<td>
							<select class="shopCategory" name="qnaCategoryNo" disabled>
								<option label="선택">
								<c:forEach var="category" items="${category}">
									<c:if test="${category.groupNo eq 400 }">
										<option value="${category.no}" label="${category.name }">	
									</c:if>
								</c:forEach>
								<option value="500" label="기타">
							</select>
							</td>
						</tr>
						<tr>
							<th class="required">제목</th>
							<td>
								<input type="text" name="title" style="width:400px;">
							</td>
						</tr>
						<tr>
							<th class="required">내용</th>
							<td>
								<textarea name="content"></textarea>
							</td>
						</tr>
						<tr>
							<th class="required">성명</th>
							<td>
							<c:choose>
								<c:when test="${empty LOGIN_USER}">
									<input type="text" name="qnaAuthor" style="width:150px;">
								</c:when>
								<c:when test="${not empty LOGIN_USER }">
									<input type="text" name="name" style="width:150px; background-color: #F0F0F0; border:none;"
									value="${LOGIN_USER.name}" readonly>
								</c:when>
							</c:choose>
							</td>
						</tr>
						<tr>
							<th class="required">이메일</th>
							<td>
							<c:choose>
								<c:when test="${empty LOGIN_USER}">
								<input type="text" name="email" style="width:250px;">
								</c:when>		
								<c:when test="${not empty LOGIN_USER }">
								<input type="text" name="email" value="${LOGIN_USER.email}" style="width:250px; background-color: #F0F0F0; border:none;" readonly>	
								</c:when>				
							</c:choose>
							</td>
						</tr>
						<tr>
							<th class="required">휴대전화</th>
							<td>
							<c:choose>
								<c:when test="${empty LOGIN_USER}">
								<input type="text" name="tel" style="width:180px; ">
								</c:when>
								<c:when test="${not empty LOGIN_USER}">
								<input type="text" name="tel" value="${LOGIN_USER.tel }" style="width:180px; background-color: #F0F0F0; border:none;" readonly>
								</c:when>	
							</c:choose>
							</td>
						</tr>
						<tr>
							<th>자택전화</td>
							<td>
								<input type="text" style="width:180px;">
							</td>
						</tr>
						<!-- <tr>
							<th class="required">자동입력방지</td>
							<td>
							  <div class="g-recaptcha" data-sitekey="6LfBUF0hAAAAABOljXJ3rEhAs_oytiR5EqtTgaLS"></div>
							</td>
						</tr> -->
					</table>
					
					<div class="privacyBox">
						<div class="tit">
						<h4> 필수적 개인정보 수집 및 이용에 대한 동의</h4>
						</div>
						<div class="clauseBox">
						<p>스프링호텔 고객의 문의 및 의견과 관련하여 귀사가 아래와 같이 본인의 개인정보를 수집 및 이용하는데 동의합니다.<br>
						<br>필수적인 개인정보의 수집 ㆍ이용에 관한 사항<br>
						<strong>① 수집ㆍ이용 항목 | 성명(국문·영문), 이메일, 휴대전화</strong><br>
						<strong>② 수집ㆍ이용 목적 | 문의에 대한 안내 및 서비스 제공</strong><br>
						<strong>③ 보유ㆍ이용 기간 | 수집ㆍ이용 동의일로부터 5년간</strong><br>
						※위 사항에 대한 동의를 거부할 수 있으나, 이에 대한 동의가 없을 경우 문의에 대한 안내 및 서비스 제공과 관련된 제반 절차 진행이 불가능 할 수 있음을 알려드립니다.</p>
						</div>
						<input type="checkBox" class="checkBox" name="clause"><label>동의함</label>
					</div>
					<div class="agreeBox">
						<div class="tit">
						<h4> 선택적 개인정보 수집 및 이용에 대한 동의</h4>
						</div>
						<div class="clauseBox">
						<p>스프링호텔 고객의 문의 및 의견과 관련하여 귀사가 아래와 같이 본인의 개인정보를 수집 및 이용하는데 동의합니다.<br>
						<br>선택적인 개인정보의 수집 ㆍ이용에 관한 사항<br>
						<strong>① 수집ㆍ이용 항목 | 자택전화</strong><br>
						<strong>② 수집ㆍ이용 목적 | 문의에 대한 안내 및 서비스 제공</strong><br>
						<strong>③ 보유ㆍ이용 기간 | 수집ㆍ이용 동의일로부터 5년간</strong><br>
						※위 사항에 대한 동의를 거부할 수 있으나, 이에 대한 동의가 없을 경우 문의에 대한 안내 및 서비스 제공과 관련된 일반전화 안내 진행이 불가능 할 수 있음을 알려드립니다.</p>
						</div>
						<input type="checkBox" class="checkBox"><label>동의함</label>
					</div>
					<button type="submit">등록</button>
				</form>
			</div>
		</div>
	</div>
</div>
<%@ include file="common/footer.jsp" %>
<script>
function contact() {
	document.querySelector('#container').style.height = "800px";
	document.querySelector("#content1").classList.add('active');
	document.querySelector("#content1").style.display = "block";
	document.querySelector("#content2").style.display = "none";
}
function inquire() {
	document.querySelector('#container').style.height = "1000px";
	document.querySelector("#content1").style.display = "none";
	document.querySelector("#content2").style.display = "block"
	document.querySelector('#localhotel').style.display ="none";
	document.querySelector('#hotelinquiry').style.display="none";
	document.querySelector('#finedining').style.display="none";
	document.querySelector('#shop').style.display="none";
}

$("input[name=category]").change(function() {
	let category=this.value;
	
	if (category == "rewards") {
		document.querySelector('#reward').style.display="revert";
		document.querySelector('#localhotel').style.display="none";
		document.querySelector('#hotelinquiry').style.display="none";
		document.querySelector('#finedining').style.display="none";
		document.querySelector('#shop').style.display="none";
		
		document.querySelector(".rewardCategory").disabled=false;
		document.querySelector("select[name='locationNo']").disabled=true;
		document.querySelector(".hotelCategory").disabled=true;
		document.querySelector(".diningCategory").disabled=true;
		document.querySelector(".shopCategory").disabled=true;
	} else if(category == "hotel"){
		document.querySelector('#reward').style.display="none";
		document.querySelector('#localhotel').style.display="revert";
		document.querySelector('#hotelinquiry').style.display="revert";
		document.querySelector('#finedining').style.display="none";
		document.querySelector('#shop').style.display="none";
		
		document.querySelector(".rewardCategory").disabled=true;
		document.querySelector("select[name='locationNo']").disabled=false;
		document.querySelector(".hotelCategory").disabled=false;
		document.querySelector(".diningCategory").disabled=true;
		document.querySelector(".shopCategory").disabled=true;
	} else if(category == "finedining"){
		document.querySelector('#reward').style.display="none";
		document.querySelector('#localhotel').style.display="none";
		document.querySelector('#hotelinquiry').style.display="none";
		document.querySelector('#finedining').style.display="revert";
		document.querySelector('#shop').style.display="none";
		
		document.querySelector(".rewardCategory").disabled=true;
		document.querySelector("select[name='locationNo']").disabled=true;
		document.querySelector(".hotelCategory").disabled=true;
		document.querySelector(".diningCategory").disabled=false;
		document.querySelector(".shopCategory").disabled=true;
	} else if(category == "shop"){
		document.querySelector('#reward').style.display="none";
		document.querySelector('#localhotel').style.display="none";
		document.querySelector('#hotelinquiry').style.display="none";
		document.querySelector('#finedining').style.display="none";
		document.querySelector('#shop').style.display="revert";
		
		document.querySelector(".rewardCategory").disabled=true;
		document.querySelector("select[name='locationNo']").disabled=true;
		document.querySelector(".hotelCategory").disabled=true;
		document.querySelector(".diningCategory").disabled=true;
		document.querySelector(".shopCategory").disabled=false;
	}
});

$("#inquiryform").submit(function() {
	// 개인정보수집 동의 체크하기
	let checklength = $("input[type=checkbox][name=clause]:checked").length;
	if (checklength == 0) {
		alert("개인정보 수집 및 이용에 대한 동의는 필수입니다.")
		return false;
	}	
	// 제목필드에 값이 있는지 체크하기
	if ($(":input[name=title]").val() === "") {
		alert("제목은 필수 입력값입니다.");
		return false;
	}
	
	// 내용필드에 값이 있는지 체크하기
	if ($(":input[name=content]").val() === "") {
		alert("내용은 필수 입력값입니다.");
		return false;
	}
	
	// 이름필드에 값이 있는지 체크하기
	if ($(":input[name=name]").val() === "") {
		alert("성명은 필수 입력값입니다.");
		return false;
	}
	
	// 이메일필드에 값이 있는지 체크하기
	if ($(":input[name=email1]").val() == "") {
		alert("이메일은 필수 입력값입니다.");
		return false;
	}
	if ($(":input[name=email2]").val() == "") {
		alert("이메일은 필수 입력값입니다.");
		return false;
	}
	
	// 휴대전화필드에 값이 있는지 체크하기
	if ($(":input[name=tel]").val() === "") {
		alert("휴대전화는 필수 입력값입니다.");
		return false;
	}
	
	//구글 reCAPTCHA 
	/* let captcha = 1;
	$.ajax({
	   url: '/VerifyRecaptcha',
	   type: 'post',
	   data: {
	       recaptcha: $("#g-recaptcha-response").val()
	   },
	   success: function(data) {
		   
	       switch (data) {
	           case 0:
	               captcha = 0;
	               console.log("자동 가입 방지 봇 통과");
	       		   break;
	           case 1:
	               alert("자동 가입 방지 봇을 확인 한뒤 진행 해 주세요.");
	               break;
	           default:
	               alert("자동 가입 방지 봇을 실행 하던 중 오류가 발생 했습니다. [Error bot Code : " + Number(data) + "]");
	          	   break;
	       }
	   }
	});
	
	if(captcha != 0) {
		return false;
	} */
	
	return true;
}); 

</script>
</body>
</html>