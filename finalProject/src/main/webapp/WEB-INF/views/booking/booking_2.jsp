<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
String cp = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!--<![endif]-->
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
<link rel="stylesheet" href="resources/booking_2_files/megabox.min.css"
	media="all">
<!-- Global site tag (gtag.js) - Google Analytics -->
<script type="text/javascript" async=""
	src="resources/booking_2_files/analytics.js.다운로드"></script>
<script async="" src="resources/booking_2_files/js"></script>
<script>
	window.dataLayer = window.dataLayer || [];
	function gtag() {
		dataLayer.push(arguments);
	}
	gtag('js', new Date());
	gtag('config', 'UA-30006739-3');
</script>
<script src="resources/booking_2_files/megabox.api.min.js.다운로드"></script>
<script src="resources/booking_2_files/lozad.min.js.다운로드"></script>
<script src="resources/booking_2_files/megabox.common.min.js.다운로드"></script>
<script src="resources/booking_2_files/megabox.netfunnel.min.js.다운로드"></script>
<script src="resources/booking_2_files/persona.js.다운로드" async=""></script>
<script src="resources/booking_2_files/ui.common.js.다운로드"></script>
<script
	src="resources/booking_2_files/m-ny8Ge9GlYZJI4cgMhnHRaYB3JpsfRgMZ-aSWeaR4SEAM4qWzAZAbZEZkUwWnZPUVNfQ01sOTEtVU9TeHFRAstB2JUHayDnTwPLQdiVB2sg508.js.다운로드"></script>
<script src="resources/booking_2_files/front.js.다운로드"></script>
<script src="resources/booking_2_files/bc4af2fa1e" async=""
	type="text/javascript"></script>
<script src="resources/booking_2_files/bc4af2fa1e(1)" async=""
	type="text/javascript"></script>
<script src="resources/booking_2_files/ts.wseq"></script>
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
		
		
		
		<!--// 2019-04-15 마크업 수정 : 고객요청  -->

		<div class="link-area">
			<a href="https://www.megabox.co.kr/booking#layer_sitemap"
				class="header-open-layer btn-layer-sitemap" title="사이트맵">사이트맵</a> <a
				href="https://www.megabox.co.kr/booking#layer_header_search"
				class="header-open-layer btn-layer-search" title="검색">검색</a> <a
				href="https://www.megabox.co.kr/booking/timetable"
				class="link-ticket" title="상영시간표">상영시간표</a> <a
				href="https://www.megabox.co.kr/booking#layer_mymega"
				class="header-open-layer btn-layer-mymega" title="나의 메가박스">나의
				메가박스</a>
		</div>

		<nav id="gnb" class="">
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
			<li class=""><a href="https://www.megabox.co.kr/theater/list"
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

		<form id="bokdMForm">
			<input type="hidden" name="returnURL" value="info">
		</form>

		<div class="container" style="padding-bottom: 240px;">

			<div class="page-util" style="">
				<div class="inner-wrap">
					<div class="location">
						<span>Home</span> <a href="https://www.megabox.co.kr/booking"
							title="예매 페이지로 이동">예매</a> <a
							href="https://www.megabox.co.kr/booking" title="빠른예매 페이지로 이동">빠른예매 ${mtnDto.movie }</a>
					</div>
				</div>
			</div>

			<div id="contents">
				<div class="inner-wrap">
					<div id="bokdMSeat" style="overflow: hidden; height: 1000px;">
						<iframe id="frameBokdMSeat"
							src="resources/booking_2_files/selectPcntSeatChoi.html"
							title="관람인원선택 프레임" scrolling="no" frameborder="0"
							class="reserve-iframe" style="width: 100%; height: 1000px;"></iframe>
						<input type="hidden" name="tagName_value" value="${mtnDto.tagName }" />
						<input type="hidden" name="hangle_value" value="${mtnDto.hangle }" />
						<input type="hidden" name="movieNm_value" value="${mtnDto.movie }" /> 
						<input type="hidden" name="movieImg_value" value="${mtnDto.movieImg }" /> 
						<input type="hidden" name="playKindNm_value" value="${mtnDto.playKind }" /> 
						<input type="hidden" name="brchNm_value" value="${mtnDto.regionDetail }" /> 
						<input type="hidden" name="theater_value" value="${mtnDto.theater }" /> 
						<input type="hidden" name="playDe_value" value="${mtnDto.strDate }" /> 
						<input type="hidden" name="dowNm_value" value="(${mtnDto.dayOfWeek })" /> 
						<input type="hidden" name="playTime_value" 
						value="${mtnDto.startHour }:${mtnDto.startMinute }~
						${mtnDto.endHour }:${mtnDto.endMinute }" />
					</div>
				</div>
			</div>
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