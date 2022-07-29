<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="tags.jsp" %>
<!DOCTYPE html>
<style>
    #nav-top {font-size: 13px; width: 1200px; height: 10px;}
    #nav {background-color: rgb(241, 227, 196); text-align: center;}
    a {text-decoration: none; color: rgb(133, 111, 86);}
    .nav-link, .dropdown-item {color: rgb(133, 111, 86);}
    a:hover, .nav-link:hover, .dropdown-item:hover {color: brown;}
    li {list-style-type: none; text-align: center;}
    #nav-div {width: 1200px; height: 10px; margin-left: 100px; display: inline-block;}
    #nav-top li {display: inline-block; margin-left: 20px;}
    #nav-left li {
        display: inline-block;
        margin-right: 50px; 
        font-size: 17px; 
        font-weight: bold; 
        position: relative; 
        top: 20px;
    }
    #nav-left img {width: 25px; height: 25px; margin-left: 10px;}
    #nav-right li {
        display: inline-block;
        margin-left: 50px; 
        font-size: 17px; 
        font-weight: bold; 
        position: relative; 
        top: 20px;
    }
    #nav-right img {width: 25px; height: 25px; margin-left: 10px;}
    #img-logo {display: block; margin-left: 70px;}
    #img-logo img {text-align: center; width: 230px; height: 80px;}
</style>
<nav class="navbar" id="nav">
    <div class="container" id="nav-container">
        <!-- 최상단 nav -->
        <div class="nav" id="nav-div" >
            <div class="nav-top" id="nav-top">
                <ul style="float: right;">
                <c:if test="${empty LOGIN_USER}">
                    <li class="nav-item"><a href="/login">로그인</a></li>
                    <li class="nav-item"><a href="/register">스프링리워즈 가입</a></li>
                </c:if>
                <c:if test="${not empty LOGIN_USER }">
                	<li><strong>${LOGIN_USER.name }</strong>님 환영합니다.<li>
               		<li class="nav-item"><a class="nav-link" href="/logout">로그아웃</a></li>
                </c:if>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="" id="navbar-dropdown-menu" role="button" data-bs-toggle="dropdown" aria-expanded="false">예약확인</a>
                        <ul class="dropdown-menu" aria-labelledby="navbar-dropdown-menu">
                            <li><a class="dropdown-item" href="">객실</a></li>
                            <li><a class="dropdown-item" href="">다이닝</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
        <!-- 왼쪽 -->
        <div class="row">
            <div class="col" id="nav-left">
                <ul class="navbar-nav" style="float: left; flex-direction: row;">
                    <li><a href="">호텔찾기<img src="../resources/images/find_hotel.png"></a></li>
                    <li><a href="">예약<img src="../resources/images/reservation.png"></a></li>
                </ul>
            </div>
        </div>
        <!-- 로고 -->
        <div class="row" id="img-logo">
            <div class="col-md-4">
                <a href="/"><img src="../resources/images/nav_logo1.png"/></a>
            </div>
        </div>
        <!-- 오른쪽 -->
        <div class="row">
            <div class="col" id="nav-right">
                <ul class="navbar-nav" style="float: right; flex-direction: row;">
                    <li><a href="">호텔소개</a></li>
                    <li><a href="">고객문의</a></li>
                    <li><a href="">스프링리워즈</a></li>
                </ul>
            </div>      
        </div>
    </div>
</nav>