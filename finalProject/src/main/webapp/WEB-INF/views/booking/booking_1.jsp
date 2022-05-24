<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
String cp = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=yes">
<link rel="shortcut icon"
	href="https://www.megabox.co.kr/static/pc/images/favicon.ico">
<title>MEET PLAY SHARE, 메가박스</title>
<meta property="name" id="metaTagTitle" content="빠른예매 &lt; 예매">
<meta property="description" id="metaTagDtls"
	content="메가박스에서 영화를 간편하고 빠르게 예약해보세요.
">
<meta property="keywords" id="metaTagKeyword"
	content="메가박스 빠른예매, 빠른예매, 예매">
<meta property="fb:app_id" id="fbAppId" content="546913502790694">
<meta property="og:site_name" id="fbSiteName" content="메가박스">
<meta property="og:type" id="fbType" content="movie">
<meta property="og:url" id="fbUrl"
	content="https://www.megabox.co.kr/booking?rpstMovieNo=22004700">
<meta property="og:title" id="fbTitle" content="빠른예매 &lt; 예매">
<meta property="og:description" id="fbDtls"
	content="메가박스에서 영화를 간편하고 빠르게 예약해보세요.
">
<meta property="og:image" id="fbImg"
	content="https://img.megabox.co.kr/SharedImg/metaTag/2020/02/04/gFfTzMwwiCxhBwcUV5TRGMFX9Cmoj64W.jpg">
<link rel="stylesheet" href="resources/booking_1_files/megabox.min.css"
	media="all">
<script type="text/javascript" async=""
	src="resources/booking_1_files/analytics.js.다운로드"></script>
<script async="" src="resources/booking_1_files/js"></script>
<script>window.dataLayer = window.dataLayer || []; function gtag(){dataLayer.push(arguments);} gtag('js', new Date()); gtag('config', 'UA-30006739-3');</script>
<script src="resources/booking_1_files/megabox.api.min.js.다운로드"></script>
<script src="resources/booking_1_files/lozad.min.js.다운로드"></script>
<script src="resources/booking_1_files/megabox.common.min.js.다운로드"></script>
<script src="resources/booking_1_files/megabox.netfunnel.min.js.다운로드"></script>
<script src="resources/booking_1_files/persona.js.다운로드" async=""></script>
<script src="resources/booking_1_files/ui.common.js.다운로드"></script>
<script
	src="resources/booking_1_files/m-ny8Ge9GlYZJI4cgMhnHRaYB3JpsfRgMZ-aSWeaR4SEAM4qWzAZAbZEZkUwWnZPUVNfQ01sOTEtVU9TeHFRAstB2JUHayDnTwPLQdiVB2sg508.js.다운로드"></script>
<script src="resources/booking_1_files/front.js.다운로드"></script>
<script src="resources/booking_1_files/bc4af2fa1e" async=""
	type="text/javascript"></script>
<script src="resources/booking_1_files/bc4af2fa1e(1)" async=""
	type="text/javascript"></script>
<script src="resources/booking_1_files/ts.wseq"></script>
<script src="js/booking/booking_1.js"></script>
</head>
<body>
	<div class="body-wrap">
		<header id="header">
		<h1 class="ci">
			<a href="http://localhost:8080/main" title="MEGABOX 메인으로 가기">MEGABOX
				: Life Theater</a>
		</h1>
		
		
	<!-- 2019-04-15 마크업 수정 : 고객요청  -->
    <div class="util-area">
        <div class="left-link">
            <a href="https://www.megabox.co.kr/benefit/viplounge" title="VIP LOUNGE">VIP LOUNGE</a>
            <a href="https://www.megabox.co.kr/benefit/membership" title="멤버십">멤버십</a>
            <a href="http://localhost:8080/movie/list" title="고객센터">고객센터</a>
        </div>
		
		<!-- 세션작업(현우20220523) -->
        <div class="right-link">
            <!-- 
            세션 id가 없을 때 로그인/회원가입 을 보여주고
            다른상황(otherwise)일때는 세션id / 로그아웃 / 마이 페이지를 보여줌
             -->
            <c:choose>
            	
            	<c:when test="${empty sessionScope.customInfo.id }">
            		<a href="<%=cp%>/movie/login" title="로그인">로그인</a>
            		<a href="<%=cp%>/movie/join" title="회원가입">회원가입</a>
            	</c:when>     	
            	 
            	<c:otherwise>
            		<a href="">${sessionScope.customInfo.id }님</a>
            	 	<a href="<%=cp%>/movie/logout" title="로그아웃">로그아웃</a>
            	 	<a href="<%=cp%>/movie/mypage" title="마이페이지">마이페이지</a>
            	</c:otherwise>	 
            </c:choose>        
        </div> 
    </div>
    <!--// 2019-04-15 마크업 수정 : 고객요청  -->
		
		
		<div class="link-area">
			<a href="https://www.megabox.co.kr/booking#layer_sitemap"
				class="header-open-layer btn-layer-sitemap" title="사이트맵">사이트맵</a> <a
				href="https://www.megabox.co.kr/booking#layer_header_search"
				class="header-open-layer btn-layer-search" title="검색">검색</a> <a
				href="https://www.megabox.co.kr/booking/timetable"
				class="link-ticket" title="상영시간표">상영시간표</a> <a
				href="/movieSave"
				class="header-open-layer btn-layer-mymega" title="나의 메가박스">나의
				메가박스</a>
		</div>
		<nav id="gnb">
		<ul class="gnb-depth1">
			<li><a href="https://www.megabox.co.kr/movie"
				class="gnb-txt-movie" title="영화">영화</a>
				<div class="gnb-depth2">
					<ul>
						<li><a href="https://www.megabox.co.kr/movie" title="전체영화">전체영화</a></li>


						<li><a
							href="https://www.megabox.co.kr/curation/specialcontent"
							title="큐레이션">큐레이션</a></li>

						<li id="festivalArea" style="display: none;"><a
							href="https://www.megabox.co.kr/festival" title="영화제">영화제</a></li>
						<li><a href="https://www.megabox.co.kr/moviepost/all"
							title="무비포스트">무비포스트</a></li>
					</ul>
				</div></li>
			<li><a href="https://www.megabox.co.kr/booking"
				class="gnb-txt-reserve" title="예매">예매</a>
				<div class="gnb-depth2">
					<ul>
						<li><a href="https://www.megabox.co.kr/booking" title="빠른예매">빠른예매</a></li>
						<li><a href="https://www.megabox.co.kr/booking/timetable"
							title="상영시간표">상영시간표</a></li>
						<li><a
							href="https://www.megabox.co.kr/booking/privatebooking"
							title="더 부티크 프라이빗 예매">더 부티크 프라이빗 예매</a></li>
					</ul>
				</div></li>
			<li><a href="https://www.megabox.co.kr/theater/list"
				class="gnb-txt-theater" title="극장">극장</a>
				<div class="gnb-depth2">
					<ul>
						<li><a href="https://www.megabox.co.kr/theater/list"
							title="전체극장">전체극장</a></li>
						<li><a href="https://www.megabox.co.kr/specialtheater/list"
							title="특별관">특별관</a></li>
					</ul>
				</div></li>
			<li><a href="javascript:void(0)"
				onclick="NetfunnelChk.aTag(&#39;EVENT_LIST&#39;,&#39;/event&#39;);return false;"
				class="gnb-txt-event" title="이벤트">이벤트</a>
				<div class="gnb-depth2">
					<ul>
						<li><a href="javascript:void(0)"
							onclick="NetfunnelChk.aTag(&#39;EVENT_LIST&#39;,&#39;/event&#39;);return false;"
							title="진행중 이벤트">진행중 이벤트</a></li>
						<li><a href="javascript:void(0)"
							onclick="NetfunnelChk.aTag(&#39;EVENT_LIST&#39;,&#39;/event/end&#39;);return false;"
							title="지난 이벤트">지난 이벤트</a></li>
						<li><a href="javascript:void(0)"
							onclick="NetfunnelChk.aTag(&#39;EVENT_LIST&#39;,&#39;/event/winner/list&#39;);return false;"
							title="당첨자발표">당첨자발표</a></li>
					</ul>
				</div></li>
			<li><a href="javascript:void(0)"
				onclick="NetfunnelChk.aTag(&#39;STORE_LIST&#39;,&#39;/store&#39;);return false;"
				class="gnb-txt-store" title="스토어">스토어</a></li>
			<li><a href="https://www.megabox.co.kr/benefit/membership"
				class="gnb-txt-benefit" title="혜택">혜택</a>
				<div class="gnb-depth2">
					<ul>
						<li><a href="https://www.megabox.co.kr/benefit/membership"
							title="메가박스 멤버십">메가박스 멤버십</a></li>
						<li><a
							href="https://www.megabox.co.kr/benefit/discount/guide"
							title="제휴/할인">제휴/할인</a></li>
					</ul>
				</div></li>
		</ul>
		</nav> </header>
		<div class="container" style="padding-bottom: 240px;">
			<div class="page-util" style="">
				<div class="inner-wrap">
					<div class="location">
						<span>Home</span> <a href="https://www.megabox.co.kr/booking"
							title="예매 페이지로 이동">예매</a> <a
							href="https://www.megabox.co.kr/booking" title="빠른예매 페이지로 이동">빠른예매</a>
					</div>
				</div>
			</div>
			<div class="inner-wrap"
				style="padding-top: 40px; padding-bottom: 100px;">
				<form action="" method="post" name="myForm">
					<input type="hidden" id="rdToken" value="0" /> <input
						type="hidden" id="preListsLength" value="0" /> <input
						type="hidden" id="mtToken" value="0" /> <input type="hidden"
						id="preMtListsLength" value="0" /> <input type="hidden"
						id="mcToken" value="0" /> <input type="hidden" id="thToken"
						value="0" /> <input type="hidden" id="movieSel" name="movieSel"
						value="" /> <input type="hidden" id="regionSel" name="regionSel"
						value="" /> <input type="hidden" id="rdSel" name="rdSel" value="" />
					<input type="hidden" id="daySel" name="daySel"
						value="${dayWeekList[1].year}.${dayWeekList[1].month}.${dayWeekList[1].day}" />
					<input type="hidden" id="daySel2" name="daySel2"
						value="${dayWeekList[1].day}" />
					<input type="hidden" id="timeSel" name="timeSel" value="" /> <input
						type="hidden" id="mtnNum" name="mtnNum" value="" />
					<div class="quick-reserve">
						<div class="tit-util">
							<h2 class="tit">빠른예매</h2>
							<div id="btnLangChg" class="right btn-ticket"
								style="display: none">
								<button type="button" class="button gray-line"
									onclick="parent.setLangChg()">English</button>
							</div>
						</div>
						<div class="mege-quick-reserve-inculde">
							<div class="time-schedule quick">
								<div class="wrap">
									<button type="button" title="이전 날짜 보기" class="btn-pre"
										disabled="true">
										<i class="iconset ico-cld-pre"></i> <em>이전</em>
									</button>
									<div class="date-list">
										<div class="year-area">
											<div class="year" style="left: 30px; z-index: 1; opacity: 1;">${dayWeekList[1].year}.${dayWeekList[1].month}</div>
											<div class="year"
												style="left: 450px; z-index: 1; opacity: 0;"></div>
										</div>
										<div class="date-area" id="formDeList">
											<div class="wrap"
												style="position: relative; width: 2100px; border: none; left: -70px;">
												<c:forEach var="dto" items="${dayWeekList}"
													varStatus="status">
													<c:if test="${status.index == 1}">
													<button class="on" type="button" id="day_${dto.day }"
														date-data="${dto.year }.${dto.month }.${dto.day }"
														onclick="dateClk(${dto.year },${dto.month },${dto.day });">
													</c:if>
													<c:if test="${status.index != 1}">
													<button class="" type="button" id="day_${dto.day }"
														date-data="${dto.year }.${dto.month }.${dto.day }"
														onclick="dateClk(${dto.year },${dto.month },${dto.day });">
													</c:if>
													
														<span class="ir">${dto.year }년 ${dto.month }월</span> <em
															style="pointer-events: none;">${dto.day }<span
															style="pointer-events: none;" class="ir">일</span></em> <span
															class="day-kr"
															style="pointer-events: none; display: inline-block">${dto.dayOfweek }</span>
													</button>
												</c:forEach>
											</div>
										</div>
									</div>

									<!-- 다음날짜 -->
									<button type="button" title="다음 날짜 보기" class="btn-next"
										disabled="true">
										<i class="iconset ico-cld-next"></i> <em>다음</em>
									</button>
									<!--// 다음날짜 -->

									<!-- 달력보기 -->
									<div class="bg-line">
										<input type="hidden" id="datePicker" value="2022.04.11"
											class="hasDatepicker">
										<button type="button" id="calendar"
											onclick="$(&#39;#datePicker&#39;).datepicker(&#39;show&#39;)"
											class="btn-calendar-large" title="달력보기">달력보기</button>

									</div>
									<!--// 달력보기 -->
								</div>
							</div>
							<div class="quick-reserve-area">
								<div class="movie-choice">
									<p class="tit">영화</p>
									<div class="list-area">
										<div class="all-list">
											<button type="button" class="btn-tab on" id="movieAll">전체</button>
											<div class="list">
												<div class="scroll m-scroll mCustomScrollbar _mCS_1"
													id="movieList">
													<div id="mCSB_1"
														class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside"
														style="max-height: none;" tabindex="0">
														<div id="mCSB_1_container" class="mCSB_container"
															style="position: relative; top: 0; left: 0;" dir="ltr">
															<ul>
																<c:forEach var="dto" items="${movieNamelists}">
																	<li><button type="button" class="btn"
																			id="mn_${dto.num }" onclick="mnClk(${dto.num})">
																			<span class="movie-grade small ${dto.tagName }"></span><i
																				class="iconset ico-heart-small">보고싶어 설정안함</i><span
																				class="txt">${dto.name }</span>
																		</button></li>
																</c:forEach>
															</ul>
														</div>

													</div>
												</div>
											</div>
										</div>

									</div>
									<!--// list-area -->

									<!-- view-area -->
									<div class="view-area">

										<!-- 영화 선택 하지 않았을 때 -->
										<div class="choice-all" id="choiceMovieNone"
											style="display: none;">
											<strong>모든영화</strong> <span>목록에서 영화를 선택하세요.</span>
										</div>
										<div class="choice-list" id="choiceMovieList"
											style="display: block;">
											<div class="bg" id="mChoice_1">
											</div>
											<div class="bg" id="mChoice_2"></div>
											<div class="bg" id="mChoice_3"></div>
										</div>
									</div>
								</div>
								<div class="theater-choice">
									<div class="tit-area">
										<p class="tit">극장</p>
									</div>
									<div class="list-area" id="brchTab">
										<div class="all-list">
											<button type="button" class="btn-tab on">전체</button>
											<div class="list">
												<div class="scroll" id="brchList">
													<ul>
														<c:forEach var="dto" items="${regionlists}">
															<li>
																<button type="button" class="btn"
																	id="region_${dto.num }"
																	onclick="regionClk(${dto.num});">
																	<span calss="txt">${dto.name }</span>
																</button>
																<div class="depth on">
																	<div
																		class="detail-list m-scroll area-cd10 mCustomScrollbar _mCS_4">
																		<div id="mCSB_4"
																			class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside"
																			style="max-height: none;" tabindex="0">
																			<div id="mCSB_4_container" class="mCSB_container"
																				style="position: relative; top: 0; left: 0;"
																				dir="ltr">

																				<ul>
																					<li id="regionDetailPos"></li>
																				</ul>

																			</div>
																		</div>
																	</div>
															</li>
														</c:forEach>
													</ul>
												</div>
											</div>
										</div>

									</div>
									<!--// list-area -->

									<!-- view-area -->
									<div class="view-area">

										<!-- 영화관 선택 하지 않았을 때 -->
										<div class="choice-all" id="choiceBrchNone"
											style="display: none;">
											<strong>전체극장</strong> <span>목록에서 극장을 선택하세요.</span>
										</div>

										<!-- 영화관을 한개라도 선택 했을때 -->
										<div class="choice-list" id="choiceBrchList"
											style="display: block;">
											<div class="bg" id="thChoice_1"></div>
											<div class="bg" id="thChoice_2"></div>
											<div class="bg" id="thChoice_3"></div>
										</div>
									</div>
								</div>
								<div class="time-choice">
									<div class="tit-area">
										<p class="tit">시간</p>

										<div class="right legend">
											<i class="iconset ico-sun" title="조조"></i> 조조 <i
												class="iconset ico-brunch" title="브런치"></i> 브런치 <i
												class="iconset ico-moon" title="심야"></i> 심야
										</div>
									</div>
									<div class="hour-schedule">
										<button type="button" class="btn-prev-time">이전 시간 보기</button>

										<div class="wrap">
											<div class="view"
												style="position: absolute; width: 1015px; transition: none 0s ease 0s; left: -665px;"
												id="hour-scheduleView">
												<%
													for (int i = 0; i < 19; i++) {
												%>
												<button type="button" class="hour">00</button>
												<%
													}
												%>
												<c:forEach var="timeList" items="${timeList}"
													varStatus="status">
													<button type="button" class="hour" style="opacity: 0.5;"
														id="time_${timeList }">${timeList }</button>
												</c:forEach>
											</div>
										</div>
										<button type="button" class="btn-next-time">다음 시간 보기</button>
									</div>
									<div class="movie-schedule-area">
										<div class="no-result" id="playScheduleNonList"
											style="display: none;">
											<i class="iconset ico-movie-time"></i>
											<p class="txt">
												영화와 극장을 선택하시면<br> 상영시간표를 비교하여 볼 수 있습니다.
											</p>
										</div>
										<!-- 영화, 영화관 선택 했을때 -->
										<div class="result">
											<div
												class="scroll m-scroll mCustomScrollbar _mCS_16 mCS_no_scrollbar"
												id="playScheduleList" style="">
												<div id="mCSB_16"
													class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside"
													style="max-height: none;" tabindex="0">
													<div id="mCSB_16_container"
														class="mCSB_container mCS_no_scrollbar_y"
														style="position: relative; top: 0; left: 0;" dir="ltr">
														<ul>
															<li id="movieTimePos"></li>
														</ul>
													</div>

												</div>
											</div>

										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</form>
			</div>

		</div>
		<section id="saw_movie_regi" class="modal-layer"> <a
			href="https://www.megabox.co.kr/booking" class="focus">레이어로 포커스
			이동 됨</a> <input type="hidden" id="isLogin" value="Y">
		<div class="wrap">
			<header class="layer-header">
			<h3 class="tit">본 영화 등록</h3>
			</header>

			<div class="layer-con">
				<p class="reset">발권하신 티켓 하단의 거래번호 또는 예매번호를 입력해주세요.</p>

				<div class="pop-gray mt10 mb30">
					<label for="movie_regi" class="mr10">거래번호 또는 예매번호</label> <input
						type="text" id="movie_regi" class="input-text w280px numType"
						maxlength="20" placeholder="숫자만 입력해 주세요" title="티켓 거래번호 입력">
					<button class="button gray ml05" id="regBtn">등록</button>
				</div>

				<div class="box-border v1 mt30">
					<p class="tit-box">이용안내</p>

					<ul class="dot-list">
						<li>극장에서 예매하신 내역을 본 영화(관람이력)로 등록하실 수 있습니다.</li>
						<li>예매처를 통해 예매하신 고객님은 극장에서 발권하신 티켓 하단의 온라인 예매번호 <br>12자리를
							입력해주세요.(Yes24, 네이버, 인터파크, SKT, KT, 다음)
						</li>
						<li>본 영화 등록은 관람인원수 만큼 등록가능하며, 동일 계정에 중복등록은 불가합니다.</li>
						<li>상영시간 종료 이후 등록 가능합니다.</li>
						<li>본 영화로 수동 등록한 내역은 이벤트 참여 및 포인트 추후 적립이 불가합니다.</li>
					</ul>
				</div>
			</div>

			<div class="btn-group-fixed">
				<button type="button" class="button purple close-layer">닫기</button>
			</div>

			<button type="button" class="btn-modal-close">레이어 닫기</button>
		</div>
		</section>

		<div class="quick-area">
			<a href="https://www.megabox.co.kr/booking" class="btn-go-top"
				title="top">top</a>
		</div>

		<!-- footer -->
		<footer id="footer"> <!-- footer-top -->
		<div class="footer-top">
			<div class="inner-wrap">
				<ul class="fnb">
					<li><a href="https://www.megabox.co.kr/megaboxinfo"
						title="회사소개 페이지로 이동">회사소개</a></li>
					<li><a href="https://www.megabox.co.kr/recruit"
						title="인재채용 페이지로 이동">인재채용</a></li>
					<li><a href="https://www.megabox.co.kr/socialcontribution"
						title="사회공헌 페이지로 이동">사회공헌</a></li>
					<li><a href="https://www.megabox.co.kr/partner"
						title="제휴/광고/부대사업문의 페이지로 이동">제휴/광고/부대사업문의</a></li>
					<li><a href="https://www.megabox.co.kr/support/terms"
						title="이용약관 페이지로 이동">이용약관</a></li>
					<li><a href="https://www.megabox.co.kr/support/lcinfo"
						title="위치기반서비스 이용약관 페이지로 이동">위치기반서비스 이용약관</a></li>
					<li class="privacy"><a
						href="https://www.megabox.co.kr/support/privacy"
						title="개인정보처리방침 페이지로 이동">개인정보처리방침</a></li>
					<li><a href="https://jebo.joonganggroup.com/main.do"
						target="_blank" title="윤리경영 페이지로 이동">윤리경영</a></li>
				</ul>

				<a href="https://www.megabox.co.kr/booking#layer_looking_theater"
					class="btn-looking-theater" title="극장찾기"><i
					class="iconset ico-footer-search"></i> 극장찾기</a>
			</div>
		</div>
		<!--// footer-top --> <!-- footer-bottom -->
		<div class="footer-bottom">
			<div class="inner-wrap">
				<div class="ci">MEGABOX : Life Theater</div>

				<div class="footer-info">
					<div>
						<address>서울특별시 마포구 월드컵로 240, 지상2층(성산동, 월드컵주경기장)</address>
						<p>ARS 1544-0070</p>
					</div>
					<p>대표자명 홍정인</p>
					<p>· 개인정보보호책임자 공성진</p>
					<p>· 사업자등록번호 211-86-59478</p>
					<p>· 통신판매업신고번호 제 2020-서울마포-4545 호</p>
					<p class="copy">COPYRIGHT © MegaboxJoongAng, Inc. All rights
						reserved</p>
				</div>

				<div class="footer-sns">
					<a href="https://www.youtube.com/onmegabox" target="_blank"
						title="MEGABOX 유튜브 페이지로 이동"><i class="iconset ico-youtubeN">유튜브</i></a>
					<a href="http://instagram.com/megaboxon" target="_blank"
						title="MEGABOX 인스타그램 페이지로 이동"><i
						class="iconset ico-instagramN">인스타그램</i></a> <a
						href="https://www.facebook.com/megaboxon" target="_blank"
						title="MEGABOX 페이스북 페이지로 이동"><i class="iconset ico-facebookN">페이스북</i></a>
					<a href="https://twitter.com/megaboxon" target="_blank"
						title="MEGABOX 트위터 페이지로 이동"><i class="iconset ico-twitterN">트위터</i></a>
				</div>
			</div>
		</div>
		<!--// footer-bottom -->
		<div id="layer_looking_theater" class="layer-looking-theater"></div>
		</footer>
		<!--// footer -->
	</div>
</body>
</html>