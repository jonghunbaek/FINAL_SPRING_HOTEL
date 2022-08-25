<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="tags.jsp" %>
<!DOCTYPE html>
<style>

    #footer {background-color: rgb(241, 227, 196); margin-top: 100px; height: 170px; float:left;}
    #footer-logo img {width: 120px; height: 120px;}
    #footer-content {margin-left: 50px;}
    #hr1 {border: solid 1px rgba(0,0,0,0.25); margin: 5px 0 20px;}
    #hr2 {border: solid 1px rgba(0,0,0,0.25); margin-top: 60px;}
    #div-footer1 {width: 1200px; height: 170px; margin: auto; padding-top: 20px;}
    #div-footer2 {width: 1200px; height: 183px; margin: auto; padding-top: 20px;}
    #div-link {text-align:right; border-left:1px solid rgba(0,0,0,0.1);}
    #div-link a {text-decoration: none; color:rgb(100,100,100);}
  	
</style>
<footer class="footer">
    <div class="container-fluid footer-container" id="footer">
        <div class="row" id="div-footer1">
            <div class="col-md-1" id="footer-logo">
                <a href="/"><img src="../resources/images/nav_logo2.png"></a>
            </div>
            <div class="col" id="footer-content">
                <div class="row">
                    <div style="width: 350px;">
						<img src="../resources/images/TheSpring.png">
                    </div>
                    <div style="width: 350px;">
                        <img src="../resources/images/SpringMonogram.png">
                    </div>
                    <div style="width: 350px;">
                        <img src="../resources/images/SpringStay.png">
                    </div>
                </div>
                <hr id="hr1">
                <div class="row" style="width: 1000px; font-size: 12px; color:rgb(100,100,100);">
                    <div class="col-sm-3">
                        <span class="ms-3">서울 스프링 호텔 &nbsp; 02-2333-3131</span>
                        <br>
                        <span class="ms-3">서울 스테이 &nbsp; 02-2230-0700</span>
                    </div>
                    <div class="col-sm-3">
                        <span>제주 스프링 호텔 &nbsp; 064-745-5114</span>
                        <br>
                        <span>스프링 리워즈 &nbsp; 02-2330-5528</span>
                    </div>
                    <div id="div-link" class="col-sm-6 pt-2">
                        <a href="/about"><span class="ms-5">스프링 호텔 소개</span></a>
                        <a href="/contact"><span class="ms-5">고객문의</span></a>
                        <a href=""><span class="ms-5">사이트맵</span></a>
                    </div>
                </div>
            </div>
        </div>
        <div class="row justify-content-center" style="position:relative; top:50px; left:320px; font-size:11px; color:darkgray; font-weight:bold; height:13px; width:1200px;">
        	<div class="col text-center" style="border-right:1px solid rgba(0,0,0,0.1); color:black;">
        		스프링리워즈 약관
        	</div>
        	<div class="col text-center" style="border-right:1px solid rgba(0,0,0,0.1); color:RGB(178, 147, 123);">
        		개인정보처리방침
        	</div>
        	<div class="col text-center" style="border-right:1px solid rgba(0,0,0,0.1);">
        		이메일무단수집금지
        	</div>
        	<div class="col text-center" style="border-right:1px solid rgba(0,0,0,0.1);">
        		윤리경영(부정제보)
        	</div>
        	<div class="col text-center" style="border-right:1px solid rgba(0,0,0,0.1);">
        		건축,시설물 안전관리
        	</div>
        	<div class="col-2"></div>
        	<div class="col-2">
        		ENGLISH&nbsp; 日本語&nbsp; 中國語
        	</div>
        </div>
        <div class="footer" id="div-footer2"> <hr id="hr2"/>
    		<div class="row px-2" style="color:darkgray; font-size:11px;">
	    		(주)호텔 스프링 서울특별시 중구 동호로 249(우 : 04605) &nbsp;대표이사 이응수 &nbsp;사업자등록번호123-12-12345  &nbsp;통신판매신고번호 중구00272 
    		</div>
    		<div class="row px-2" style="color:darkgray; font-size:11px;">
	    		호스팅서비스제공자 삼성SDS(주) 서울객실예약 sping.reserve@hta.com 제주객실예약 jejuspring@hta.com 
    		</div>
    		<div class="row px-2" style="font-size:10px;">
	    		Copyright (c) HOTEL SPRING CO.,LTD. All Rights Reserved 
    		</div>
    	</div>
    </div>    
</footer>