<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
String cp = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=yes">
<link rel="shortcut icon"
	href="https://www.megabox.co.kr/static/pc/images/favicon.ico">
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
	content="https://www.megabox.co.kr/booking/payment-successcomplete?completeTransNo=12022205040094748966&amp;completeRiaMemberYn=&amp;completeRiaBirthday=">
<meta property="og:title" id="fbTitle" content="MEET PLAY SHARE, 메가박스">
<meta property="og:description" id="fbDtls"
	content="사람들과 공유할 수 있는, 공간경험을 만듭니다.">
<meta property="og:image" id="fbImg"
	content="https://img.megabox.co.kr/SharedImg/metaTag/2020/02/04/gFfTzMwwiCxhBwcUV5TRGMFX9Cmoj64W.jpg">
<link rel="stylesheet"
	href="resources/bookingComplete_files/megabox.min.css" media="all">
<script type="text/javascript" async=""
	src="resources/bookingComplete_files/analytics.js.다운로드"></script>
<script async="" src="resources/bookingComplete_files/js"></script>
<script>window.dataLayer = window.dataLayer || []; function gtag(){dataLayer.push(arguments);} gtag('js', new Date()); gtag('config', 'UA-30006739-3');</script>
<script src="resources/bookingComplete_files/megabox.api.min.js.다운로드"></script>
<script src="resources/bookingComplete_files/lozad.min.js.다운로드"></script>
<script src="resources/bookingComplete_files/megabox.common.min.js.다운로드"></script>
<script
	src="resources/bookingComplete_files/megabox.netfunnel.min.js.다운로드"></script>
<script src="resources/bookingComplete_files/persona.js.다운로드" async=""></script>
<script src="resources/bookingComplete_files/ui.common.js.다운로드"></script>
<script
	src="resources/bookingComplete_files/1Bey3b3baDg-N0SJ6V1VEHk1PG-_29plRn3uDG7DnOOEAM4qWzAZAbZUeUI0dVFZT1JraUpMazB6YS0ybHBBAstB2JxE89Y5dAPLQdicRPPWOXQ.js.다운로드"></script>
<script src="resources/bookingComplete_files/front.js.다운로드"></script>
<script src="js/booking/bookingComplete.js.js"></script>
</head>
<body>
	<div class="body-wrap">
		<link rel="stylesheet" href="resources/bookingComplete_files/main.css"
			media="all">
		<div class="container">
			<div id="contents">
				<!-- inner-wrap -->
				<div class="inner-wrap">
					<!-- quick-reserve -->
					<div class="quick-reserve">
						<h2 class="tit purple">
							예매완료
							<!-- 예매완료 -->
						</h2>
						<!-- reserve-finish -->
						<div class="reserve-finish">
							<!-- reserve-ininfomation-box -->
							<div class="reserve-ininfomation-box">
								<div class="movie-poster-area">
									<p>
										티켓 예매번호
										<!-- 티켓 예매번호 -->
										<span class="roboto">${ticketNum}</span>
									</p>
<script>
$( function() {
	  
	var movieImg_value = parent.document.all["movieImg_value"].value;
	$("#movieImg").attr("src", "/poster/" + movieImg_value);
	
 });
</script>									
									<img src="" id="movieImg">
									<input type="hidden" name="movieImg_value" value="${movieImg }" />
								</div>

								<!-- movie-infomation-area -->
								<div class="movie-infomation-area">
									<div class="movie-info-top">
										<p class="tit">
											<strong>예매가 완료되었습니다 <!-- 예매가 완료되었습니다 --> <i>!</i></strong> <span
												class="righten"> <i class="iconset ico-circle-point"></i>
												고객님의 상영익일 적립예정 포인트는 <!-- 고객님의 상영익일 적립예정 포인트는 --> <em>700P</em>입니다.
												<!-- 입니다. --></span>
										</p>
									</div>
									<div class="movie-info-middle">
										<ul class="dot-list gray">
											<li><span>예매영화 <!-- 예매영화 --></span> ${movieNm } /
												${playKindNm }</li>
											<li><span>관람극장/상영관 <!-- 관람극장/상영관 --></span>
												${brchNm} / ${theater}</li>
											<li><span>관람일시 <!-- 관람일시 --></span> &nbsp;${playDe }
												${dowNm } ${playTime }</li>
											<li><span>관람인원 <!-- 관람인원 --></span> &nbsp;${person }</li>
											<li><span>좌석번호 <!-- 좌석번호 --></span> &nbsp;${StrSeat }</li>
											<li><span>전화번호 <!-- 전화번호 --></span> &nbsp;</li>
											<li><span>결제정보 <!-- 결제정보 --></span> <strong
												class="roboto">${totalPrice }</strong> 원 <!-- 원 --> <br> <em></em></li>
										</ul>
									</div>
									<!-- movie-info-bottom -->
									<div class="movie-info-bottom">
										<div class="add-send">
											예매정보 추가 발송
											<!-- 예매정보 추가 발송 -->
											<a
												href="https://www.megabox.co.kr/booking/payment-successcomplete#tooltip01_01"
												class="tooltip hover" title="입력하신 번호로 예매정보를 추가발송합니다."> <span><i
													class="iconset ico-question-white">&nbsp;</i></span>
												<div class="ir" id="tooltip01_01" data-width="220">
													입력하신 번호로 예매정보를 추가발송합니다.
													<!-- 입력하신 번호로 예매정보를 추가발송합니다. -->
												</div>
											</a> <input type="text" title="연락처 입력"
												class="input-text w150px ml10" maxlength="11"
												id="inp_sms_rcv_no">
											<button type="button" class="button" id="btn_re_send_sms">
												전송
												<!-- 전송 -->
											</button>
										</div>
										<!-- 레이어 : 추후 적립 -->
										<input type="hidden" id="saveMethodname" value="oksave">
										<input type="hidden" id="card_no_hid">
										<div class="point-save">
											<a
												href="https://www.megabox.co.kr/booking/payment-successcomplete#cash_back"
												class="button btn-modal-open white" w-data="600"
												h-data="450" title="제휴포인트 추후 적립" style="width: 160px;">제휴포인트
												추후 적립 <!-- OK캐쉬백 적립 -->
											</a>
											<!-- 레이어 : 추후적립 -->
											<section id="cash_back" class="modal-layer"> <a
												href="https://www.megabox.co.kr/booking/payment-successcomplete"
												class="focus">레이어로 포커스 이동 됨</a>
											<div class="wrap">
												<header class="layer-header">
												<h3 class="tit">
													제휴포인트 추후 적립
													<!-- 제휴포인트 추후 적립 -->
												</h3>
												</header>
												<div class="layer-con">
													<div class="pop-tit" style="color: #444;">OK캐쉬백 또는
														L.POINT의 카드번호를 입력해주세요.</div>
													<div class="popup-gray mid-info-box mb10">
														<div class="pop-search-area line-wid">
															<div class="pop-search-area-line">
																<p class="sh-txt reset">
																	<label for="okcashbag_card_num" style="color: #444;">적립처</label>
																</p>
																<input type="hidden" id="trans_no" title="거래번호 입력"
																	class="input-text w250px x-small"
																	value="12022205040094748966" maxlength="20">

																<div class="radio-group settx">
																	<span class="dinraido"> <input type="radio"
																		name="radio_payment" id="radio_001" value="oksave"
																		checked="checked"> <label for="radio_001"
																		class="icon_ok mr20">OK캐쉬백</label>
																	</span> <span class="dinraido"> <input type="radio"
																		name="radio_payment" id="radio_002" value="lpsave">
																		<label for="radio_002" class="icon_lpoint">L.POINT</label>
																	</span>
																</div>
															</div>
															<div class="pop-search-area-line">
																<p class="sh-txt reset">
																	<label for="card_no" style="color: #444;">카드번호</label>
																</p>

																<div class="sh-input">
																	<input type="text" id="card_no"
																		title="카드번호&#39;-&#39;없이 입력(16자리)"
																		class="input-text w270px x-small"
																		placeholder="카드번호&#39;-&#39;없이 입력(16자리)"
																		maxlength="19">
																</div>
															</div>

														</div>
													</div>

													<div class="box-border v1 use-guide mt10">
														<p class="tit">이용안내</p>

														<ul class="dot-list gray"
															style="line-height: 1.5; color: #444;">
															<li>OK캐쉬백과 L.POINT중 하나의 제휴포인트만 적립 가능합니다.</li>
															<li>할인 및 결제수단에 따라 적립 가능한 포인트가 상이할 수 있습니다.</li>
															<li>제휴 포인트 적립은 상영 당일까지만 적립 가능하며, 상영일이 지난 후에는 적립이
																불가합니다.</li>
														</ul>
													</div>
												</div>

												<div class="btn-group-fixed">
													<button type="button" class="button small close-layer"
														id="btn_close_point">닫기</button>
													<button type="button" class="button small purple"
														id="btn_save_point">적용</button>
												</div>

												<button type="button" class="btn-modal-close">
													레이어 닫기
													<!-- 레이어 닫기 -->
												</button>
											</div>
											</section>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="btn-group pt30">
							<a
								href="#"
								class="button large" w-data="600" h-data="600"
								id="btn_ticket_print" title="교환권출력">교환권출력 <!-- 교환권출력 --></a> <a
								href="#"
								class="button large" id="btn_bill_print" title="영수증출력">영수증출력
								<!-- 영수증출력 -->
							</a> <a href="#"
								class="button purple large" title="예매내역 페이지로 이동">예매내역 <!-- 예매내역 --></a>
						</div>
						<div class="box-border v1 mt10">
							<ul class="dot-list gray">
								<li>상영안내 <!-- 상영안내 -->
									<ul class="dash-list">
										<li>쾌적한 관람 환경을 위해 상영시간 이전에 입장 부탁드립니다.</li>
										<li>지연입장에 의한 관람불편을 최소화하고자 본 영화는 10분 후 시작됩니다.</li>
										<li>상영시간 20분전까지 취소 가능하며, 캡쳐화면으로는 입장하실 수 없습니다.</li>
									</ul>
								</li>
								<li class="mt20">주차안내 <!-- 주차안내 -->
									<ul class="dash-list">
										<li>건물 뒷쪽 신촌역사 주차타워 3,4,5층 이용</li>
										<li>매표소에서 관람영화 티켓 확인 후 주차 할인권 구입(3시간권 1매당 3,500원/ 최대 2매까지
											구매가능)</li>
									</ul>
								</li>
							</ul>
						</div>
					</div>
					<!--// quick-reserve -->
				</div>
				<!--// inner-wrap -->
			</div>
			<!--// contents -->
		</div>
		<section id="saw_movie_regi" class="modal-layer"> <a
			href="https://www.megabox.co.kr/booking/payment-successcomplete"
			class="focus">레이어로 포커스 이동 됨</a> <input type="hidden" id="isLogin"
			value="Y">
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
			<a href="https://www.megabox.co.kr/booking/payment-successcomplete"
				class="btn-go-top" title="top">top</a>
		</div>


	</div>
</body>
</html>