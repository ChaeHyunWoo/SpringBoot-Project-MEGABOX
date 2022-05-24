<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게 시 판</title>

<link rel="stylesheet" type="text/css" href="/resources/css/style.css"/>
<link rel="stylesheet" type="text/css" href="/resources/css/list.css"/>
<link rel="stylesheet" type="text/css" href="/resources/css/main_files/megabox.min.css" media="all">

</head>
<body>



	<!-- container -->
	<div class="container has-lnb">
		<div class="page-util">
			<div class="inner-wrap">
				<div class="location">
					<span>Home</span>
					<a href="https://www.megabox.co.kr/support" title="고객센터 페이지로 이동">고객센터</a>
					<a href="http://localhost:8080/movie/list" title="공지사항 페이지로 이동">공지사항</a>
				</div>

			</div>
		</div>

		<div class="inner-wrap">
			<div class="lnb-area addchat">
				<nav id="lnb">
					<p class="tit"><a href="https://www.megabox.co.kr/support" title="고객센터">고객센터</a></p>
					<ul>
						<li><a href="https://www.megabox.co.kr/support" title="고객센터 홈">고객센터 홈</a></li>
						<li><a href="https://www.megabox.co.kr/support/faq" title="자주 묻는 질문">자주 묻는 질문</a></li>
						<li><a href="http://localhost:8080/movie/created" title="공지사항">공지사항</a></li>
						<li><a href="http://localhost:8080/movie/created2" title="1:1문의">1:1문의</a></li>
						<li><a href="https://www.megabox.co.kr/support/rent" title="단체관람 및 대관문의">단체관람 및 대관문의</a></li>
						<li><a href="https://www.megabox.co.kr/support/lost" title="분실물 문의">분실물 문의</a></li>
						<li><a href="https://www.megabox.co.kr/support/terms" title="이용약관">이용약관</a></li>
						<li><a href="https://www.megabox.co.kr/support/lcinfo" title="위치기반서비스이용약관">위치기반서비스이용약관</a></li>
						<li><a href="https://www.megabox.co.kr/support/privacy" title="개인정보처리방침">개인정보처리방침</a></li>
						<li><a href="https://www.megabox.co.kr/support/screenrule" style="border-radius: 0 0 10px 10px;" title="스크린배정수에관한기준">스크린배정수에관한기준</a></li>
					</ul>

					<!-- 고객센터 메뉴일때만 출력 -->
					<div class="left-customer-info">
						<p class="tit">
							메가박스 고객센터
							<span>Dream center</span>
						</p>
						<p class="time"><i class="iconset ico-clock"></i> 10:00~19:00</p>
					</div>
				</nav>
			</div>

			<div id="contents" class="">
				<h2 class="tit">수정</h2>

				<div class="table-wrap">
					<div class="board-view">
						<div class="tit-area">
							<p class="tit">	${dto.subject }</p>
						</div>

						<div class="info">
							
								
								
									<p>
										<span class="tit">작성자</span>
										<span class="txt">${dto.name }</span>
									</p>
								
							
									<p>
										<span class="tit">등록일</span>
										<span class="txt">${dto.created }</span>
									</p>
							
									<p>
										<span class="tit">조회수</span>
										<span class="txt">${dto.hitCount }</span>
									</p>
							
							
						</div>

						<div class="cont">${dto.content }</div>
					</div>
				</div>

				<!-- <div class="prev-next">
					<div class="line prev">
						<p class="tit">이전</p>
						
							
								<p class="link">이전글이 없습니다.</p>
							
							
						
					</div>

					<div class="line next">
						<p class="tit">다음</p>
						
							
							
								<a href="https://www.megabox.co.kr/support/notice/detail?artiNo=10575#" class="link moveBtn" data-no="10574" title="[광명AK플라자] 5/22 극장운영 안내 ">[광명AK플라자] 5/22 극장운영 안내 </a>
							
						
					</div>
				</div> -->

				<div class="btn-group pt40">
					<a href="javascript:location.href='<%=cp%>/movie/updated?num=${dto.num }&${params }';" class="button large listBtn" title="수정">수정</a>
					<a href="javascript:location.href='<%=cp%>/movie/deleted_ok?num=${dto.num }&${params }';" class="button large listBtn" title="삭제">삭제</a>
					<a href="javascript:location.href='<%=cp%>/movie/list?${params }';" class="button large listBtn" title="리스트">리스트</a>
				</div>
			</div>
		</div>
		
	</div>
	<!--// container -->









</body>
</html>






