<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
	<script src="https://code.jquery.com/jquery-latest.min.js"></script>
<style>
/* 폰트적용 */
@import url(//fonts.googleapis.com/earlyaccess/notosanskr.css);
	html {font-family: "Noto Sans KR", sans-serif; font-size:16px;}
	
	.category-sort-txt{
	float:left;
	width:30%;
	line-height:30px;
	}
	
	.category-sort-select{	float:right;
	width:30%;
	line-height:30px;
	text-align:right;
	}
	
</style>
</head>
<body>
<%@ include file="../header.jsp" %>
<%@ include file="../categoryTitle.jsp" %>

<!-- CATEGORY CONTENTS TOP-->
<div class="container">
	<div class="category-top">
		<div class="row">
			<div class="col">
				<div class="category-top-txt" style="float:left;">
					<p>회원 주문조회</p>
				</div>
				<div class="category-top-txt" style="float:left;">
					<p>비회원 주문조회</p>
				</div>
			</div>
		</div>
	</div>
	
<!-- CATEGORY ITEMS CONTENT-->
	<div class="category-contents">
		<div class="row">
			<div class="col-4">
				<div class="category-contents-detail">
					<p>주문시 이메일이나 문자로 수령한 주문번호와 비밀번호를 입력하세요</p>
				</div>
			</div>
		</div>
		<form method="post" action="" onsubmit="">
		<div class="form-area" style="height:200px; border-top:1px solid red; border-bottom:1px solid red;">
			<ul>
				<li>
				<lable>주문번호</lable>
				<div class="form-box">
					<input type="text" placeholder="주문번호를 입력하세요" autofocus="autofocus">
					<inp
				</div>
				</li>
				<li>
				<lable>주문자명</lable>
				<div class="form-box">
					<input type="text" placeholder="주문자명을 입력하세요">
					<inp
				</div>
				</li>
				
			</ul>
		</div>
		</form>
	</div>
</div>


<%@ include file="../footer.jsp" %>
</body>
</html>