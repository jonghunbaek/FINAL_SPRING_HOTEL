<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/tags.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!-- roomRev1 CSS -->
<link href="${pageContext.request.contextPath}/resources/room/roomRev1.css" rel="stylesheet">
<!-- calendar range picker -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">
<link rel="stylesheet" type="text/css" href="https://npmcdn.com/flatpickr/dist/themes/airbnb.css">
<script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>
<script src="https://npmcdn.com/flatpickr/dist/l10n/ko.js"></script>
<!-- total zone -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<title>Spring Hotel</title>
</head>
<body>
<c:set var="menu" value="roomRev1"/>
<%@ include file="../common/nav.jsp" %>
	<div class="contain">
		<div class="container">
			<!-- Rev step 1 -->
			<div class="rev-step">
				<img alt="" src="../resources/images/room/rev/revTitle1.png">
			</div>
			<form id="form-rev" action="roomRev2" method="get">
				<!-- 검색 시작 -->
				<div class="rev-main-search">
					<div class="s-city">
						<span class="grey">호텔 또는 도시</span>
						<div class="city-box">
							<span class="city-text"><input type="text" name="city"
								placeholder="호텔을 선택해주세요."></span> <span class="city-img"><img
								alt="" src="../resources/images/room/rev/search_icon.png"></span>
						</div>
					</div>
					<!-- 체크인아웃 -->
					<div class="s-date">
						<div class="checkin">
							<span class="grey">체크인</span>
							<div class="ckindate">
								<!-- 달력 from-->
								<label for="from"></label> <input type="text" class="c-from"
									id="from" pattern="yyyy-dd-mm" value="" />
							</div>
						</div>
						<div class="night">
							<span class="night-img"><img alt=""
								src="../resources/images/room/rev/ico_night.png"></span>
							<div class="night-count">박</div>
							<!-- 몇 박  -->
						</div>
						<div class="checkout">
							<span class="grey">체크아웃</span>
							<div class="ckoutdate">
								<!-- 달력 to -->
								<label for="to"></label> <input type="text" class="c-to" id="to"
									pattern="yyyy-dd-mm" value="" />
							</div>
						</div>
					</div>
					<!-- 객실/성인/어린이 -->
					<div class="s-room">
						<div class="r-count">
							<span class="grey">객실</span>
							<div class="c1">3</div>
						</div>
						<div class="r-adult">
							<span class="grey">성인</span>
							<div class="c2">3</div>
						</div>
						<div class="r-child">
							<span class="grey">어린이</span>
							<div class="c3">3</div>
						</div>

					</div>
					<div class="s-btn">
						<a href=""><img alt="search"
							src="../resources/images/room/rev/brw_search.gif"> </a>
					</div>
				</div>

				<!-- drop search box -->
				<div class="drop-search-box">
					<div class="search-default">예약을 원하시는 호텔, 날짜, 인원을 선택해주세요.</div>

					<div class="part-test"></div>

					<!-- 도시 선택 -->
					<div class="city-block">
						<div class="city-title1">권역별</div>
						<div class="city-title2">호텔정보</div>
					</div>

					<p>
						<img alt=""
							src="../resources/images/room/rev/txt_hotel_search_noti.png">
					</p>
					<div class="city-box">
						<div class="btn-title">
							신라호텔
							<div class="city-btn">
								<div class="seoul">
									<a href="">서울</a>
								</div>
								<div class="jeju">
									<a href="">제주</a>
								</div>
								<div class="busan">
									<a href="">부산</a>
								</div>
								<div class="gangneung">
									<a href="">강릉</a>
								</div>
								<div class="gwangju">
									<a href="">광주</a>
								</div>
							</div>
						</div>
						<div class="city-info">
							<!-- 이미지 : 다중선택시 슬라이드 -->
							<div class="slide">슬라이드</div>
							<!-- 제목 과 주소
						<div class="info">
						<img alt="주소" src="">
						</div>
					 -->

							<!-- 클릭시 슬라이드 -->
							<div class="">클릭 슬라이드</div>
						</div>
					</div>
					<div class="ok-btn">
						<a href=""><img alt=""
							src="../resources/images/room/rev/ok.gif"></a>
					</div>

					<div class="part-test"></div>

					<!-- 객실 / 인원 카운트 -->
					<div class="room-box-1">
						<div class="room-add1">
							<dl>
								<dt>객실1</dt>
								<dd>
									<ul>
										<li class="first"><strong class="tit">성인</strong>
											<div class="number">
												<a href=""> <svg xmlns="http://www.w3.org/2000/svg"
														width="16" height="16" fill="currentColor"
														class="bi bi-dash-lg" viewBox="0 0 16 16">
	  												<path fill-rule="evenodd"
															d="M2 8a.5.5 0 0 1 .5-.5h11a.5.5 0 0 1 0 1h-11A.5.5 0 0 1 2 8Z" />
												</svg>
												</a> <span>1</span> <a href=""> <svg
														xmlns="http://www.w3.org/2000/svg" width="16" height="16"
														fill="currentColor" class="bi bi-plus-lg"
														viewBox="0 0 16 16">
	  											<path fill-rule="evenodd"
															d="M8 2a.5.5 0 0 1 .5.5v5h5a.5.5 0 0 1 0 1h-5v5a.5.5 0 0 1-1 0v-5h-5a.5.5 0 0 1 0-1h5v-5A.5.5 0 0 1 8 2Z" />
												</svg>
												</a>
											</div></li>
										<li><strong class="tit">어린이</strong>
											<div class="number">
												<a href=""> <svg xmlns="http://www.w3.org/2000/svg"
														width="16" height="16" fill="currentColor"
														class="bi bi-dash-lg" viewBox="0 0 16 16">
	  												<path fill-rule="evenodd"
															d="M2 8a.5.5 0 0 1 .5-.5h11a.5.5 0 0 1 0 1h-11A.5.5 0 0 1 2 8Z" />
												</svg>
												</a> <span>1</span> <a href=""> <svg
														xmlns="http://www.w3.org/2000/svg" width="16" height="16"
														fill="currentColor" class="bi bi-plus-lg"
														viewBox="0 0 16 16">
	  											<path fill-rule="evenodd"
															d="M8 2a.5.5 0 0 1 .5.5v5h5a.5.5 0 0 1 0 1h-5v5a.5.5 0 0 1-1 0v-5h-5a.5.5 0 0 1 0-1h5v-5A.5.5 0 0 1 8 2Z" />
												</svg>
												</a>
											</div></li>
									</ul>
								</dd>
							</dl>
						</div>
						<div class="room-add1">
							<dl>
								<!-- 추가버튼을 누르면 이 div가 보인다 -->
								<dt class="room-add2">객실2</dt>
								<dd>
									<ul>
										<li class="first"><strong class="tit">성인</strong>
											<div class="number">
												<a href=""> <svg xmlns="http://www.w3.org/2000/svg"
														width="16" height="16" fill="currentColor"
														class="bi bi-dash-lg" viewBox="0 0 16 16">
	  												<path fill-rule="evenodd"
															d="M2 8a.5.5 0 0 1 .5-.5h11a.5.5 0 0 1 0 1h-11A.5.5 0 0 1 2 8Z" />
												</svg>
												</a> <span>1</span> <a href=""> <svg
														xmlns="http://www.w3.org/2000/svg" width="16" height="16"
														fill="currentColor" class="bi bi-plus-lg"
														viewBox="0 0 16 16">
	  											<path fill-rule="evenodd"
															d="M8 2a.5.5 0 0 1 .5.5v5h5a.5.5 0 0 1 0 1h-5v5a.5.5 0 0 1-1 0v-5h-5a.5.5 0 0 1 0-1h5v-5A.5.5 0 0 1 8 2Z" />
												</svg>
												</a>
											</div></li>
										<li><strong class="tit">어린이</strong>
											<div class="number">
												<a href=""> <svg xmlns="http://www.w3.org/2000/svg"
														width="16" height="16" fill="currentColor"
														class="bi bi-dash-lg" viewBox="0 0 16 16">
	  												<path fill-rule="evenodd"
															d="M2 8a.5.5 0 0 1 .5-.5h11a.5.5 0 0 1 0 1h-11A.5.5 0 0 1 2 8Z" />
												</svg>
												</a> <span>1</span> <a href=""> <svg
														xmlns="http://www.w3.org/2000/svg" width="16" height="16"
														fill="currentColor" class="bi bi-plus-lg"
														viewBox="0 0 16 16">
	  											<path fill-rule="evenodd"
															d="M8 2a.5.5 0 0 1 .5.5v5h5a.5.5 0 0 1 0 1h-5v5a.5.5 0 0 1-1 0v-5h-5a.5.5 0 0 1 0-1h5v-5A.5.5 0 0 1 8 2Z" />
												</svg>
												</a>
											</div></li>
										<!-- 추가 버튼 -->
										<li class="room-add-option"><a href=""> <span
												class="room-add">+</span> <span class="room-add-text">추가</span>
										</a></li>
									</ul>
								</dd>
							</dl>
						</div>

						<div class="room-add1">
							<dl>
								<dt class="room-add2">객실3</dt>
								<dd>
									<ul>
										<li class="first"><strong class="tit">성인</strong>
											<div class="number">
												<a href=""> <svg xmlns="http://www.w3.org/2000/svg"
														width="16" height="16" fill="currentColor"
														class="bi bi-dash-lg" viewBox="0 0 16 16">
	  												<path fill-rule="evenodd"
															d="M2 8a.5.5 0 0 1 .5-.5h11a.5.5 0 0 1 0 1h-11A.5.5 0 0 1 2 8Z" />
												</svg>
												</a> <span>1</span> <a href=""> <svg
														xmlns="http://www.w3.org/2000/svg" width="16" height="16"
														fill="currentColor" class="bi bi-plus-lg"
														viewBox="0 0 16 16">
	  											<path fill-rule="evenodd"
															d="M8 2a.5.5 0 0 1 .5.5v5h5a.5.5 0 0 1 0 1h-5v5a.5.5 0 0 1-1 0v-5h-5a.5.5 0 0 1 0-1h5v-5A.5.5 0 0 1 8 2Z" />
												</svg>
												</a>
											</div></li>
										<li><strong class="tit">어린이</strong>
											<div class="number">
												<a href=""> <svg xmlns="http://www.w3.org/2000/svg"
														width="16" height="16" fill="currentColor"
														class="bi bi-dash-lg" viewBox="0 0 16 16">
	  												<path fill-rule="evenodd"
															d="M2 8a.5.5 0 0 1 .5-.5h11a.5.5 0 0 1 0 1h-11A.5.5 0 0 1 2 8Z" />
												</svg>
												</a> <span>1</span> <a href=""> <svg
														xmlns="http://www.w3.org/2000/svg" width="16" height="16"
														fill="currentColor" class="bi bi-plus-lg"
														viewBox="0 0 16 16">
	  											<path fill-rule="evenodd"
															d="M8 2a.5.5 0 0 1 .5.5v5h5a.5.5 0 0 1 0 1h-5v5a.5.5 0 0 1-1 0v-5h-5a.5.5 0 0 1 0-1h5v-5A.5.5 0 0 1 8 2Z" />
												</svg>
												</a>
											</div></li>
									</ul>
								</dd>
							</dl>
						</div>
						<!-- notice list  -->
						<ul class="notice">

							<li>
								<!-- : --> ※ 객실은 최대 3개까지 선택 가능합니다.
							</li>
							<li>
								<!-- :b --> ※ 어린이 37개월 이상 ~ 만 12세 이하
							</li>
						</ul>
						<div class="ok-btn1">
							<a href="#"><img alt=""
								src="../resources/images/room/rev/ok.gif"></a>
						</div>
					</div>
					<div class="part-test"></div>

					<!-- 검색을 누르면 나오는 객실  -->
					<!-- 객실(갯수) /////////////// 키워드 별 /// 가격 순  -->
					<div class="after-search-box">
						<div class="rev-tab">
							<!-- inline -->
							<div class="tab">
								<div class="tab-start">객실(5)</div>
								<span class="tab-sort"> <select>
										<option>낮은 가격 순</option>
										<option>높은 가격 순</option>
										<option>최신 순</option>
										<option>인기 순</option>
										<option>추천 순</option>
								</select>
								</span>
							</div>
							<!-- 아코디언 박스 -->
							<div class="accordion" id="accordionExample">
								<div class="accordion-item">
									<h2 class="accordion-header" id="headingOne">
										<button class="accordion-button" type="button"
											data-bs-toggle="collapse" data-bs-target="#collapseOne"
											aria-expanded="true" aria-controls="collapseOne">
											<span>키워드</span>
										</button>
									</h2>
									<div id="collapseOne" class="accordion-collapse collapse show"
										aria-labelledby="headingOne"
										data-bs-parent="#accordionExample">
										<div class="accordion-body">
											<div class="accordion-box">
												<strong>키워드 검색</strong><span class="select-clear"><a
													href="#"><img alt="선택해제"
														src="../resources/images/room/rev/check_clear.png"></a></span>
											</div>
											<div class="check-keyword">
												<!-- inline  -->
												<div>
													<input class="css-checkbox checkbox" type="checkbox"
														data-type="outdoor-pool" name="keyword"
														value="OutdoorPool"> <label class="css-label">야외수영장</label>
												</div>
												<div>
													<input class="css-checkbox checkbox" type="checkbox"
														data-type="breakfast" name="keyword" value="breakfast">
													<label class="css-label">조식</label>
												</div>
												<div>
													<input class="css-checkbox checkbox" type="checkbox"
														data-type="winery" name="keyword" value="winery">
													<label class="css-label">와이너리</label>
												</div>
												<div>
													<input class="css-checkbox checkbox" type="checkbox"
														data-type="spa" name="keyword" value="spa"> <label
														class="css-label">스파</label>
												</div>
												<div>
													<input class="css-checkbox checkbox" type="checkbox"
														data-type="lounge" name="keyword" value="lounge">
													<label class="css-label">라운지혜택</label>
												</div>
												<div>
													<input class="css-checkbox checkbox" type="checkbox"
														data-type="extrabed" name="keyword" value="extrabed">
													<label class="css-label">엑스트라 베드</label>
												</div>
												<div class="keyword-button">
													<a href="#"><img alt="적용"
														src="../resources/images/room/rev/step1_select.gif"></a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>

							<!-- 숙소 리스트  -->
							<div class="rev-room-info">
								<!-- : -->
								<p>* 할인이 적용된 요금입니다.</p>
								<span>객실예약 연락처 : 02-2230-3310 <a href="#">[ 문의하기 ]</a>
								</span>
							</div>
							<div class="rev-room-list">
								<ul class="rev-room-list-ul">
									<li class="room-first">
										<!-- 룸1개 생성  -->
										<dl class="room-info">
											<!-- 사진/내용/가격/버튼 포함 -->
											<dt class="p-name">Deluxe</dt>
											<!-- 룸 이름 -->
											<dd class="p-img">
												<a href="#" onclick="open-img-pop"> <img alt="객실사진"
													src="../resources/images/room/detail/d1.jpg">
												</a>
											</dd>
											<!-- 이미지 -->
											<dd class="p-cont">
												<ul class="room-detail-info">
													<li>객실크기 : 36㎡</li>
													<li>침대타입 : 더블(킹 사이즈), 트윈</li>
												</ul>
												<a href="#" onclick="open-img-pop"> <span>객실 자세히
														보기</span>
												</a>
											</dd>
											<!-- 정보 -->
											<dd class="p-detail">
												<div class="price-and-btn">
													<div class="detail-price">
														<strong class="price">350,000원 ~</strong> <span
															class="days">1박</span>
													</div>
													<!-- 가격/ 작은글씨: 몇 박  -->
													<a href=""> <img alt="닫기버튼"
														src="../resources/images/room/rev/step1_open.gif">
													</a>
													<!-- 버튼 -->
												</div>

												<!-- 베드 타입 선택  -->
												<div class="rev-open">
													<div class="bed-type">
														<div class="bed-type1">
															<div class="radio-box">
																<input type="radio" name="bedtype" value="Twin">
																<img alt="twin"
																	src="../resources/images/room/rev/single_bed.jpg">
																<label>트윈</label>
															</div>
															<span class="bed-type-price">490,000원</span>
														</div>
														<div class="bed-type2">
															<div class="radio-box">
																<input type="radio" name="bedtype" value="Double">
																<img alt="double"
																	src="../resources/images/room/rev/double_bed.jpg">
																<label>더블</label>
															</div>
															<span class="bed-type-price">490,000원</span>
														</div>
													</div>
												</div>
												<!-- 푸터 위에 창이  -->
											</dd>
										</dl>
									</li>
								</ul>
							</div>
							<!-- 룸 1개 끝 지점  -->

							<!-- 요금 합계  -->
							<div id="Accordion_wrap">
								<div class="anw">
									<div class="row p-3">
										<div class="total-info col-3">
											<div class="total-title">예약정보</div>
											<div>
												<img alt="호텔사진"
													src="../resources/images/room/location/seoul.jpg">
											</div>
											<div class="total-sub">
												<div class="sub-title">체크인-체크아웃</div>
												<span>2022.09.13~2022.09.16(3박)</span>
											</div>
											<div class="total-sub-a">
												<div class="sub-title">객실</div>
												<span>Deluxe,Double</span>
											</div>
											<div class="total-sub">
												<div class="sub-title">투숙인원</div>
												<span>성인 2, 어린이 2</span>
											</div>
										</div>
										<div class="total-detail col-9">
											<div class="total-title-box">
												<div class="total-title">요금상세 (n박)</div>
												<span><img alt="예약초기화"
													src="../resources/images/room/rev/rev_clear.png"></span>
											</div>
											<div class="total-sub-box">
												<div class="total-sub">객실1(성인 n / 어린이 n)</div>
												<span>1,188,000원</span>
											</div>
											<div class="total-sub2-box row">
												<div class="객실요금 col-4">
													<div>객실요금</div>
													<div class="sub2-price">560,000 원</div>
												</div>
												<div class="옵션사항 col-4">
													<div>옵션사항</div>
													<div class="sub2-price">330,000 원</div>
												</div>
												<div class="부가가치세 col-4">
													<div>부가가치세</div>
													<div class="sub2-price">56,000 원</div>
												</div>
											</div>
											<div class="">부가가치세 10%가 포함된 금액입니다.</div>
										</div>
									</div>
								</div>
								<div class="que">

									<div class="arrow-wrap">
										<span class="arrow-top">↑</span> <span class="arrow-bottom">상세보기</span>
									</div>
									<div class="total-text">
										<span class="text1">요금합계</span> <span class="text2">부가가치세
											포함</span>
									</div>
									<div class="total-price">616,000원</div>
									<a href="#" class="total-btn"><img alt="선택"
										src="../resources/images/room/rev/select.gif"></a>
								</div>
							</div>
							<!-- 요금 합계 끝  -->
						</div>
						<div class="part-test" style="margin-top: 100px"></div>
					</div>
				</div>
			</form>
		</div>
	</div>

	<%@ include file="../common/footer.jsp" %>

<script>
//picker
var fp1 = flatpickr(document.getElementById("from"), {
	"locale": "ko",
	"minDate" : "today"
});
var fp2 = flatpickr(document.getElementById("to"), {
	"locale": "ko"
});

fp1.config.onChange.push(function(selectedDates) {
	fp2.config.maxDate = selectedDates[0].fp_incr(14)
} );


// 요금 합계 
$(".que").click(function() {
$(this).prev(".anw").stop().slideToggle(300);
$(this).toggleClass('on').siblings().removeClass('on');
$(this).prev(".anw").siblings(".anw").slideUp(300); // 펼치기
});
</script>
</body>
</html>