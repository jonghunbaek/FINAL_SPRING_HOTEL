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
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<style type="text/css">
	#container {padding-top: 65px; width: 1200px; height:1292px; margin: auto; padding-left: 0px; padding-right: 0px;}
	#container h3 {font-family: 'Nanum Myeongjo', serif; color: rgb(133, 111, 86);}
	#container a {text-decoration: none; color: rgb(99, 62, 16);} 
	li {list-style: none;}
	#div-sidebar {float: left; width: 264px; height: 224px; background-color: rgb(241, 227, 196);
	 			  margin: auto; padding: 23px; text-align: left; border: 1px solid #e9dab8;}
	#div-sidebar ul {padding: 0px;}
	#div-sidebar li {color: rgb(99, 62, 16); font-weight: bold; margin-top: 25px; text-align: left;}
	#div-sidebar a {display: block;}
	#div-contents {float: right; margin: auto; width: 866px; height: 1292px;}
</style>
<title>Spring Hotel</title>
</head>
<body>
<%@ include file="common/nav.jsp" %>
<div class="container-fluid" id="container">
	<div id="div-sidebar">
		<h3 class="fs-7 border-dark border-bottom border-5 pb-3">고객 문의	</h3>
		<ul class="menu">
			<li><a href=""><span>연락처</span></a></li>
			<li><a href=""><span>문의하기</span></a></li>
		</ul>
	</div>
		
	<div id="div-contents">
		<h3 class="fs-7 border-dark border-bottom border-5 pb-3">문의하기</h3>
		<br>
		<div>
			
		</div>
		<div>
			
		</div>
	</div>
</div>
<%@ include file="common/footer.jsp" %>
</body>
</html>