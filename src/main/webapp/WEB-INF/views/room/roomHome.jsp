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
<link href="${pageContext.request.contextPath}/resources/room/css/roomHome.css" rel="stylesheet">
<title>Spring Hotel</title>
</head>
<body>
<c:set var="menu" value="roomHome" />
<%@ include file="../common/nav.jsp"%>
<div class="contain">
	<!-- 전체 객실 사이드메뉴 시작 -->
	<div class="container" id="container">
		<div class="side-nav">
			<div class="r-title">
				<h5>객실</h5>
				<ul class="menu">
					<li class="m1-first"><a> <span>스탠다드</span>
					</a>
						<ul class="st-menu">
							<li class="roomt"><a href="../room/roomDetail"><span>디럭스</span></a></li>
							<li class="room"><a href="../room/roomDetail?roomGroupNo=100&categoryNo=102"><span>비즈니스 디럭스</span></a></li>
							<li class="room"><a href="../room/roomDetail?roomGroupNo=100&categoryNo=103"><span>그랜드 코너 디럭스</span></a></li>
						</ul></li>
					<li class="m2"><a> <span>이그제큐티브</span>
					</a>
						<ul class="st-menu">
							<li class="roomt"><a href="../room/roomDetail?roomGroupNo=200&categoryNo=201"><span>이그제큐티브 비즈니스
										디럭스</span></a></li>
							<li class="room"><a href="../room/roomDetail?roomGroupNo=200&categoryNo=202"><span>이그제큐티브 그랜드 디럭스</span></a></li>
						</ul></li>
					<li class="m3"><a> <span>스위트</span>
					</a>
						<ul class="st-menu">
							<li class="roomt"><a href="../room/roomDetail?roomGroupNo=300&categoryNo=301"><span>수페리어 스위트</span></a></li>
							<li class="room"><a href="../room/roomDetail?roomGroupNo=300&categoryNo=302"><span>코리안 스위트</span></a></li>
							<li class="room"><a href="../room/roomDetail?roomGroupNo=300&categoryNo=303"><span>코너 스위트</span></a></li>
							<li class="room"><a href="../room/roomDetail?roomGroupNo=300&categoryNo=304"><span>프리미어 스위트</span></a></li>
							<li class="room"><a href="../room/roomDetail?roomGroupNo=300&categoryNo=305"><span>로열 스위트</span></a></li>
							<li class="room"><a href="../room/roomDetail?roomGroupNo=300&categoryNo=306"><span>신라 스위트</span></a></li>
							<li class="room"><a href="../room/roomDetail?roomGroupNo=300&categoryNo=307"><span>프레지덴셜 스위트</span></a></li>
						</ul></li>
					<li class="m4-last" id="lounge"><a> <span>더 이그제큐티브
								라운지</span>
					</a></li>
				</ul>
				<div class="all-view">
					<a href="#"> <span id="all-view">전체 객실 보기</span>
					</a>
				</div>
			</div>
		</div>
		<!-- 메인 컨텐츠 박스 -->
		<div class="main" id="main">
			<div class="main-title">
				<div class="title-l"><img alt="" src="../resources/images/room/mainInfo/mainTitle.gif"></div>
			</div>
			<!-- 스탠다드 -->
			<div class="main-room-title">스탠다드</div>
			<div class="room-box1">
				<!-- 박스 -->
				<div class="st-box1">
					<div class="st-detail">
						<span class="img"> <a href="#"> <img alt="디럭img"
								src="../resources/images/room/detail/d1.jpg">
						</a>
						</span>
						<!-- detail -->
						<div class="st-info">
							<div class="st-info-text">
								<span class="img"> <a href="#"> <img alt="디럭text"
										src="../resources/images/room/mainInfo/d.gif">
								</a>
								</span>
							</div>
							<div class="st-info-btn">
								<a href="/room/roomRev1"> <img alt="예약"
									src="../resources/images/room/mainInfo/bookingBtn.gif">
								</a> <a href="#"> <img alt="이미지보기"
									src="../resources/images/room/mainInfo/imgViewbtn.gif">
								</a>
							</div>
						</div>
					</div>
				</div>
				<!-- 박스 -->
				<div class="st-box2">
					<div class="st-detail">
						<span class="img"> <a href="#"> <img alt="비디img"
								src="../resources/images/room/detail/bd4.jpg">
						</a>
						</span>
						<!-- detail -->
						<div class="st-info">
							<div class="st-info-text">
								<span class="img"> <a href="#"> <img alt="비디text"
										src="../resources/images/room/mainInfo/bd.gif">
								</a>
								</span>
							</div>
							<div class="st-info-btn">
								<a href="/room/roomRev1"> <img alt="예약"
									src="../resources/images/room/mainInfo/bookingBtn.gif">
								</a> <a href="#"> <img alt="이미지보기"
									src="../resources/images/room/mainInfo/imgViewbtn.gif">
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="room-box1">
				<!-- 박스 -->
				<div class="st-box1">
					<div class="st-detail">
						<span class="img"> <a href="#"> <img alt="그코디img"
								src="../resources/images/room/detail/gcd3.jpg">
						</a>
						</span>
						<!-- detail -->
						<div class="st-info">
							<div class="st-info-text">
								<span class="img"> <a href="#"> <img alt="그코디text"
										src="../resources/images/room/mainInfo/gcd.gif">
								</a>
								</span>
							</div>
							<div class="st-info-btn">
								<a href="/room/roomRev1"> <img alt="예약"
									src="../resources/images/room/mainInfo/bookingBtn.gif">
								</a> <a href="#"> <img alt="이미지보기"
									src="../resources/images/room/mainInfo/imgViewbtn.gif">
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>

			<!-- 이그제큐티브 -->
			<div class="main-room-title1">이그제큐티브</div>
			<div class="room-box1">
				<div class="st-box1">
					<!-- 박스 디럭스 -->
					<div class="st-detail">
						<span class="img"> <a href="#"> <img alt="이비디img"
								src="../resources/images/room/detail/ebd4.jpg">
						</a>
						</span>
						<!-- detail -->
						<div class="st-info">
							<div class="st-info-text">
								<span class="img"> <a href="#"> <img alt="이비디text"
										src="../resources/images/room/mainInfo/ebd.gif">
								</a>
								</span>
							</div>
							<div class="st-info-btn">
								<a href="/room/roomRev1"> <img alt="예약"
									src="../resources/images/room/mainInfo/bookingBtn.gif">
								</a> <a href="#"> <img alt="이미지보기"
									src="../resources/images/room/mainInfo/imgViewbtn.gif">
								</a>
							</div>
						</div>
					</div>

				</div>
				<div class="st-box2">
					<div class="st-detail">
						<span class="img"> <a href="#"> <img alt="이그디img"
								src="../resources/images/room/detail/egd3.jpg">
						</a>
						</span>
						<div class="st-info">
							<div class="st-info-text">
								<span class="img"> <a href="#"> <img alt="이그디text"
										src="../resources/images/room/mainInfo/egd.gif">
								</a>
								</span>
							</div>
							<div class="st-info-btn">
								<a href="/room/roomRev1"> <img alt="예약"
									src="../resources/images/room/mainInfo/bookingBtn.gif">
								</a> <a href="#"> <img alt="이미지보기"
									src="../resources/images/room/mainInfo/imgViewbtn.gif">
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>

			<!-- 스위트 -->
			<div class="main-room-title1">스위트</div>
			<div class="room-box1">
				<div class="st-box1">
					<!-- 박스 디럭스 -->
					<div class="st-detail">
						<span class="img"> <a href="#"> <img alt="수스img"
								src="../resources/images/room/detail/ss2.jpg">
						</a>
						</span>
						<!-- detail -->
						<div class="st-info">
							<div class="st-info-text">
								<span class="img"> <a href="#"> <img alt="수스text"
										src="../resources/images/room/mainInfo/ss.gif">
								</a>
								</span>
							</div>
							<div class="st-info-btn">
								<a href="/room/roomRev1"> <img alt="예약"
									src="../resources/images/room/mainInfo/bookingBtn.gif">
								</a> <a href="#"> <img alt="이미지보기"
									src="../resources/images/room/mainInfo/imgViewbtn.gif">
								</a>
							</div>
						</div>
					</div>

				</div>
				<div class="st-box2">
					<div class="st-detail">
						<span class="img"> <a href="#"> <img alt="코스img"
								src="../resources/images/room/detail/ks2.jpg">
						</a>
						</span>
						<div class="st-info">
							<div class="st-info-text">
								<span class="img"> <a href="#"> <img alt="코스text"
										src="../resources/images/room/mainInfo/ks.gif">
								</a>
								</span>
							</div>
							<div class="st-info-btn">
								<a href="/room/roomRev1"> <img alt="예약"
									src="../resources/images/room/mainInfo/bookingBtn.gif">
								</a> <a href="#"> <img alt="이미지보기"
									src="../resources/images/room/mainInfo/imgViewbtn.gif">
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="room-box1">
				<div class="st-box1">
					<!-- 박스 디럭스 -->
					<div class="st-detail">
						<span class="img"> <a href="#"> <img alt="코너스위트img"
								src="../resources/images/room/detail/cs4.jpg">
						</a>
						</span>
						<!-- detail -->
						<div class="st-info">
							<div class="st-info-text">
								<span class="img"> <a href="#"> <img alt="코너스위트text"
										src="../resources/images/room/mainInfo/cs.gif">
								</a>
								</span>
							</div>
							<div class="st-info-btn">
								<a href="/room/roomRev1"> <img alt="예약"
									src="../resources/images/room/mainInfo/bookingBtn.gif">
								</a> <a href="#"> <img alt="이미지보기"
									src="../resources/images/room/mainInfo/imgViewbtn.gif">
								</a>
							</div>
						</div>
					</div>

				</div>
				<div class="st-box2">
					<div class="st-detail">
						<span class="img"> <a href="#"> <img alt="프스위트img"
								src="../resources/images/room/detail/pms1.jpg">
						</a>
						</span>
						<div class="st-info">
							<div class="st-info-text">
								<span class="img"> <a href="#"> <img alt="프스위트text"
										src="../resources/images/room/mainInfo/ps.gif">
								</a>
								</span>
							</div>
							<div class="st-info-btn">
								<a href="/room/roomRev1"> <img alt="예약"
									src="../resources/images/room/mainInfo/bookingBtn.gif">
								</a> <a href="#"> <img alt="이미지보기"
									src="../resources/images/room/mainInfo/imgViewbtn.gif">
								</a>
							</div>
						</div>
					</div>
				</div>

			</div>
			<div class="room-box1">
				<div class="st-box1">
					<!-- 박스 디럭스 -->
					<div class="st-detail">
						<span class="img"> <a href="#"> <img alt="로열스위트img"
								src="../resources/images/room/detail/rs2.jpg">
						</a>
						</span>
						<!-- detail -->
						<div class="st-info">
							<div class="st-info-text">
								<span class="img"> <a href="#"> <img alt="로열스위트text"
										src="../resources/images/room/mainInfo/rs.gif">
								</a>
								</span>
							</div>
							<div class="st-info-btn">
								<a href="/room/roomRev1"> <img alt="예약"
									src="../resources/images/room/mainInfo/bookingBtn.gif">
								</a> <a href="#"> <img alt="이미지보기"
									src="../resources/images/room/mainInfo/imgViewbtn.gif">
								</a>
							</div>
						</div>
					</div>

				</div>
				<div class="st-box2">
					<div class="st-detail">
						<span class="img"> <a href="#"> <img alt="신스img"
								src="../resources/images/room/detail/sins4.jpg">
						</a>
						</span>
						<div class="st-info">
							<div class="st-info-text">
								<span class="img"> <a href="#"> <img alt="신스text"
										src="../resources/images/room/mainInfo/sins.gif">
								</a>
								</span>
							</div>
							<div class="st-info-btn">
								<a href="/room/roomRev1"> <img alt="예약"
									src="../resources/images/room/mainInfo/bookingBtn.gif">
								</a> <a href="#"> <img alt="이미지보기"
									src="../resources/images/room/mainInfo/imgViewbtn.gif">
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- 박스 -->
			<div class="st-box1">
				<div class="st-detail">
					<span class="img"> <a href="#"> <img alt="프레지덴셜img"
							src="../resources/images/room/detail/ps1.jpg">
					</a>
					</span>
					<!-- detail -->
					<div class="st-info">
						<div class="st-info-text">
							<span class="img"> <a href="#"> <img alt="프레지덴셜text"
									src="../resources/images/room/mainInfo/ps.gif">
							</a>
							</span>
						</div>
						<div class="st-info-btn">
							<a href="/room/roomRev1"> <img alt="예약"
								src="../resources/images/room/mainInfo/bookingBtn.gif">
							</a> <a href="#"> <img alt="이미지보기"
								src="../resources/images/room/mainInfo/imgViewbtn.gif">
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<%@ include file="../common/footer.jsp" %>
</body>
</html>