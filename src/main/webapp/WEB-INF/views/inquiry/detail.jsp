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
<script src="https://www.google.com/recaptcha/api.js"></script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="${pageContext.request.contextPath}/resources/css/contact.css" rel="stylesheet">
<title>Spring Hotel</title>
</head>
<body>
<%@ include file="../common/nav.jsp" %>
<div class="container-fluid" id="container">
	<div id="div-sidebar">
		<h3 class="fs-7 border-dark border-bottom border-5 pb-3"><strong>고객 문의</strong></h3>
		<c:if test="${empty LOGIN_USER }">
		<ul class="menu">
			<li><a href="/contact" class="contact" onclick="contact()"><span>연락처</span></a></li>
			<li><a href="/contact" class="inquiry" onclick="inquire()"><span>문의하기</span></a></li>
		</ul>
		</c:if>		
		<c:if test="${not empty LOGIN_USER }">
		<ul class="menu">
			<li><a href="/contact" class="contact" onclick="contact()"><span>연락처</span></a></li>
			<li><a href="/contact" class="inquiry" onclick="inquire()"><span>문의하기</span></a></li>
			<li><a href="#" class="inquiry" onclick="inquire()"><span>문의내역</span></a></li>
		</ul>
		</c:if>	
	</div>
	
	<div class="contacts">
		<!-- 연락처 -->
		<div id="detail">
			<div class="location rgt">
				<font class="list">
					<span class="crPosit"></span> &gt; 고객문의 > <strong>문의내역</strong>
				</font>
			</div>
			<div class="headTit">
				<h3><strong>문의내역</strong></h3>
			</div>
			<div class="inquiryDetail">
					<c:if test="${empty inquiry}">
						<div class="col-12">
							<p class="text-center">문의내역이 존재하지 않습니다. ${inquiry}</p>
						</div>
					</c:if>
					<table class="table">
						<tbody>
							<tr>
								<td width="120px">제목</td>
								<td>${inquiry.title}</td>
							</tr>
							<c:if test="${empty inquiry.location.name}">
							<tr>
								<td>구분</td>
								<td>${inquiry.qnaCategory.name}</td>
							</tr>
							</c:if>
							<c:if test="${not empty inquiry.location.name}">
							<tr>
								<td>지역</td>
								<td>${inquiry.location.name}스프링호텔</td> 
							</tr>
								<td>구분</td>
								<td>${inquiry.qnaCategory.name}</td>
							<tr>
							</c:if>
								<td>작성자</td>
								<c:choose>
								<c:when test="${empty inquiry.qnaAuthor}">
								<td>${inquiry.user.name}</td>
								</c:when>								
								<c:otherwise>
								<td>${inquiry.qnaAuthor}</td>
								</c:otherwise>
								</c:choose>
							</tr>
							<tr>	
								<td>작성일</td>
								<td><fmt:formatDate value="${inquiry.createdDate}" pattern="yyyy-M-d"/></td>
							</tr>
							<tr>
								<td>내용</td>
								<td colspan="3" style="padding:10px;" height="200">${inquiry.content}</td>
							</tr>
						</tbody>
					</table>	
					<c:if test="${inquiry.answerState eq 'Y'}">
					<div class="headTit">
						<h3><strong>문의답변</strong></h3>
					</div>
					<table class="table">
						<tr>
							<td width="120px">작성자</td>
							<td>관리자</td>
						</tr>
						<tr>
							<td>답변일</td>
							<td><fmt:formatDate value="${inquiry.answerCreatedDate}" pattern="yyyy-M-d"/></td>
						</tr>
						<tr>
							<td>내용</td>
							<td colspan="3" style="padding:10px;" height="200">${inquiry.answerContent}</td>
						</tr>
					</table>
					</c:if>
					<c:if test="${inquiry.answerState eq 'N' }">
					<button type="button" onclick="location.href='/inquiry/modify?no=${inquiry.no}'">수정</button>
					<button type="button" onclick="location.href='/inquiry/delete?no=${inquiry.no}'">삭제</button>
					</c:if>
					<button style="float:right" type="button" onclick="location.href='/inquiry/list'">목록</button>
			</div>
		</div>
	</div>
</div>
</body>
<%@ include file="../common/footer.jsp" %>
</html>