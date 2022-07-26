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
				<form action="modify" method="post">
				<input type="hidden" name="no" value="${inquiry.no}" />
					<table class="table">
						<tbody>
							<tr>
								<td width="120px">제목</td>
								<td colspan="3">
								<input type="text" class="form-control"name="title" style="width:600px;" value="${inquiry.title}">
								</td>
							</tr>
							<tr>
								<td>작성자</td>
								<c:if test="${empty inquiry.user }">
								<td> ${inquiry.author }
								</c:if>
								<c:if test="${not empty inquiry.user }">
								<td width="40%">${inquiry.user.name}</td>
								</c:if>
							</tr>
							<tr>
								<td width="15%">작성일</td>
								<td><fmt:formatDate value="${inquiry.createdDate}" pattern="yyyy-M-d"/></td>
							</tr>
							<tr>
								<td><label class="form-label">내용</label></td>
								<td colspan="3" style="padding:10px;" height="200">
								<textarea class="form-control" style="width:600px;" name="content">${inquiry.content}</textarea>
								</td>
							</tr>
						</tbody>
					</table>	
					<div>
					<button type="submit">등록</button>
					<button type="button" onclick="location.href='/inquiry/detail?no=${inquiry.no}'">취소</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
</body>
<%@ include file="../common/footer.jsp" %>
</html>