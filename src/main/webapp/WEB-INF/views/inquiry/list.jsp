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
			<li><a href="/inquiry/list" class="inquiry" onclick="inquire()"><span>문의내역</span></a></li>
		</ul>
		</c:if>	
	</div>
	<div class="contacts">
		<!-- 연락처 -->
		<div id="inquiry">
			<div class="location rgt">
				<font class="list">
					<span class="crPosit"></span> &gt; 고객문의 > <strong>문의내역</strong>
				</font>
			</div>
			<div class="headTit">
				<h3><strong>문의내역</strong></h3>
			</div>
			<div class="inquiryList">
				<c:choose>
					<c:when test="${empty inquiries}">
						<div class="col-12">
							<p class="text-center">문의내역이 존재하지 않습니다.</p>
						</div>
					</c:when>
					<c:otherwise>
							<table class="table">
								<thead>
									<tr>
										<th col width=15%>구분</th>
										<th>제목</th>
										<th col width=10%>작성자</th>
										<th col width=10%>작성일</th>
										<th col width=10%>답변상태</th>
									</tr>
								</thead>
								<tbody>
						<c:forEach var="inquiry" items="${inquiries}">
									<tr>
										<td>${inquiry.qnaCategory.name}</td> 
										<td><a href="detail?no=${inquiry.no}">${inquiry.title}</a></td>
										<c:choose>
											<c:when test="${not empty inquiry.qnaAuthor}">
												<td>${inquiry.qnaAuthor}</td>
											</c:when>
											<c:when test="${empty inquiry.qnaAuthor}">
												<td>${inquiry.user.name}</td>
											</c:when>
										</c:choose>
										<td><fmt:formatDate value="${inquiry.createdDate}" pattern="yyyy-M-d"/></td>
										<td>${inquiry.answerState}</td>
									</tr>
								</tbody>
						</c:forEach>
							</table>	
					</c:otherwise>
				</c:choose>
			</div>
		</div>
	</div>
</div>
</body>
<%@ include file="../common/footer.jsp" %>
</html>