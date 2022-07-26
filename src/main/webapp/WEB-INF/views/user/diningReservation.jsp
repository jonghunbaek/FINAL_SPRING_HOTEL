<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/tags.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
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
	#div-hTitle {height: 40px; border-bottom: 3px solid #a1886f; margin-bottom: 20px 0px;}
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
			<h3 class="fs-7 border-dark border-bottom border-5 pb-3">예약 확인/취소 - 다이닝</h3>
			<div id="div-topmsg">
				<img src="/resources/images/mypage/myRsvDinTopMsg.jpeg">
			</div>
			<div id="div-box">
				<!-- <div class="mb-3 pb-3" id="div-date">
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
				</div> -->
				<div id="div-tableBox">
					<div id="div-hTitle">
						<h5><img src="/resources/images/mypage/myRsvDinTit.jpeg"></h5>
					</div>
					<div class="mt-2">Total : ${fn:length(rtRevs)}</div>
					<div class="mt-3" id="div-table">
						<table class="table background-color" summary="호텔,구분,이용금액(원),적립포인트,사용포인트,이용날짜로 구성된 게시물 리스트 표">
							<colgroup>
								<col width="16%" class="col1">
								<col width="20%" class="col2">
								<col width="20%" class="col3">
								<col width="*%" class="col4">
								<col width="15%" class="col5">
								<col width="10%" class="col6">
							</colgroup>
							<thead>
								<tr style="background-color: #faf9f4;">
									<th>예약번호</th>
									<th>호텔</th>
									<th>레스토랑</th>
									<th>예약인원</th>
									<th>예약일</th>
									<th>예약상태</th>
								</tr>
							</thead>
							<tbody>
								<c:choose>
									<c:when test="${empty rtRevs }">
									<tr class="first last">
										<td colspan="6">예약내역이 없습니다</td>
									</tr>
									</c:when>
									<c:when test="${not empty rtRevs }">
										<c:forEach var="rtRev" items="${rtRevs }">
										<tr class="first last">
											<td><a style="color:blue;" href="diningInfo?rtRevNo=${rtRev.reservationNo }">${rtRev.reservationNo }</a></td>
											<td>${rtRev.dn.location.name }신라호텔</td>
											<td>${rtRev.dn.name }</td>
											<td>성인 ${rtRev.adult },어린이 ${rtRev.child },유아 ${rtRev.baby }</td>
											<td><fmt:formatDate pattern="yyyy-MM-dd" value="${rtRev.visitDate }"/></td>
											<c:if test="${rtRev.status eq 'R'}">
												<td>예약중</td>
											</c:if>
											<c:if test="${rtRev.status eq 'I'}">
												<td>방문완료</td>
											</c:if>
											<c:if test="${rtRev.status eq 'D'}">
												<td>예약취소</td>
											</c:if>
											<c:if test="${rtRev.status eq 'O'}">
												<td>예약임박</td>
											</c:if>
										</tr>
										</c:forEach>
									</c:when>
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
$(function(){
	
})
	
</script>
</html>
