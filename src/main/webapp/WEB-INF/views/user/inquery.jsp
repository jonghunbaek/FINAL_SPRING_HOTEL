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
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<style type="text/css">

	#container {padding-top: 65px; width: 1200px; height:1500px; margin: auto; padding-left: 0px; padding-right: 0px;}
	#container a {text-decoration: none; color: rgb(99, 62, 16);}
	#container h3 {font-family: 'Nanum Myeongjo', serif; color: rgb(133, 111, 86);}
	#container input {border: 1px solid rgb(204,204,204);}
	li {list-style: none;}
	#h5 {font-size: 15px; border-bottom: 3px; border-color: black; margin-top: 30px;}
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
	#div-topmsg {margin: 20px 0px;}
	#div-box {width: 866px; height: 100%; border: solid 1px; border-color: rgb(227, 214, 198); 
			  padding: 24px; font-size: 14px;}
    #div-inquery {display:block; margin:auto; float:right; width:62px; height:27px; position: relative; right:250px;
    			  background-color: rgb(62,43,44); text-align: center;}
    #div-inquery a {display: block; color: rgb(250,241,208); padding-top: 2px;}
	#div-tableBox {margin: 20px 0 26px;}
	#div-table {border: none; border-top: 1px solid #cdcbbe; width: 100%; border-collapse: collapse;}
	.table {text-align: center; font-size: 13px;}
	.table th {border-bottom: 1px solid #cdcbbe; color: #666666; line-height: 25px;}
	
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
			<h3 class="fs-7 border-dark border-bottom border-5 pb-3">문의 내역</h3>
			<div id="div-topmsg">
				<img src="/resources/images/mypage/myPageQnaMsg1.gif">
			</div>
			<div id="div-box">
				<div class="mb-3 pb-3" id="div-date">
					<span class="me-3" id="span-color">기간 조회</span>
					<label class="dateStart" for="searchStrtDt"></label>
					<input type="text" class="dateStart uiform text" id="searchStrtDt" name="searchStrtDt" value="" onclick="popCalendarLayer2('searchStrtDt','2022-08-02');" autocomplete="off">
					<a href="#none" onclick="popCalendarLayer2('searchStrtDt','2022-08-02');" >
					<span class="material-symbols-outlined" style="position: relative; top: 5px;">calendar_month</span></a>
					~
					<label class="dateEnd" for="searchEndDt"></label>
					<input type="text" class="dateEnd uiform text" id="searchEndDt" name="searchEndDt" value="" onclick="popCalendarLayer2('searchEndDt','2022-08-02');" autocomplete="off">
					<a href="#none" onclick="popCalendarLayer2('searchEndDt','2022-08-02');" >
					<span class="material-symbols-outlined" style="position: relative; top: 5px;">calendar_month</span></a>
					<div class="mt-1" id="div-inquery">
						<a href="javascript:void(0);"><span>조회</span></a>
					</div>
				</div>
				<div id="div-tableBox">
					<div class="mt-2">
						<span>Total : ${itemSize }</span>
						<span style="float:right;">※ 문의내역을 클릭하면 상세정보로 이동할 수 있습니다.</span>
					</div>
					<div class="mt-3" id="div-table">
						<table class="table background-color">
							<colgroup>
								<col width="8%" class="col1">
								<col width="16%" class="col2">
								<col width="15%" class="col3">
								<col width="*%" class="col4">
								<col width="15%" class="col5">
								<col width="10%" class="col6">
							</colgroup>
							<thead>
								<tr style="background-color: #faf9f4;">
									<th>번호</th>
									<th>호텔</th>
									<th>문의유형</th>
									<th>제목</th>
									<th>문의일자</th>
									<th>답변여부</th>
								</tr>
							</thead>
							<tbody id="table-tbody">
							<c:choose>
								<c:when test="${empty inquery }">
									<tr class="first last">
										<td colspan="6">문의 내역이 없습니다.</td>
									</tr>
								</c:when>
								<c:otherwise>
									<c:forEach var="qna" items="${inquery }">
										<tr id="table-tr-${qna.no }" data-no="${qna.no }" onclick="moveQnaDetail(this);" onmouseover="mouseOver(this);" onmouseout="mouseOut(this);">
											<td>${qna.no }</td>
											<td>${qna.location.name } 스프링</td>
											<td>${qna.qnaCategory.name }</td>
											<td>${qna.title }</td>
											<td><fmt:formatDate value="${qna.createdDate }" pattern="yyyy년 MM월 dd일"/></td>
											<td>
												<c:if test="${qna.answerState eq 'N' }">
												 	답변대기
												</c:if>
												<c:if test="${qna.answerState eq 'Y' }">
												 	답변완료
												</c:if>
											</td>
										</tr>
									</c:forEach>
								</c:otherwise>
							</c:choose>
							</tbody>
						</table>
					</div>
				</div>
			 </div>
		</div>
	</div>
	
</div>
<%@ include file="../common/footer.jsp" %>
</body>
<script type="text/javascript">

	// 문의 상세로 이동
	function moveQnaDetail(data) {
		let no = data.getAttribute('data-no');
		location.href = "/inquiry/detail?no=" + no;
	}
	
	// 마우스 이벤트
	function mouseOver(data) {
		let no = data.getAttribute('data-no');
	 	let select = document.querySelector('#table-tr-' + no);
	 	select.style.backgroundColor = 'rgb(240,240,240)';
	}
	
	// 마우스 이벤트
	function mouseOut(data) {
		let no = data.getAttribute('data-no');
	 	let select = document.querySelector('#table-tr-' + no);
	 	select.style.backgroundColor = '';
	}
	
</script>
</html>
