<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
<style>
	#nav-first {background-color: rgb(241, 227, 196);}
	#nav-first a {text-decoration: none; font-size: 12px; color: rgb(133, 111, 86);}
    #img-logo img {display: block; margin: auto; width: 230px; height: 80px;}
    #nav-second a {font-size: 17px; color: rgb(223, 212, 198); text-decoration:none}
    #nav-second {background-color: rgb(129, 114, 95);}
    
    #rev-div {position:relative; top:50px;}
   
    /* .nav-third::after{position:absolute;z-index:1;display:block;left:0;width:100%;height:50px;background:rgb(104, 88, 69);content:'';} */ 
    
    #nav a:hover {color: white;}
    
</style>
<title>nav</title>
</head>
<body>
<nav class="sticky-top" id="nav">
    <div class="container-fluid">
    	<div class="row fw-bold" id="nav-first">
	    	<div class="col pt-3">
	    	</div>
	    	<div class="col mr-3">
		       	<a href="/" id="img-logo" ><img src="../resources/images/nav_logo1.png"/></a>
		    </div>
		    <div class="col pt-3 me-4">
	       		<ul class="list-inline">
	               <c:if test="${empty LOGIN_USER}">
	                   <li class="list-inline-item"><a href="/login">로그인</a></li>
	                   <li class="list-inline-item"><a href="/register">스프링리워즈 가입</a></li>
	               </c:if>
	               <c:if test="${not empty LOGIN_USER }">
	               	   <li class="list-inline-item"><strong>${LOGIN_USER.name }</strong>님 환영합니다.</li>
	              	   <li class="nav-item"><a class="nav-link" href="/logout">로그아웃</a></li>
	               </c:if>
	                   <li class="list-inline-item dropdown">
	                       <a class="nav-link dropdown-toggle" href="" id="navbar-dropdown-menu" role="button" data-bs-toggle="dropdown" aria-expanded="false">예약확인</a>
	                       <ul class="dropdown-menu" aria-labelledby="navbar-dropdown-menu">
	                           <li><a class="dropdown-item" href="">객실</a></li>
	                           <li><a class="dropdown-item" href="">다이닝</a></li>
	                       </ul>
	                   </li>
	            </ul>
		    </div>
    	</div>
        <div class="row justify-content-md-center p-2" id="nav-second">
        	<div class="col-7">
        		<div class="d-flex justify-content-between">
	               <div id="rev"><a href="">예약</a>
	               		<ul class="list-inline nav-third">
	               			<li class="list-inline-item"><a href="">객실</a></li>
	               			<li class="list-inline-item"><a href="">다이닝</a></li>
	               		</ul>
	               </div>
	               <div id="room"><a href="">객실</a>
	               		<ul class="list-inline nav-third">
	               			<li class="list-inline-item"><a href="">스탠다드</a></li>
							<li class="list-inline-item"><a href="">이그제큐티브</a></li>
							<li class="list-inline-item"><a href="">스위트</a></li>
							<li class="list-inline-item"><a href="">더 이그제큐티브 라운지</a></li>
							<li class="list-inline-item"><a href="">전체 객실 보기</a></li>
						</ul>
	               </div>
	               <div id="dining"><a href="">다이닝</a>
	               		<ul class="list-inline nav-third">
	               			<li class="list-inline-item"><a href="">레스토랑</a></li>
							<li class="list-inline-item"><a href="">라운지&바</a></li>
						</ul>
	               </div>
		           <div id="info"><a href="">호텔소개</a>
		           		<ul class="list-inline nav-third">
	               			<li class="list-inline-item"><a href="">서울점</a></li>
							<li class="list-inline-item"><a href="">제주점</a></li>
							<li class="list-inline-item"><a href="">부산점</a></li>
							<li class="list-inline-item"><a href="">광주점</a></li>
							<li class="list-inline-item"><a href="">강릉점</a></li>
						</ul>
		           </div>
	               <div id="rewards"><a href="">스프링리워즈</a>
	               		<ul class="list-inline nav-third">
	               			<li class="list-inline-item"><a href="">스프링 리워즈</a></li>
							<li class="list-inline-item"><a href="">스프링 호텔</a></li>
							<li class="list-inline-item"><a href="">다이닝</a></li>
							<li class="list-inline-item"><a href="">기타</a></li>
						</ul>
	               </div>
	               <div id="store"><a href="">스프링스토어</a>
	               		<ul class="list-inline nav-third">
	               			<li class="list-inline-item"><a href="">기념 선물(가제)</a></li>
							<li class="list-inline-item"><a href="">베이커리(가제)</a></li>
						</ul>
	               </div>
        		</div>
    		</div>
    	</div>
    	<div class="row d-block" style="background-color: rgb(104, 88, 69); height:50px;">&nbsp</div>
    </div>
</nav>
<script type="text/javascript">
$(function() {
	
	let $rev = $("#rev");
	let $room = $("#room");
	let $dining = $("#dining");
	let $info = $("#info");
	let $rewards = $("#rewards");
	
	let $revDiv = $("#rev div");
	let $roomDiv = $("#room div");
	
	$rev.hover(
		function() {
			$revDiv.empty();

			let content = '';

			content += '<ul class="list-inline nav-third">'
			content += '	<li class="list-inline-item"><a href="">객실</a></li>';
			content += '	<li class="list-inline-item"><a href="">다이닝</a></li>';
			content += '</ul>'
			
			$revDiv.append(content);
	}, function() {
		$revDiv.empty();
	})
		
	$room.hover(
		function() {
			$roomDiv.empty();

			let content = '';

			content += '<ul class="list-inline nav-third">'
			content += '	<li class="list-inline-item"><a href="">스탠다드</a></li>';
			content += '	<li class="list-inline-item"><a href="">이그제큐티브</a></li>';
			content += '	<li class="list-inline-item"><a href="">스위트</a></li>';
			content += '	<li class="list-inline-item"><a href="">더 이그제큐티브 라운지</a></li>';
			content += '	<li class="list-inline-item"><a href="">전체 객실 보기</a></li>';
			content += '</ul>'
			
			$roomDiv.append(content);
	}, function() {
		$roomDiv.empty();
	})
	
	let $line = $(".line");

})
</script>
</body>
</html>