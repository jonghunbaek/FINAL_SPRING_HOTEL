<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../common/tags.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<style type="text/css">
#btn-setting {
		margin:0;
		font-size:30px;
		font-weight: 900;
		width: 100%;
		height: 100%;
		color:rgb(54, 74, 99);
		box-shadow: rgba(54, 74, 99, 1) 0 0px 0px 2px inset;
	}
	
	#btn-setting:hover {
		color: rgba(255, 255, 255, 1);
		box-shadow: rgba(54, 74, 99, 1) 0 80px 0px 2px inset;
	} 
	
	#btn-rev {
		position:relative; top:200px;
	}
	
</style>
<title>신규 예약등록</title>
</head>
<body>
<c:set var="menu" value="roomrev"/>
<%@ include file="../common/nav.jsp" %>
<div class="container-fluid">
	<div class="col-md-9 ms-sm-auto col-lg-10 px-md-4 mt-3 pb-3">
		<p id="keymap">
			<span data-feather="monitor"></span>&nbsp;&gt;&nbsp;<span data-feather="file-plus"></span>&nbsp;<strong style="font-size:13px;">신규 예약등록</strong>
		</p>
		<div class="row justify-content-center">
			<div class="col-3">
			</div>
			<div class="col-3">
				<h3 style="font-weight:bold; position:relative; top:150px;">* 예약 종류를 선택해주세요</h3>	
			</div>
			<div class="col-3">
			</div>
		</div>	
		<div class="row justify-content-center" id="btn-rev">
			<div class="col-3">
				<a href="addrevroom" class="btn setting" id="btn-setting" style="text-decoration: none;">객실</a>
			</div>
			<div class="col-3">
				<a href="addrevdining" class="btn setting" id="btn-setting" style="text-decoration: none;">다이닝</a>
			</div>
		</div>
	</div>	
</div>
</div>
<script src="https://cdn.jsdelivr.net/npm/feather-icons@4.28.0/dist/feather.min.js" integrity="sha384-uO3SXW5IuS1ZpFPKugNNWqTZRRglnUJK6UAZ/gxOX80nxEkN9NcGZTftn6RzhGWE" crossorigin="anonymous"></script>
<script src="${pageContext.request.contextPath}/resources/admincss/dashboard.js"></script>
</body>
</html>