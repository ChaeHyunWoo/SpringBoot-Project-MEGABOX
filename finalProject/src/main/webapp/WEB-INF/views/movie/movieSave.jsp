<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
String cp = request.getContextPath();
%>
<!DOCTYPE html>
<!-- saved from url=(0041)https://www.megabox.co.kr/mypage/userinfo -->
<html lang="ko">
<!--<![endif]-->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=yes">
<title>MEET PLAY SHARE, 메가박스</title>
<meta property="name" id="metaTagTitle" content="MEET PLAY SHARE, 메가박스">
<meta property="description" id="metaTagDtls"
	content="사람들과 공유할 수 있는, 공간경험을 만듭니다.">
<meta property="keywords" id="metaTagKeyword"
	content="메가박스,megabox,영화,영화관,극장,티켓,박스오피스,상영예정작,예매,오페라,싱어롱,큐레이션,필름소사이어티,클래식소사이어티,이벤트,Movie,theater,Cinema,film,Megabox">
<meta property="fb:app_id" id="fbAppId" content="546913502790694">
<meta property="og:site_name" id="fbSiteName" content="메가박스">
<meta property="og:type" id="fbType" content="movie">
<meta property="og:url" id="fbUrl"
	content="https://www.megabox.co.kr/mypage/userinfo?pwd=ldajfksd3E!">
<meta property="og:title" id="fbTitle" content="MEET PLAY SHARE, 메가박스">
<meta property="og:description" id="fbDtls"
	content="사람들과 공유할 수 있는, 공간경험을 만듭니다.">
<meta property="og:image" id="fbImg"
	content="https://img.megabox.co.kr/SharedImg/metaTag/2020/02/04/gFfTzMwwiCxhBwcUV5TRGMFX9Cmoj64W.jpg">
<link rel="shortcut icon"
	href="https://www.megabox.co.kr/static/pc/images/favicon.ico">
<link rel="stylesheet" href="resources/createPage_files/megabox.min.css"
	media="all">
<script type="text/javascript" async=""
	src="resources/createPage_files/analytics.js.다운로드"></script>
<script type="text/javascript" async=""
	src="resources/createPage_files/js"></script>
<script async="" src="resources/createPage_files/js(1)"></script>
<script>window.dataLayer = window.dataLayer || []; function gtag(){dataLayer.push(arguments);} gtag('js', new Date()); gtag('config', 'UA-30006739-3');</script>
<script src="resources/createPage_files/megabox.api.min.js.다운로드"></script>
<script src="resources/createPage_files/megabox.common.min.js.다운로드"></script>
<script src="resources/createPage_files/megabox.netfunnel.min.js.다운로드"></script>
<script src="resources/createPage_files/ui.common.js.다운로드"></script>
<script src="resources/createPage_files/front.js.다운로드"></script>
<script src="js/movie/movieSave.js"></script>
</head>
<body _c_t_common="1">
	<div class="body-wrap">
		<header id="header">
			<h1 class="ci">
				<a href="https://www.megabox.co.kr/" title="MEGABOX 메인으로 가기">MEGABOX
					: Life Theater</a>
			</h1>

			<div class="util-area">
				<div class="left-link">
					<a href="https://www.megabox.co.kr/benefit/viplounge"
						title="VIP LOUNGE">VIP LOUNGE</a> <a
						href="https://www.megabox.co.kr/benefit/membership" title="멤버십">멤버십</a>
					<a href="https://www.megabox.co.kr/support" title="고객센터">고객센터</a>
				</div>

				<div class="right-link">
					<!-- 로그인전 -->
					<div class="before" style="display: none">
						<a
							href="javaScript:fn_viewLoginPopup(&#39;default&#39;,&#39;pc&#39;)"
							title="로그인">로그인</a> <a href="https://www.megabox.co.kr/join"
							title="회원가입">회원가입</a>
					</div>

					<!-- 로그인후 -->
					<div class="after" style="">
						<a href="https://www.megabox.co.kr/on/oh/ohg/MbLogin/mbLogout.do"
							class="" title="로그아웃">로그아웃</a> <a
							href="https://www.megabox.co.kr/mypage/userinfo" class="notice"
							title="알림">알림</a>

						<!-- layer-header-notice -->
						<div class="layer-header-notice">
							<div class="notice-wrap">
								<p class="tit-notice">알림함</p>

								<div class="count">
									<p class="left">
										전체 <em class="totalCnt">0</em> 건
									</p>

									<p class="right">* 최근 30일 내역만 노출됩니다.</p>
								</div>

								<!-- scroll -->
								<div
									class="scroll m-scroll mCustomScrollbar _mCS_1 mCS_no_scrollbar">
									<div id="mCSB_1"
										class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside"
										style="max-height: none;" tabindex="0">
										<div id="mCSB_1_container"
											class="mCSB_container mCS_no_scrollbar_y"
											style="position: relative; top: 0; left: 0;" dir="ltr">
											<ul class="list">
												<li class="no-list">알림 내역이 없습니다.</li>
											</ul>
										</div>
										<div id="mCSB_1_scrollbar_vertical"
											class="mCSB_scrollTools mCSB_1_scrollbar mCS-light mCSB_scrollTools_vertical">
											<div class="mCSB_draggerContainer">
												<div id="mCSB_1_dragger_vertical" class="mCSB_dragger"
													style="position: absolute; min-height: 30px; display: none; top: 0px;">
													<div class="mCSB_dragger_bar" style="line-height: 30px;"></div>
												</div>
												<div class="mCSB_draggerRail"></div>
											</div>
										</div>
									</div>
								</div>
								<div class="notice-list-more">
									<button type="button" class="button btn-more-notice-list">
										더보기 <i class="iconset ico-btn-more-arr"></i>
									</button>
								</div>
								<!--// scroll -->
								<button type="button" class="btn-close-header-notice">알림
									닫기</button>
							</div>
							<!--// notice-wrap -->
							<!--// layer-header-notice -->
						</div>

					</div>

					<a href="https://www.megabox.co.kr/booking">빠른예매</a>
				</div>
			</div>
			<!--// 2019-04-15 마크업 수정 : 고객요청  -->

			<div class="link-area">
				<a href="https://www.megabox.co.kr/mypage/userinfo#layer_sitemap"
					class="header-open-layer btn-layer-sitemap" title="사이트맵">사이트맵</a> <a
					href="https://www.megabox.co.kr/mypage/userinfo#layer_header_search"
					class="header-open-layer btn-layer-search" title="검색">검색</a> <a
					href="https://www.megabox.co.kr/booking/timetable"
					class="link-ticket" title="상영시간표">상영시간표</a> <a
					href="https://www.megabox.co.kr/mypage/userinfo#layer_mymega"
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
								<li><a href="https://www.megabox.co.kr/booking"
									title="빠른예매">빠른예매</a></li>
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
			</nav>
		</header>
		<div class="container has-lnb">
			<div class="page-util">
				<div class="inner-wrap" id="myLoaction">
					<div class="location">
						<span>Home</span> <a class="no-link">관리자 페이지</a> <a
							class="no-link">영화 저장</a>
					</div>
				</div>
			</div>
			<div class="inner-wrap">
				<div class="lnb-area">
					<nav id="lnb">
						<p class="tit">
							<a href="#">관리자 페이지</a>
						</p>
						<ul>
							<li class=""><a href="#">영화 저장</a></li>
						</ul>
					</nav>
				</div>
				<div id="myLoactionInfo" style="display: none;">
					<div class="location">
						<span>Home</span> <a href="#">관리자 페이지</a> <a href="#">영화 저장</a>
					</div>
				</div>
				<div id="contents" class="">
					<h2 class="tit">영화 저장</h2>
					<div class="tit-util mt40 mb10">
						<h3 class="tit">기본정보</h3>
					</div>
					<form action="movieUpload" method="post"
						enctype="multipart/form-data" name="myForm">
						<div class="table-wrap mb40">
							<table class="board-form">
								<caption>이름, 생년월일, 휴대폰, 이메일, 비밀번호, 주소 항목을 가진 기본정보 표</caption>
								<colgroup>
									<col style="width: 180px;">
									<col>
								</colgroup>
								<tbody>
									<tr>
										<th scope="row"><label for="movieNm_value">영화 이름</label></th>
										<td><input type="text" id="movieNm_value"
											name="movieNm_value" class="input-text w200px"></td>
									</tr>
									<tr>
										<th scope="row"><label>관람등급</label></th>
										<td><select name="vcNum" id="ask-type"
											class="small" tabindex="-98">
												<option value="">관람등급 선택</option>
												<c:forEach var="dto" items="${vcLists}">
													<option value="${dto.num }">${dto.hangle }</option>
												</c:forEach>
										</select></td>
									</tr>
									<tr>
										<th scope="row">영화 이미지</th>
										<td>
											<div class="upload-image-box">
												<div class="info-txt">
													<input type="file" class="btn-image-add" name="upload" />
												</div>
											</div>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
						<div class="btn-group mt40">
							<input type="button" class="button large" value="취소" /> <input
								type="button" class="button purple large" value="등록"
								onclick="sendIt();" />
						</div>
					</form>
				</div>
				<!--// container -->
			</div>
		</div>
		<footer id="footer">
			<!-- footer-top -->
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

					<a
						href="https://www.megabox.co.kr/mypage/userinfo#layer_looking_theater"
						class="btn-looking-theater" title="극장찾기"><i
						class="iconset ico-footer-search"></i> 극장찾기</a>
				</div>
			</div>
			<!--// footer-top -->

			<!-- footer-bottom -->
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