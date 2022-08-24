<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/tags.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
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
			<li><a href="/contact" class="contact"><span>연락처</span></a></li>
			<li><a href="/inquiry/inquiryForm" class="inquiry"><span>문의하기</span></a></li>
		</ul>
		</c:if>		
		<c:if test="${not empty LOGIN_USER }">
		<ul class="menu">
			<li><a href="/contact" class="contact"><span>연락처</span></a></li>
			<li><a href="/inquiry/inquiryForm" class="inquiry"><span>문의하기</span></a></li>
			<li><a href="/inquiry/list?page=1" class="inquiry"><span>문의내역</span></a></li>
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
			
			<form id="filter-inquiry" >
			<input type="hidden" name="page" value="${page}" />
			<select name="state" class="m-2 float-end">
				<option value="" ${''.equals(answerState) ? 'selected' : '' } data-tag="${answerState}">모두보기</option>
				<option value="N" ${'N'.equals(answerState) ? 'selected' : '' } data-tag="${answerState}">답변대기</option>
				<option value="Y" ${'Y'.equals(answerState) ? 'selected' : '' } data-tag="${answerState}">답변완료</option>
			</select>
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
								<tbody id="body">
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
										<c:if test="${'N' eq inquiry.answerState }">
										<td class="answerReady">답변대기</td>
										</c:if>
										<c:if test="${'Y' eq inquiry.answerState }">
										<td class="answerSuccess">답변완료</td>
										</c:if>
									</tr>
								</tbody>
								</c:forEach>
							</table>	
					</c:otherwise>
				</c:choose>
				<div class="nav-footer" id="pagination">
				<nav aria-label="Page navigation">
				  <ul class="pagination pagination-sm" >
				    <li class="page-item ${pagination.currentPage eq '1' ? 'disabled' : ''}">
				      <a class="page-link" href="list?page=${pagination.currentPage - 1 }" aria-label="Previous">
				        <span aria-hidden="true">이전</span>
				      </a>
				    </li>
				    <c:forEach var="pageNo" begin="${pagination.beginPage}" end="${pagination.endPage}">
				    <li class="page-item ${pagination.currentPage eq pageNo ? 'active' : '' }" data-tag="${pageNo}"><a class="page-link" href="/inquiry/list?page=${pageNo}">${pageNo}</a></li>
				    </c:forEach>
				    <li class="page-item">
				      <a class="page-link ${pagination.currentPage eq pagination.totalPages ? 'disabled' : '' }" href="list?page=${pagination.currentPage + 1 }" aria-label="Next">
				        <span aria-hidden="true">다음</span>
				      </a>
				    </li>
				  </ul>
				  <ul class="search float-end">
					<input type="text" name="keyword" value="${keyword}" placeholder="검색어를 입력해주세요">
					<button type="button" class="searchBtn" style="height:30px; width:60px;" onclick="searchInquiry()">검색</button>
				  </ul> 
				</nav>
				</div>
				</form>
			</div>
		</div>
	</div>
</div>
<%@ include file="../common/footer.jsp" %>
</body>
<script>
$(function() {
	// 답변옵션 체크할 때
	$("select[name=state]").change(function() {
		changeStatus()
	}
	
	function changeStatus() {
		document.querySelector("input[name=page]").value =1;
		document.querySelector("input[name=state]").value = document.querySelector("select[name=state]").value;
		document.getElementById("filter-inquiry").submit();
	}
});
</script>
</html>