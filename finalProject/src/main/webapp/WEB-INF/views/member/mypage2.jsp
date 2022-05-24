<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=yes">
<link rel="shortcut icon" href="https://www.megabox.co.kr/static/pc/images/favicon.ico">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>

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
	content="메가박스에서 영화를 간편하고 빠르게 예약해보세요.">
<meta property="og:image" id="fbImg"
	content="https://img.megabox.co.kr/SharedImg/metaTag/2020/02/04/gFfTzMwwiCxhBwcUV5TRGMFX9Cmoj64W.jpg">

<link rel="stylesheet" href="/resources/booking_2_files/megabox.min.css" >
<style type="text/css">

	

	.button1 {
            background-color: rgb(63,0,153);
            color : white;
            width:300px;
            height:50px;
            font-size: 17px;
            border : none;
            border-radius: 5px;
            margin : 20px 0 30px 0;
        }
        
		.button2 {
            background-color: rgb(63,0,153);
            color : white;
            
        }
	.button3 {
            background-color: rgb(63,0,153);
            color : white;
            width:100px;
            height:32px;
            font-size: 17px;
            border : none;
            border-radius: 5px;
            margin : 20px 0 30px 0;
        }        
        
	 .title {
            font-size : 50px;
            margin: 40px 0 30px 0;
        }
        


</style>
<!-- Global site tag (gtag.js) - Google Analytics -->
<script type="text/javascript" async=""
	src="resources/booking_2_files/analytics.js.다운로드"></script>
<script async="" src="resources/booking_2_files/js"></script>
<script>window.dataLayer = window.dataLayer || []; function gtag(){dataLayer.push(arguments);} gtag('js', new Date()); gtag('config', 'UA-30006739-3');</script>
<script src="resources/booking_2_files/megabox.api.min.js.다운로드"></script>
<script src="resources/booking_2_files/lozad.min.js.다운로드"></script>
<script src="resources/booking_2_files/megabox.common.min.js.다운로드"></script>
<script src="resources/booking_2_files/megabox.netfunnel.min.js.다운로드"></script>
<script src="resources/booking_2_files/persona.js.다운로드" async=""></script>




<script type="text/javascript">

  		
  		var reset = ''

  		if( reset == 'Y' || location.pathname == '/booking' ){
  			history.replaceState('','',location.href);
  		}

        var _init = {
            cache	: Date.now(),
            path	: '/static/pc/js/'
        };

        document.write(
            '<script src="'+_init.path+'ui.common.js?v='+_init.cache+'"><\/script>'+
            '<script src="'+_init.path+'front.js?v='+_init.cache+'"><\/script>'
        );

        //RedirectException 발생시 메시지 처리
        

        //링크 구분에 따라 url 이동을 한다.
        function fn_goMoveLink(link_gbn, link_url) {
            alert("준비중 입니다");
            return;
        }
    </script>
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
		<script src="resources/booking_2_files/hmac-sha256.js.다운로드"></script>
		<script src="resources/booking_2_files/enc-base64-min.js.다운로드"></script>
		<script type="text/javascript">
/*전역변수
아이디
패스워드  입력 완료 체크 변수 필요
*/
var sValidateLoginIdAt  = 'N';	//로그인ID  입력 검증 여부
var sValidateLoginPwdAt = 'N';	//로그인PWD 입력 검증 여부
var submitIng = false;
var sCookieVal = "";	//쿠키값


$(function(){
	/*로그인 버튼 비활성*/
	$("#btnLogin").attr("disabled", true);

	/*쿠키조회 pc 아이디값 입력 및 자동로그인 체크*/
	sCookieVal = fn_getCookie('loginId');
	if (!(sCookieVal == null || sCookieVal == "")){
		$("#ibxLoginId").val(sCookieVal);
		$("input:checkbox[id='chkIdSave']").prop("checked",true);
		fn_validateInputVal("loginId",sCookieVal);
	}

	/*이벤트*/
	/*로그인*/
	$("#btnLogin").click(function(){
		var sLoginId   = $("#ibxLoginId").val();
		var sLloginPwd = $("#ibxLoginPwd").val();


		$('#error-text').text('');

		//아이디 저장 버튼 체크시 쿠키 설정
		if($("input:checkbox[id='chkIdSave']").is(":checked")){
			fn_setCookie('loginId',$("#ibxLoginId").val(),730);
		}
		//아이디 저장 체크 안했을때 쿠키 삭제
		else if(!$("input:checkbox[id='chkIdSave']").is(":checked")){
			fn_deleteCookie('loginId');
		}

		fn_selectMbLogin(sLoginId, sLloginPwd);	//로그인
	});

	/*아이디 입력시 체크 */
	$("#ibxLoginId").on("keyup", function(e){
		if(fn_validateInputVal("loginId", $(this).val())){
			if(e.keyCode == 13){$("#btnLogin").click();}
		} else {
			if(e.keyCode == 13){$("#ibxLoginPwd").focus();}
		}

		return;
	});

	/*비밀번호 입력체크 */
	$("#ibxLoginPwd").on("keyup", function(e){
		if(fn_validateInputVal("loginPwd", $(this).val())){
			if(e.keyCode == 13){$("#btnLogin").click();}
		}
		return;
	});


	// 페이스북 로그인
	$('.login-facebook').on('click', function(e) {
		e.preventDefault();

		var type = $(this).data('type');

		FB.login(function(response){
			if(response.authResponse.userID) {
				$.ajaxMegaBox({
					url: '/on/oh/ohg/MbLogin/selectMbSimpleLogin.rest',
					data: JSON.stringify({ simpleLoginId: response.authResponse.userID, type: type }),
					success: function (data) {
						if(data.result) {
							AppHandler.Common.goMain();  // 메인페이지로 이동
						} else {
							AppHandler.Common.alert('본 서비스는 메가박스 회원인 경우에만  이용하실 수 있습니다.\n회원가입 후 이용 부탁 드립니다.');
						}
					}
				});
			}
		});
	});
});

//쿠키설정
function fn_setCookie(cname, cvalue, exdays) {
	var d = new Date();
	d.setTime(d.getTime() + (exdays*24*60*60*1000));
	var expires = "expires="+d.toUTCString();
	document.cookie = cname + "=" + cvalue + "; " + expires + ";path=/";
}

//쿠키조회
function fn_getCookie(name) {
	var value = document.cookie.match('(^|;) ?' + name + '=([^;]*)(;|$)');
	return value? value[2] : null;

}

//쿠키삭제
function fn_deleteCookie(name){
	var d = new Date();
	d.setTime(d.getDate() -1);
	var expires = "expires="+d.toUTCString();
	document.cookie = name + "=;" + expires + ";path=/";
}


//입력 문자 체크
function fn_validateInputVal(type,sVal,submitAt){
	if(type == "loginId") {		  //아이디

		if(sVal == ""){
			sValidateLoginIdAt = 'N';
		}
// 		if (!/((?=.{8,})(?=.*[0-9])(?=.*[a-zA-Z]).*$)/g.test(sVal)) {
// 			$('#error-text').text('아이디는 영문,숫자 조합 8자리 이상 12자리 이하 입니다.');
// 			sValidateLoginIdAt = 'N';
// 		}
// 		else if (/((?=.{8,})(?=.*[~!@#$%^&*+=-]).*$)/g.test(sVal)) {
// 			$('#error-text').text('아이디는 영문,숫자 조합 8자리 이상 12자리 이하 입니다.');
// 			sValidateLoginIdAt = 'N';
// 		}
		else{
			$('#error-text').text('');
			sValidateLoginIdAt = 'Y';
		}
	}
	else if(type == "loginPwd") { //패스워드
		if(sVal == ""){
			sValidateLoginPwdAt = 'N';
		}
// 		if (!/((?=.{10,})(?=.*[0-9])(?=.*[a-zA-Z]).*$)|((?=.{10,})(?=.*[~!@#$%^&*+=-])(?=.*[a-zA-Z]).*$)|((?=.{10,})(?=.*[!@#$%^&*+=-])(?=.*[0-9]).*$)/g.test(sVal)) {
// 			$('#error-text').text('비밀번호는 영문,숫자,특수기호 중 2가지 이상 조합하여 10자리 이상 16자리 이하 입니다.');
// 			sValidateLoginPwdAt = 'N';
// 		}
		else {
			$('#error-text').text('');
			sValidateLoginPwdAt = 'Y';
		}
	}

	if(submitAt != 'Y'){
		if(sValidateLoginIdAt == 'Y' && sValidateLoginPwdAt =='Y') {
			$("#btnLogin").attr("disabled", false);	//버튼활성화
		}
		else {
			$("#btnLogin").attr("disabled", true);	//버튼비활성화
		}
	}

	if(sValidateLoginIdAt == 'N' || sValidateLoginPwdAt =='N') {
		return false;
	}

	return true;
}


//패스워드 3개월 초과시 다음에 하기 버튼 누를경우 비밀번호 변경일자 오늘날자로 셋팅
//비번 재설정은 3개월 미변경시, 변경 안하면 로그인 할때마다 alert 나옴 20190507
function fn_updatePwdUptDt(sLoginId){
	var paramData = { loginId:sLoginId };
	$.ajaxMegaBox({
		url: "/on/oh/ohg/MbLogin/updateMbPwdReSet.rest",
		type: "POST",
		contentType: "application/json;charset=UTF-8",
		dataType: "json",
		data: JSON.stringify(paramData),
		success: function (data, textStatus, jqXHR) {
			//메인 화면으로 이동
			$(location).attr('href','/main');
		},
		error: function(xhr,status,error){
			var err = JSON.parse(xhr.responseText);
			alert(xhr.status);
			alert(err.message);
		}
	});
}

// 광고 쿠키 싱크 전달
function fn_adSetCookie(adMap){

	var adUrl = "https://ad.imp.joins.com/setcookie/megabox?gender=" + adMap.gender + "&birthday=" + adMap.birthday + "&genre=" + adMap.genre + "&theater=" + adMap.theater;
	if (document.domain.indexOf('t-') == -1){
		$.ajax({
			type: "get"
			, url: adUrl
			, data: ""
			, async : false
			, success: function(result) {
			console.log(result);
			}
			, error: function(err) {
			  console.log('error : ' + err.status);
			}
		});
	}

}

//로그인
function fn_selectMbLogin(sLoginId, sLloginPwd, snsLoginAt, redisKey){

	if(submitIng) return;

	/* 폼데이터 초기화 */
	$('#loginForm input[name=certType]').val();								//본인인증 모듈 코드값 초기화
	var sMenuId = $('input[name=menuId]').val();							//호출화면id
	var sMappingId = $('input[name=mappingId]').val();						//리턴URL
	var sSnsLogin = typeof snsLoginAt == 'undefined' ? "N" : snsLoginAt;	//sns로그인 여부

	var validLoginId  = sLoginId != null ? sLoginId.replace(/ /gi,"") : "";
	var validLoginPwd = sLloginPwd != null ? sLloginPwd.replace(/ /gi,"") : "";

	if(validLoginPwd != "simpleLogin"){
		if(validLoginId == "" || validLoginPwd == ""){
			gfn_alertMsgBoxSize('로그인 정보를 입력해 주세요.',400,250);	//로그인 정보를 입력해 주세요.
			return;
		}
	}

	var paramData = { loginId:sLoginId
					, loginPwd:sLloginPwd
					, menuId:sMenuId
					, mappingId:sMappingId
					, snsLogin:sSnsLogin
					, redisKey:redisKey
					};

	$.ajaxMegaBox({
		url: "/on/oh/ohg/MbLogin/selectMbLoginInfo.rest",
		data: JSON.stringify(paramData),
		//async: false,
		success: function (data, textStatus, jqXHR) {
			var revStr                 = data.revStr;
			var redisKey               = data.redisKey;
			var pwdErrCnt              = data.pwdErrCnt+1;
			var loginPwdLstUptDt       = data.loginPwdLstUptDt;
			var pwdUptDayco            = data.pwdUptDayco;
			var menuId                 = data.menuId;
			var mappingId              = data.mappingId;
			var marketRcvStr           = data.marketRcvStr
			var loginIdStar            = data.loginIdStar;

			//비밀번호 5회 오류	//본인인증 수단 선택 M-ME-DA-01
			if (revStr == "acctLock") {
				$('#loginForm input[name=redisKey]').attr('value',redisKey);
				$('#loginForm input[name=certType]').attr('value','SCRC05');
				var options = {};
				options.msg = '로그인정보가 5회 이상 잘못 입력되었습니다.\n회원인증 후 새로운 비밀번호를 설정해 주세요.';	//비밀번호 5회 이상 잘못 입력되었습니다.\n본인인증 후 새로운 비밀번호를 설정해 주세요.
				options.callback  = fn_mvPage;
				options.param = {confirm:'/on/oh/ohg/MbLogin/viewMbSimpleCertPage.rest'};	//간편인증페이지
				options.minWidth  = 400;
				options.minHeight = 250;
				gfn_alertMsgBox(options);
				return;
			}
			//비밀번호 변경9개월 초과 //비밀번호 재설정 M-ME-FI-04	비밀번호변경 9개월 체크 하지 않음. 무조건 3개월 연장
// 			else if (revStr == "loginPwdUpt9mm") {
// 				$('input[name=loginId]').attr('value',loginId);
// // 				mbLayer.toggle({id:revStr, msg:'회원님의 개인정보 보호를 위해 3개월마다 비밀번호 변경 안내해드리고 있습니다.\n마지막 변경일 : '+loginPwdLstUptDt+'('+pwdUptDayco+'일전)', btn:'비밀번호 변경', callback:fn_mvPage, param:'/pw-register', minHeight:200, type:'single' });
// 				var options      = {};
// 				options.msg      = '회원님의 개인정보 보호를 위해 3개월마다 비밀번호 변경 안내해드리고 있습니다.\n마지막 변경일 : '+loginPwdLstUptDt+'('+pwdUptDayco+'일전)';
// 				options.okBtnTxt = "비밀번호 변경";
// 				options.callback = fn_mvPage;
// 				options.param    = {confirm:'/pw-register'};
// 				options.minWidth  = 400;
// 				options.minHeight = 250;
// 				gfn_alertMsgBox(options);
// 				return;
// 			}
			//비밀번호 변경3개월 초과	//다음에하기, 비밀번호 재설정 M-ME-FI-04
			else if (revStr == "loginPwdUpt3mm") {
				$('#loginForm input[name=redisKey]').attr('value',redisKey);
				var options = {};
				options.msg        = '회원님의 개인정보 보호를 위해 3개월마다 비밀번호 변경안내를 시행하고 있습니다.\n안전한 서비스 이용을 위해 비밀번호 변경 후 이용바랍니다.\n지금 변경 하시겠습니까?\n\n마지막 변경일 : '+loginPwdLstUptDt+'('+pwdUptDayco+'일전)';
				options.confirmFn  = fn_mvPage;
				options.cancelFn   = fn_loginSuccessEvent;
				options.okBtnTxt     = "비밀번호 재설정";
			    options.cancelBtnTxt = "다음에 하기";
			    options.minWidth  = 400;
				options.minHeight = 300;
				options.param      = {confirm:"/pw-register" };
				gfn_confirmMsgBox(options);
				return;
// 				if(confirm('회원님의 개인정보 보호를 위해 3개월마다 비밀번호 변경안내를 시행하고 있습니다.\n안전한 서비스 이용을 위해 비밀번호 변경 후 이용바랍니다.\n지금 변경 하시겠습니까?\n\n마지막 변경일 : '+loginPwdLstUptDt+'('+pwdUptDayco+'일전)')){
// 					$('input[name=loginId]').attr('value',loginId);
// 					fn_mvPage('/pw-register');
// 					return;
// 				}
// 				else {
// 					fn_mvPage("/main");	//메인페이지로 이동
// 					return;
// 				}
			}
			//마케팅 수신일 2년 초과	//todo 다음에하기, 수신동의 설정 내정보 수정화면 개발후연결
			else if (revStr == "marketRcv") {
				var options        = {};
				options.msg        = '마케팅 수신 동의일로부터 2년이 경과되어, 수신에 대한 재동의 안내를 시행하고 있습니다. \n메가박스의 다양한 소식 및 이벤트를 받고 싶으시면 수신동의 재설정이 필요합니다.  \n수신동의 재설정을 진행 하시겠습니까?\n\n[수신동의 정보]\n'+marketRcvStr+'';
				//options.msg        = '마케팅 수신 동의일로부터 2년이 경과되어, 수신에 대한 재동의 안내를 시행하고 있습니다. \n메가박스의 다양한 소식 및 이벤트를 받고 싶으시면 수신동의 재설정이 필요합니다.  \n수신동의 재설정을 진행 하시겠습니까?\n\n[수신동의 정보]\n&#39;+lstSmsRcvAgreeDt+&#39;'.replaceAll('\n','<br/>');
				options.confirmFn  = fn_mvPage;
				options.cancelFn   = fn_loginSuccessEvent;
				options.okBtnTxt     = "수신동의 설정";
			    options.cancelBtnTxt = "다음에 하기";
				options.param      = {confirm:"/on/oh/ohh/Mypage/userAdditInfoPage.do?marketRcvReAgree=Y"};
				options.minWidth  = 400;
				options.minHeight = 300;
				gfn_confirmMsgBox(options);
				return;
			}
			//관리자에의한 패스워드 초기화 //비밀번호 재설정 M-ME-FI-04	관리자에 의한 패스워드 초기화는 없다.
// 			else if (revStr == "loginPwdReset") {
// // 				mbLayer.toggle({id:revStr, msg:'비밀번호 재설정이 완료되었습니다. 다시 로그인해 주시기 바랍니다.', btn:'확인', callback:fn_mvPage, param:'/pw-register', minHeight:200, type:'single' });
// 				var options = {};
// 				options.msg = '비밀번호 재설정이 완료되었습니다. 다시 로그인해 주시기 바랍니다.';
// 				options.callback  = fn_mvPage;
// 				options.param = {confirm:'/pw-register'};
// 				options.minWidth  = 400;
// 				options.minHeight = 250;
// 				gfn_alertMsgBox(options);
// 				return;
// 			}
			//휴면계정복구 안내	//TODO 다음에하기, 휴면계정복구 본인인증 수단 선택 M-ME-DA-01
			else if (revStr == "mbSchIdGuideDormAcct") {
				$('#loginForm input[name=certType]').attr('value','SCRC03');
				$('#loginForm input[name=redisKey]').attr('value',redisKey);
				var options = {};
				options.msg        = '회원님의 아이디는 ['+loginIdStar+'] 메가박스 온라인 서비스를 1년이상 이용하지 않아 휴면계정으로 전환되었습니다. 휴면계정 복구 후 서비스 이용이 가능합니다.\n휴면계정 복구를 진행하시겠습니까?';
				options.okBtnTxt = "휴면계정복구";
				options.callback = fn_mvPage;
				options.param    = {confirm:"/member-check"};
				options.minWidth  = 400;
				options.minHeight = 300;
				gfn_alertMsgBox(options);
				return;
			}
			//탈퇴회원안내
			else if (revStr == "quitMb") {
				gfn_alertMsgBoxSize('회원탈퇴 후 1개월 이내 재가입할 수 없습니다.\n메가박스 고객센터로 문의해 주세요',400,250);	//회원탈퇴 후 1개월 이내 재가입할 수 없습니다. 메가박스 고객센터로 문의해 주세요
				return;
			}
			//loginPwdFail 패스워드실패안내, mbJoinReq 회원가입안내, mbInfoSearchUnable 탈퇴회원안내
			else if (revStr == "loginPwdFail" || revStr == "mbJoinReq" || revStr == "mbInfoSearchUnable") {
// 				$('.alert').text('로그인 정보가 잘못되었습니다. (로그인 '+pwdErrCnt+'/5회 실패)');	2020-02-06 메가박스 차세대 이행/안정화 결함대장 28번
				$("#ibxLoginId").val("");
				$("#ibxLoginPwd").val("");
				gfn_alertMsgBoxSize('아이디 또는 비밀번호가 맞지 않습니다.\n로그인 정보를 다시 확인바랍니다.',400,250);	//msg.ch.ohg.ME031=아이디 또는 비밀번호가 맞지 않습니다.\\n로그인 정보를 다시 확인바랍니다.
				$("#btnLogin").attr("disabled", true);	//버튼비활성화
				sValidateLoginPwdAt ='N';
				return;
			}

		    if(typeof loginPopupCallScn === "undefined"){
		    	loginPopupCallScn = "";
		    }
// 		    console.log("this : "+loginPopupCallScn);
			//화면이동

			// 로그인시도 시 메가박스 쿠키싱크 전달
			fn_adSetCookie(data.adMap);
			if(menuId != "" && menuId != null){  //화면으로 띄웠을떄
				fn_mvPage(mappingId);
				return;
			}
			else {

				fn_loginSuccessEvent();

			}
			return;
		},
		error: function(xhr,status,error){
			 var err = JSON.parse(xhr.responseText);
			 alert(xhr.status);
			 alert(err.message);
		},
		beforeSend: function() {
			submitIng = true;
		},
		complete: function() {
			submitIng = false;
		}
	});

	function fn_loginSuccessEvent(){

		var bokdLoginAt = $('#loginForm input[name=bokdLoginAt]').val();
		var reloadYn = $('#loginForm input[name=reloadYn]').val();
		var validDataRevisnYn = $('#loginForm input[name=validDataRevisnYn]').val();				//데이터 보정 여부

		if(bokdLoginAt == "Y"){
			//예매로그인일경우
			//오입력값을 체크한다.
			$('.before').hide();
			$('.after').show();
			$('.after .notice').show();
			$('#layer_login_select button.btn-modal-close').trigger("click");
			fn_validDataRevisn(JSON.parse($('#loginForm input[name=bokdLoginParam]').val()));
		}
		else {
			if (reloadYn == "N") {

				$('.before').hide();
				$('.after').show();
				$('.after .notice').show();
				$('#layer_login_select button.btn-modal-close').trigger("click");
				if(validDataRevisnYn == "Y"){
					fn_validDataRevisn();
				}
			} else {

				//화면 리로드
				//location.reload();
				//post submit시 브라우저 경고창 관련
				window.document.location.href = window.document.URL;


				////////////////////////////////////////////
				// TODO 빵원쿠폰일 경우에만 처리되도록 수정 //
                ////////////////////////////////////////////
                $(".btn-modal-close").click();
                ////////////////////////////////////////////
                ////////////////////////////////////////////
			}
		}

		if (callback) {
			try {
				callback();
			} catch (e) {
				console.error(e);
			}
		}
	}

	//페이지 이동 submit
	function fn_mvPage(page){
// 		console.log("MbLoginScriptDV.fn_mvPage : "+page);

		var rtnParam = $("#loginForm [name=rtnParam]").val();

		if (rtnParam.trim() != ""){

			var arr;
			var html = '<input type="hidden" name="#1" value="#2" />';

			$.each(rtnParam.split(','), function(i, val){

				arr = val.split(':');
				arr[0] = arr[0].trim();
				arr[1] = arr[1].trim();
				arr[2] = '[name='+arr[0]+']';

				if ($("#loginForm").find(arr[2]).length > 0) {
					$("#loginForm").find(arr[2]).val(arr[1]);
				} else {
					$("#loginForm").append(html.replace('#1', arr[0]).replace('#2', arr[1]));
				}
			});
		}

		$("#loginForm").attr("method","post");
		$("#loginForm").attr("action",page);
		$("#loginForm input[name=preUrl]").val(document.location.pathname)
		$("#loginForm").submit();
	}
}
/* 비회원 */
var sValidateNonMbNmAt               = "N";
var sValidateNonMbByymmddAt          = "N";
var sValidateNonMbTelnoAt            = "N";

var sValidateMblpCharCertNo          = "N";

var sValidateNonMbPwdAt              = "N";
var sValidateNonMbPwdConfirmAt       = "N";
var sValidateNonMbPwdEqualAt         = "N";
var sValidateNonMbBokdPersonInfoProc = "N";
var sValidateMblpCertNoSuccess      = "N";

var AuthTimer;
var bokdCnfmAt                       = "N";

//이벤트
$(function(){
	if(typeof $("#ibxNonMbPwdConfirm").val() == 'undefined'){
		bokdCnfmAt = "Y";
	}
	fn_validateNonMbInputVal();
	/*비회원 로그인 버튼 비활성화*/
	$("#btnMbLogin").attr("disabled", true);

	/*비회원 정보 확인 버튼 비활성화*/
	$("#btnChkNonMbLogin").attr("disabled", true);
	$("#btnNonMbLogin").attr("disabled", true);

	/* 이름 숫자를 제외한 입력 여부판단 */
	$("#ibxNonMbNm").on("keyup", function(e){
		var partton = /[^ㄱ-힣a-zA-Z]/g;
		if(partton.test($(this).val())) {
			var value = $(this).val().replace(/[^ㄱ-힣a-zA-Z]/g,"");
			$(this).val(value);
		}
		if(fn_validateNonMbInputVal()){
			if(e.keyCode == 13) {$("#btnChkNonMbLogin").click();}
		} else {
			if(e.keyCode == 13) {$("#ibxNonMbByymmdd").focus()};
		}
	});
	$("#ibxNonMbNm").focusout(function(){
		var partton = /[^ㄱ-힣a-zA-Z]/g;
		if(partton.test($(this).val())) {
			var value = $(this).val().replace(/[^ㄱ-힣a-zA-Z]/g,"");
			$(this).val(value);
		}
		fn_validateNonMbInputVal();
	});

	/* 생년월일 숫자만 입력 여부판단 */
	$("#ibxNonMbByymmdd").on("keyup", function(e){
		$(this).val($(this).val().replace(/[^0-9]/g,""));
		if(fn_validateNonMbInputVal()){
			if(e.keyCode == 13) {$("#btnChkNonMbLogin").click();}
		} else {
			if(e.keyCode == 13) {$("#ibxNonMbTelno").focus();}
		}
	});
	$("#ibxNonMbByymmdd").focusout(function(){
		$(this).val($(this).val().replace(/[^0-9]/g,""));
		fn_validateNonMbInputVal();
	});

	/* 휴대폰번호 숫자만 입력 여부판단 */
	$("#ibxNonMbTelno").on("keyup", function(e){
		$(this).val($(this).val().replace(/[^0-9]/g,""));

		//휴대폰 번호
		if($("#ibxNonMbTelno").val() != "") {
			var frontNm = $("#ibxNonMbTelno").val().substr(0,2);
			if(frontNm != '01'){
				$('#mblpInput-error-text').text('휴대폰번호를 정확히 입력해주세요.');
				ibxNonMbTelno = 'N';
				return false;
			}
			else if($("#ibxNonMbTelno").val().length < 10){
				$('#mblpInput-error-text').text('휴대폰번호를 정확히 입력해주세요.');
				sValidateNonMbTelnoAt = 'N';
				return false;
			}
			else {
				sValidateNonMbTelnoAt = 'Y';
				$('#mblpInput-error-text').text('');
			}
		}
		else {
			sValidateNonMbTelnoAt = 'N';
		}

		//console.log("sValidateNonMbTelnoAt", sValidateNonMbTelnoAt);
		//console.log("sValidateMblpCertNoSuccess", sValidateMblpCertNoSuccess);

		//인증번호 전송 버튼 활성화
		if( sValidateNonMbTelnoAt   == 'Y' && sValidateMblpCertNoSuccess == 'N') {
			$("#nonMbCertNoSend").attr("disabled", false);
			$("#nonMbCertNoSend").removeClass("disabled");
			if(window.fn_validateJoinInfoRegInputVal) {
				//sValidateMblpCertNoSuccess = "Y";
				fn_validateJoinInfoRegInputVal();
			}
		}
		else{
			$("#nonMbCertNoSend").attr("disabled", true);
			$("#nonMbCertNoSend").addClass("disabled");
			if(window.fn_validateJoinInfoRegInputVal) {
				//sValidateMblpCertNoSuccess = "N";
				fn_validateJoinInfoRegInputVal();
			}
		}

		if(e.keyCode != 9){
			if(typeof AuthTimer != 'undefined'){
				AuthTimer.fnStop();
				$('#timer').html("3:00");
				$('#nonMbCertNoSend').html("인증요청");
				sValidateMblpCertNoSuccess = "N";
				$('#nonMbCertRow').show();
				$('#mblpCharCertNo').val("");
				$("#nonMbCertNoSend").removeClass("disabled");
				$("#nonMbCertNoSend").attr("disabled", false);
				$("#btnMblpCharCert").attr("disabled", true);
				$("#btnMblpCharCert").addClass("disabled");
				if(fn_validateNonMbInputVal()){
					if(e.keyCode == 13) {$("#btnChkNonMbLogin").click();}
				} else {
					if(e.keyCode == 13) {$("#nonMbCertNoSend").click();}
				}
			}
			else {
				if(fn_validateNonMbInputVal()){
					if(e.keyCode == 13) {$("#btnChkNonMbLogin").click();}
				} else {
					if(e.keyCode == 13) {$("#ibxNonMbPwd").focus();}
				}
			}
		}
	});
	$("#ibxNonMbTelno").focusout(function(){
		$(this).val($(this).val().replace(/[^0-9]/g,""));
		fn_validateNonMbInputVal();
	});

	/* 인증번호 숫자만 입력 여부 판단*/
	$("#mblpCharCertNo").on("keyup", function(e){
		$(this).val($(this).val().replace(/[^0-9]/g,""));

		if($("#mblpCharCertNo").val().length >= 4) {
			$("#btnMblpCharCert").removeClass("disabled");
			$("#btnMblpCharCert").attr("disabled", false);
		}
		else {
			$("#btnMblpCharCert").attr("disabled", true);
			$("#btnMblpCharCert").addClass("disabled");
		}

		if(e.keyCode == 13) {$("#btnMblpCharCert").click();}
	});
	$("#mblpCharCertNo").focusout(function(){
		$(this).val($(this).val().replace(/[^0-9]/g,""));
		if($("#mblpCharCertNo").val().length >= 4) {
			$("#btnMblpCharCert").removeClass("disabled");
			$("#btnMblpCharCert").attr("disabled", false);
		}
		else {
			$("#btnMblpCharCert").attr("disabled", true);
			$("#btnMblpCharCert").addClass("disabled");
		}
	});

	/* 비밀번호 숫자만 입력 여부판단 */
	$("#ibxNonMbPwd").on("keyup", function(e){
		$(this).val($(this).val().replace(/[^0-9]/g,""));
		if(fn_validateNonMbInputVal()){
			if(e.keyCode == 13) {$("#btnChkNonMbLogin").click();}
		} else {
			if(e.keyCode == 13) {$("#ibxNonMbPwdConfirm").focus();}
		}
	});
	$("#ibxNonMbPwd").focusout(function(){
		$(this).val($(this).val().replace(/[^0-9]/g,""));
		fn_validateNonMbInputVal();
	});

	/* 비밀번호 확인 숫자만 입력 여부판단 */
	$("#ibxNonMbPwdConfirm").on("keyup", function(e){
		$(this).val($(this).val().replace(/[^0-9]/g,""));
		if(fn_validateNonMbInputVal()) {
			if(e.keyCode == 13) {$("#btnChkNonMbLogin").click();}
		}
	});
	$("#ibxNonMbPwdConfirm").focusout(function(){
		$(this).val($(this).val().replace(/[^0-9]/g,""));
		fn_validateNonMbInputVal();
	});

	//체크박스 변경여부
	$("#chkNonMbBokdPersonInfoProcTrue").change(function() {
		if($('#chkNonMbBokdPersonInfoProcTrue').is(":checked")) {
			fn_validateNonMbInputVal();
		}
		else {
			fn_validateNonMbInputVal();
		}
	});

	$("#chkNonMbBokdPersonInfoProcFalse").change(function() {
		if($('#chkNonMbBokdPersonInfoProcFalse').is(":checked")) {
			fn_validateNonMbInputVal();
		}
		else {
			fn_validateNonMbInputVal();
		}
	});

	/*이벤트*/
	/* 인증번호 전송 버튼 클릭*/
	$("#nonMbCertNoSend").click(function(){
		if($("#nonMbCertNoSend").hasClass("disabled")){
			return;
		}

		var sRedisKey     = $('#loginForm input[name=nonMbCertRedisKey]').val();
		var sNonMbTelno   = $('#ibxNonMbTelno').val();
		var paramData = { redisKey : sRedisKey
						, nonMbTelno : sNonMbTelno
						};

		$('#nonMbCert-error-text').text('');

		$.ajaxMegaBox({
			url: "/on/oh/ohg/MbLogin/selectNonMbCertNoSend.rest",
			type: "POST",
			contentType: "application/json;charset=UTF-8",
			dataType: "json",
			data: JSON.stringify(paramData),
			success: function (data, textStatus, jqXHR) {
				$('input[name=nonMbCertRedisKey]').attr('value',data.resultMap.redisKey);

				if(data.resultMap.successAt == "N"){
					//비회원로그인-예매
					var bokdLoginAt = $('#loginForm input[name=bokdLoginAt]').val();
    				if(bokdLoginAt == "Y"){
    					//예매로그인일경우
    					//인증시간이 만료된 경우
    					if(data.resultMap.msg == "ME061"){
    						gfn_alertMsgBoxSize('인증시간이 만료되었습니다. 인증번호를 재전송 후 입력바랍니다.', 400, 250);	//인증시간이 만료되었습니다. 인증번호를 재전송 후 입력바랍니다.
    					}
    					//동일번호로 3회 이상 요청하는경우
    					else if(data.resultMap.msg == "ME062"){
    						//오입력값을 체크한다.
        					$('.before').hide();
            				$('.after').show();
            				$('#btnNonMbModalClose').trigger("click");
        					$('#layer_login_select button.btn-modal-close').trigger("click");
    						gfn_alertMsgBoxSize('동일번호로 연속적인 인증이 발생하여 창을 닫습니다.\n3분후 다시 시도해 주세요.', 400, 250);	//동일번호로 연속적인 인증이 발생하여 창을 닫습니다.\\n번호를 확인 한 후 처음부터 다시 진행바랍니다.
    					}

    				}
    				else {
    					//회원가입
    					var options = {};
						options.msg = '동일번호로 연속적인 인증이 발생하여 창을 닫습니다.\n3분후 다시 시도해 주세요.';	//동일번호로 연속적인 인증이 발생하여 창을 닫습니다.\\n처음부터 다시 이용바랍니다.
						options.callback  = fn_mvMainPage;
						options.minWidth  = 400;
						options.minHeight = 250;
						gfn_alertMsgBox(options);
    				}
					return;
				}
				else {
					//nonMbCertRedisKey
					//console.log("certNo", data.resultMap.certNo);
					$('#nonMbCertNoSend').html("재전송");
					$('#loginForm input[name=nonMbCertedMblpNo]').attr('value',sNonMbTelno);
					gfn_alertMsgBoxSize('인증번호를 전송했습니다.\n인증번호가 도착하지 않았을 경우 재전송을 눌러 주세요.', 400, 250);

					if(typeof AuthTimer != 'undefined'){
						AuthTimer.fnStop();
						$('#timer').html("3:00");
					}
					else {
						AuthTimer = new $ComTimer();
					}
					AuthTimer.comSecond = 180;
					AuthTimer.fnCallback = function(){alert("다시인증을 시도해주세요.")}
					AuthTimer.timer = setInterval(function(){AuthTimer.fnTimer()},1000);
					AuthTimer.domId = document.getElementById("timer");
					//입력하신 휴대폰 번호로 인증번호가 발송되었습니다. 확인 후 인증번호를 입력해주세요!
				}
			},
			error: function(xhr,status,error){
				var err = JSON.parse(xhr.responseText);
				alert(xhr.status);
				alert(err.message);
			}
		});
	});


	//인증번호 확인 버튼 클릭
	$("#btnMblpCharCert").click(function(){
		if($("#btnMblpCharCert").hasClass("disabled")){
			return;
		}

		var sRedisKey     = $('#loginForm input[name=nonMbCertRedisKey]').val();
		var sMblpCharCertNo = $('#mblpCharCertNo').val();
		var sNonMbTelno     = $('#ibxNonMbTelno').val();
		var paramData = { redisKey : sRedisKey
						, certNo : sMblpCharCertNo
						, nonMbTelno : sNonMbTelno
						};

		$.ajaxMegaBox({
			url: "/on/oh/ohg/MbLogin/selectNonMbCertNoCnfn.rest",
			type: "POST",
			contentType: "application/json;charset=UTF-8",
			dataType: "json",
			data: JSON.stringify(paramData),
			success: function (data, textStatus, jqXHR) {
				var successAt = data.resultMap.successAt;
				var msg = data.resultMap.msg;
				var redisKey = data.resultMap.redisKey;

				if(successAt == "Y"){
					sValidateMblpCertNoSuccess = "Y";
					fn_validateNonMbInputVal();
					$('#loginForm input[name=nonMbCertRedisKey]').attr('value',data.resultMap.redisKey);
					$('#nonMbCert-error-text').text('');
					$("#nonMbCertNoSend").attr("disabled", true);
					$("#nonMbCertNoSend").addClass("disabled");
					$("#nonMbCertRow").hide();
					gfn_alertMsgBoxSize('휴대폰 인증을 완료했습니다.\n확인 버튼을 눌러주세요.', 400, 250);	//휴대폰 인증을 완료했습니다.
					if(typeof fn_validateJoinInfoRegInputVal != "undefined"){
						fn_validateJoinInfoRegInputVal()	//회원가입에서 검증함수 호출
					}
				}
				else {
					sValidateMblpCertNoSuccess = "N";
					if(msg == "ME019"){
						$('#nonMbCert-error-text').text('인증번호가 일치하지 않습니다.\n인증번호를 다시 입력해주세요.');	//msg.ch.ohg.ME019 인증번호를 다시 확인 후 입력해 주세요.
					}
					else if(msg == "ME040"){
						$('#nonMbCert-error-text').text('인증시간이 만료되었습니다. 인증번호를 재전송 후 입력바랍니다.');	//msg.ch.ohg.ME040	유효시간이 지났습니다.  인증번호 재전송을 통해서 다시 인증해주세요.
					}
					else if(msg == "ME061"){
						$('#nonMbCert-error-text').text('인증시간이 만료되었습니다. 인증번호를 재전송 후 입력바랍니다.');	//msg.ch.ohg.ME061	유효시간이 지났습니다.  인증번호 재전송을 통해서 다시 인증해주세요.
						gfn_alertMsgBoxSize('인증시간이 만료되었습니다. 인증번호를 재전송 후 입력바랍니다.',400,250);	//입력정보를 확인해주세요.
					}

					$("#nonMbCertNoSend").removeClass("disabled");
					$("#nonMbCertNoSend").attr("disabled", false);
					$("#nonMbCertRow").show();
				}
			},
			error: function(xhr,status,error){
				var err = JSON.parse(xhr.responseText);
				alert(xhr.status);
				alert(err.message);
			}
		});
	});

	// 비회원 정보 확인 팝업 요청
	$("#btnChkNonMbLogin").click(function(){

		if(submitIng) return;

		if(typeof $("#ibxNonMbPwdConfirm").val() != 'undefined'){
			if($("#ibxNonMbPwd").val() != $("#ibxNonMbPwdConfirm").val()) {
				gfn_alertMsgBoxSize('입력정보를 확인해주세요.',400,250);	//입력정보를 확인해주세요.
				return;
			}
		}

		//생년월일 날짜형태 확인
// 		if(!fn_validateDateYn($("#ibxNonMbByymmdd").val())) {
// 			alert("생년월일 입력이 잘못 되었습니다.");
// 			$("#ibxNonMbByymmdd").focus();
// 			return;
// 		}
		$("#btnNonMbLogin").attr("disabled", false);
		fn_chkNonMbLogin();
	});

	// 비회원 로그인
	$("#btnNonMbLogin").click(function(){

		var paramData = { nonMbNm:$("#ibxNonMbNm").val()
						, nonMbByymmdd:$("#ibxNonMbByymmdd").val()
						, nonMbTelno:$("#ibxNonMbTelno").val()
						, nonMbPwd:$("#ibxNonMbPwd").val()
						, bokdCnfmAt:bokdCnfmAt
						};

		$.ajaxMegaBox({
			url: "/on/oh/ohg/NonMbLogin/selectNonMbLoginInfo.rest",
			type: "POST",
			contentType: "application/json;charset=UTF-8",
			dataType: "json",
			data: JSON.stringify(paramData),
			success: function (data, textStatus, jqXHR) {

				var menuId                 = data.menuId;
	            var mappingId              = data.mappingId;
	            var statCd                 = data.result.statCd;


	            if(typeof loginPopupCallScn === "undefined"){
			    	loginPopupCallScn = "";
			    }
	            //화면이동
	            if(menuId != "" && menuId != null){    //화면으로 띄웠을떄
	                fn_mvPage(mappingId);
	                return;
	            }
	            else {
	                if(loginPopupCallScn != "" && loginPopupCallScn != null){  //팝업으로 띄었을때 파라메타는 팝업 호출화면에 전역으로 정의
	                    $(".btn-layer-close").trigger("click");
	                    if(loginPopupCallScn == "SimpleBokdM"){
	                    	$('.before').hide();
	            			$('.after').show();
	                        alert("콜백함수호출");
	                    } else if(loginPopupCallScn == "StoreDtlV"){
	                    	$('.before').hide();
	            			$('.after').show();
	                    } else if(loginPopupCallScn == "MySbscDtlsL"){
	                    	$('.before').hide();
	            			$('.after').show();
	            			location.href = '/on/oh/ohh/MySbscDtls/mySbscDtlsListPage.do?currPage=1&searchText=';
	                    }
	                }
	                else {
	                	var bokdLoginAt = $('#loginForm input[name=bokdLoginAt]').val();
	    				if(bokdLoginAt == "Y"){
	    					//예매로그인일경우
	    					//오입력값을 체크한다.
	    					$('.before').hide();
	        				$('.after').show();
	        				$('#btnNonMbModalClose').trigger("click");
	    					$('#layer_login_select button.btn-modal-close').trigger("click");
	    					fn_validDataRevisn(JSON.parse($('#loginForm input[name=bokdLoginParam]').val()));
	    					return;
	    				}

	                	if(bokdCnfmAt == "Y"){
	                		$('#nonMbBokdCnfmForm input[name=nonMbNm]').attr('value',$('#ibxNonMbNm').val());
	                		$('#nonMbBokdCnfmForm input[name=nonMbTelno]').attr('value',$('#ibxNonMbTelno').val());
	                		$('#nonMbBokdCnfmForm input[name=nonMbPwd]').attr('value',$('#ibxNonMbPwd').val());
	                		$('#nonMbBokdCnfmForm input[name=nonMbByymmdd]').attr('value',$('#ibxNonMbByymmdd').val());

                            /////////////////////////////////////////////////////////////////////
	                		// 예매정보가 없을 시 메세지 팝업처리 /////////////////////////////////
                            /////////////////////////////////////////////////////////////////////
                            if(statCd == 0) {
                                fn_mvNonMbBokdCnfm("/non-member"); //비회원 예매 확인일때
                            }else{
                                alert("입력하신 정보와 일치하는 예매내역이 없습니다.");
                            }
                            /////////////////////////////////////////////////////////////////////
                            /////////////////////////////////////////////////////////////////////

	                		//fn_mvNonMbBokdCnfm("/non-member"); //비회원 예매 확인일때
	                	}
	                	else {
	                		location.reload();
	                	}

	                }
	            }
	            return;
			},
			error: function(xhr,status,error){
				 var err = JSON.parse(xhr.responseText);
				 alert(xhr.status);
				 alert(err.message);
			},
			beforeSend: function() {
	            submitIng = true;
	        },
	        complete: function() {
	            submitIng = false;
	        }
	    });

	    //페이지 이동 submit
	    function fn_mvNonMbBokdCnfm(page){
// 	        console.log("fn_mvNonMbBokdCnfm : "+page);
	        $("#nonMbBokdCnfmForm").attr("method","post");
	        $("#nonMbBokdCnfmForm").attr("action",page);
	        $("#nonMbBokdCnfmForm").submit();
	    }

	  	//비회원 예매 확인 페이지 이동 submit
	    function fn_mvPage(page){
// 	        console.log("MbLoginScriptDV.fn_mvPage : "+page);
	        $("#loginForm").attr("method","post");
	        $("#loginForm").attr("action",page);
	        $("#loginForm").submit();
	    }
	});
});

function fn_adTracking(url){
	$.ajax({
        type: "get"
        , url: url
        , data: ""
        , dataType: "json"
        , success: function(result) {

        }
        , error: function(err) {
            console.log('fn_adEventCall error : ' + err.status);
        }
    });
}

var callback = undefined;

/*호출 화면에 따른 분기처리*/
function fn_viewLoginPopup(viewId,deviceType,bokdLoginAt,bokdLoginParam,reloadYn,callbackFn){

  	//로그인 폼 호출시 광고영역 노출
    if( $("#Rw6jtk0hQTuOBSzFbvGGlw").html() == "" ){

    	$("#Rw6jtk0hQTuOBSzFbvGGlw").append('<a href="" target="_blank"><img id="pageBannerRnbImage" src="/static/pc/images/common/bg/bg-noimage-main.png" /></a>');

    	var header ={"typ": "JWT","alg": "HS256"}
        var data = {
            "device": {"devicetype": 2},
            "imp": [{"native": {"ext" : {"slots" : 1}}}],
            "site": {"name": "megabox"},
            "id": ""
        };
    	var secret = "Rw6jtk0hQTuOBSzFbvGGlw";

    	var stringifiedHeader = CryptoJS.enc.Utf8.parse(JSON.stringify(header));
        var encodedHeader = base64url(stringifiedHeader);
        var stringifiedData = CryptoJS.enc.Utf8.parse(JSON.stringify(data));
        var encodedData = base64url(stringifiedData);
        var signature = encodedHeader + "." + encodedData;
        signature = CryptoJS.HmacSHA256(signature, secret);
        signature = base64url(signature);
        var pram = encodedHeader+"."+encodedData+"."+signature;
        var adUrl = "https://cast.imp.joins.com/bid/"+secret+"/"+pram; //상용

    	$.ajax({
            type: "get"
            , url: adUrl
            , data: ""
            , success: function(result) {
                if(result) {
                    $("#pageBannerRnbImage").attr("src", result.image_file);
                    $("#pageBannerRnbImage").attr("alt", result.alternative_text);
                    $("#pageBannerRnbImage").attr("clickThrough", result.click_tracking);
                    $("#pageBannerRnbImage").parent().attr("href", result.click_through);



                    $("#pageBannerRnbImage").css("height", result.height);
                    $("#Rw6jtk0hQTuOBSzFbvGGlw").css("background-color", result.bgcolor);
                    fn_adTracking(result.impression_tracking);
                }
            }
            , error: function(err) {
                console.log('fn_getBannerAd error : ' + err.status);
            }
        });

    	//광고링크
   	    $("#pageBannerRnbImage").on("click", function() {
   	        var clickThrough = $(this).attr("clickThrough");
   	        if(clickThrough != undefined && clickThrough != '') {
   	        	fn_adTracking(clickThrough);
   	        }
   	    });
    }

	//
	$(".alert").html("");
	if(sCookieVal == ""){	//아이디 저장 체크 안했을경우
		$(".login-input-area #ibxLoginId").val("");			//아이디
	}
	$(".login-input-area #ibxLoginPwd").val("");		//비밀번호
	$(".no-member-login-table #ibxNonMbNm").val("");	//비회원 이름
	$(".no-member-login-table #ibxNonMbByymmdd").val("");	//비회원 생년월일
	$(".no-member-login-table #ibxNonMbTelno").val("");		//비회원 휴대폰 번호
	$(".no-member-login-table #mblpCharCertNo").val("");	//비회원 휴대폰인증번호
	$(".no-member-login-table #ibxNonMbPwd").val("");		//비회원 비밀번호
	$(".no-member-login-table #ibxNonMbPwdConfirm").val("");	//비회원 비밀번호확인
	$("input[name=chkNonMbBokdPersonInfoProc]").prop("checked",false);	//비회원 라디오버튼 해제
	if(typeof AuthTimer != 'undefined'){
	    AuthTimer.fnStop();
	    $('#timer').html("3:00");
	    $('#nonMbCertNoSend').html("인증요청");
	    sValidateMblpCertNoSuccess = "N";
	    $('#nonMbCertRow').show();
	    $('#mblpCharCertNo').val("");
	    $("#nonMbCertNoSend").removeClass("disabled");
	    $("#nonMbCertNoSend").attr("disabled", false);
	}
	fn_validateNonMbInputVal();

	$('#loginForm input[name=bokdLoginAt]').val("");				//예매 로그인 여부
	$('#loginForm input[name=bokdLoginParam]').val("");				//예매 로그인 파라메타
	$('#loginForm input[name=validDataRevisnYn]').val("");				//데이터 보정 여부
	fn_validateInputVal();

	if('pc' == deviceType){

		if('SimpleBokdM' == viewId) {
			var sBokdLoginAt = typeof bokdLoginAt == 'undefined' ? "" : bokdLoginAt;//예매 로그인 여부
			$('#layer_login_select .layer-con .tab-list').show();			//로그인 비회원로그인 선택창
			$('#layer_login_select .layer-con .tab-cont-wrap .login-member').removeClass('pt00');	//레이어 사이즈 줄임
			$("#loginPupupATag").attr("h-data",'556');	//높이값 변경
			$("#loginPupupATag").trigger("click");	//레이어띄움
			$('#loginForm input[name=bokdLoginAt]').attr('value',sBokdLoginAt);			//예매 로그인 여부 값 설정
			$('#loginForm input[name=bokdLoginParam]').attr('value',bokdLoginParam);	//예매 로그인 파라메타
			if(bokdLoginAt == "Y"){
				$('#loginForm input[name=nonMbCertRedisKey]').val("");
				$('#loginForm input[name=nonMbCertedMblpNo]').val("");
			}

		}
		else if('StoreDtlV' == viewId || 'MySbscDtlsL' == viewId) {
			$("#loginPupupATag").trigger("click");	//레이어띄움
			$("#mbPopLayer").show();		//회원 레이어
			$("#nonMbLogoLayer").hide();	//비회원 로고
			$("#nonMbPopLayer").hide();		//비회원 레이어
			$("#mbMbChoiLayer").hide();	//회원 비회원 선택

			$("#nonMbBokdCnfm").attr("style","display:none");
		}
		else if('BoutiqPrivateL' == viewId){	//부티크
			$('#layer_login_select .layer-con .tab-list li:eq(0) a').trigger("click");	//회원로그인만 클릭되도록
			$('#layer_login_select .layer-con .tab-list').hide();						//로그인 비회원로그인 선택창
			$('#layer_login_select .layer-con .tab-cont-wrap .login-member').addClass('pt00');	//레이어 사이즈 줄임
			$("#loginPupupATag").attr("h-data",'484');	//높이값 변경
			$("#loginPupupATag").trigger("click");	//레이어띄움

			$('#loginForm input[name=reloadYn]').attr('value',reloadYn); // 화면 리로드 설정
			$('#loginForm input[name=validDataRevisnYn]').val("Y");				//데이터 보정 여callbackFn부
		}
		else {
			var sReloadYn = typeof reloadYn == 'undefined' ? "" : reloadYn;// 화면 리로드 여부
			$('#layer_login_select .layer-con .tab-list li:eq(0) a').trigger("click");	//회원로그인만 클릭되도록
			$('#layer_login_select .layer-con .tab-list').hide();						//로그인 비회원로그인 선택창
			$('#layer_login_select .layer-con .tab-cont-wrap .login-member').addClass('pt00');	//레이어 사이즈 줄임
			$("#loginPupupATag").attr("h-data",'484');	//높이값 변경
			$("#loginPupupATag").trigger("click");	//레이어띄움

			$('#loginForm input[name=reloadYn]').attr('value',sReloadYn); // 화면 리로드 설정
		}

		callback = callbackFn;
	}
}

//입력 문자 체크
function fn_validateNonMbInputVal(){
	//이름
	if($("#ibxNonMbNm").val() != "") {
		sValidateNonMbNmAt = 'Y';
	}
	else {
		sValidateNonMbNmAt = 'N';
	}

	//생년월일
	if($("#ibxNonMbByymmdd").val() != "") {
		if(fn_validateDateYn($("#ibxNonMbByymmdd").val(),6)){
			sValidateNonMbByymmddAt = 'Y';
			//비회원예매확인
			if(bokdCnfmAt == "Y"){
				$('#ErrTextNonMbByymmdd').text('');
			}
			//비회원로그인
			else {
				$('#mblpInput-error-text').text('');
			}
		}
		else {
			sValidateNonMbByymmddAt = 'N';
			//비회원예매확인
			if(bokdCnfmAt == "Y"){
				$('#ErrTextNonMbByymmdd').text('생년월일을 정확히 입력해주세요.');
			}
			//비회원로그인
			else {
				$('#mblpInput-error-text').text('생년월일을 정확히 입력해주세요.');
			}
			return false;
		}
	}
	else {
		sValidateNonMbByymmddAt = 'N';
		$('#mblpInput-error-text').text('');
	}

	//휴대폰 번호
	if($("#ibxNonMbTelno").val() != "") {
		var frontNm = $("#ibxNonMbTelno").val().substr(0,2);
		if(frontNm != '01'){
			$('#mblpInput-error-text').text('휴대폰번호를 정확히 입력해주세요.');
			ibxNonMbTelno = 'N';
			return false;
		}
		else if($("#ibxNonMbTelno").val().length < 10){
			$('#mblpInput-error-text').text('휴대폰번호를 정확히 입력해주세요.');
			sValidateNonMbTelnoAt = 'N';
			return false;
		}
		else {
			sValidateNonMbTelnoAt = 'Y';
			$('#mblpInput-error-text').text('');
		}
	}
	else {
		sValidateNonMbTelnoAt = 'N';
	}


	if($("#ibxNonMbPwd").val().length == 4) {
		sValidateNonMbPwdAt = 'Y';
	}
	else {
		sValidateNonMbPwdAt = 'N';
	}
	if(bokdCnfmAt == "Y"){
		sValidateNonMbPwdConfirmAt       = 'Y';
		sValidateNonMbPwdEqualAt         = 'Y';
		sValidateNonMbBokdPersonInfoProc = 'Y';
		sValidateMblpCertNoSuccess       = 'Y';
	}
	else{
		if($("#ibxNonMbPwdConfirm").val().length == 4) {
			sValidateNonMbPwdConfirmAt = 'Y';
		}
		else {
			sValidateNonMbPwdConfirmAt = 'N';
		}

		if($("#ibxNonMbPwd").val().length > 0 && $("#ibxNonMbPwdConfirm").val().length > 0 && $("#ibxNonMbPwd").val() == $("#ibxNonMbPwdConfirm").val()) {
			sValidateNonMbPwdEqualAt = 'Y';
			$('#nonMbPwdErrText').text('');
		}
		else if($("#ibxNonMbPwd").val().length > 0 && $("#ibxNonMbPwdConfirm").val().length > 0 && $("#ibxNonMbPwd").val() != $("#ibxNonMbPwdConfirm").val()){
			sValidateNonMbPwdEqualAt = 'N';
			$('#nonMbPwdErrText').text('비밀번호와 비밀번호 확인의 입력값이 일치하지 않습니다.');
			return false;
		}

		if($('#chkNonMbBokdPersonInfoProcTrue').prop("checked")){
			sValidateNonMbBokdPersonInfoProc = 'Y';
		}
		else {
			sValidateNonMbBokdPersonInfoProc = 'N';
		}

		if($('#chkNonMbBokdPersonInfoProcFalse').prop("checked")){
			sValidateNonMbBokdPersonInfoProc = 'N';
		}
	}

// 	$('#error-text1').text
// 	("sValidateNonMbNmAt:"             +sValidateNonMbNmAt              +("/")+$("#ibxNonMbNm").val().length        +("\n\n")+
// 			"sValidateNonMbByymmddAt:"         +sValidateNonMbByymmddAt         +("/")+$("#ibxNonMbByymmdd").val().length   +("\n\n")+
// 			"sValidateNonMbTelnoAt:"           +sValidateNonMbTelnoAt           +("/")+$("#ibxNonMbTelno").val().length     +("\n\n")+
// 			"sValidateNonMbPwdAt:"             +sValidateNonMbPwdAt             +("/")+$("#ibxNonMbPwd").val().length       +("\n\n")+
// 			"sValidateNonMbPwdConfirmAt:"      +sValidateNonMbPwdConfirmAt      +("/")+$("#ibxNonMbPwdConfirm").val().length+("\n\n")+
// 			"sValidateNonMbPwdEqualAt:"        +sValidateNonMbPwdEqualAt        +("/\n\n")+
// 			"sValidateNonMbBokdPersonInfoProc:"+sValidateNonMbBokdPersonInfoProc+("/\n\n")
// 		+$("input:checkbox[id='chkNonMbBokdPersonInfoProc']").is(":checked"));

	if(    bokdCnfmAt                       == "N"
		&& sValidateNonMbNmAt               == 'Y'
		&& sValidateNonMbByymmddAt          == 'Y'
		&& sValidateNonMbTelnoAt            == 'Y'
		&& sValidateNonMbPwdAt              == 'Y'
		&& sValidateNonMbPwdConfirmAt       == 'Y'
		&& sValidateNonMbBokdPersonInfoProc == 'Y'
 		&& sValidateNonMbPwdEqualAt         == 'Y'
 		&& sValidateMblpCertNoSuccess       == 'Y'){
		$("#btnChkNonMbLogin").attr("disabled", false);
		return true;
	}
	else if (bokdCnfmAt == "Y"
			&& sValidateNonMbNmAt       == 'Y'
			&& sValidateNonMbByymmddAt         == 'Y'
			&& sValidateNonMbTelnoAt == 'Y'
			&& sValidateNonMbPwdAt       == 'Y'){
		$("#btnNonMbLogin").attr("disabled", false);
		return true;
	}
	else{
		$("#btnChkNonMbLogin").attr("disabled", true);
		$("#btnNonMbLogin").attr("disabled", true);
		return false;
	}
}

/*날짜 형태 확인*/
function fn_validateDateYn(param, length) {
	try
	{
		var year  = 0;
		var month = 0;
		var day   = 0;

		param = param.replace(/-/g,'');

		// 자리수가 맞지않을때
		if( isNaN(param) || param.length < Number(length) || param.length > Number(length)) {
			return false;
		}

		if( param.length == 6){
			year  = Number(param.substring(0, 2));
			month = Number(param.substring(2, 4));
			day   = Number(param.substring(4, 6));
		}
		else if(param.length == 8){
			year  = Number(param.substring(0, 4));
			month = Number(param.substring(4, 6));
			day   = Number(param.substring(6, 8));

			var sysYear = Number(new Date().getFullYear());
			//년도입력이 현재 년도보다 클때.
			if(sysYear < year){
				return false;
			}
		}
		else {
			return false;
		}


		var dd = day / 0;


		if( month<1 || month>12 ) {
			return false;
		}

		var maxDaysInMonth = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];
		var maxDay = maxDaysInMonth[month-1];

		// 윤년 체크
		if( month==2 && ( year%4==0 && year%100!=0 || year%400==0 ) ) {
			maxDay = 29;
		}

		if( day<=0 || day>maxDay ) {
			return false;
		}
		return true;

	} catch (err) {
		return false;
	}
}


function $ComTimer(){
    //prototype extend
}

$ComTimer.prototype = {
    comSecond : ""
    , fnCallback : function(){}
    , timer : ""
    , domId : ""
    , fnTimer : function(){
        var m = Math.floor(this.comSecond / 60) + ":" + String((this.comSecond % 60)).lpad(2,"0");	// 남은 시간 계산
        this.comSecond--;					// 1초씩 감소
        this.domId.innerText = m;
        if (this.comSecond < 0) {			// 시간이 종료 되었으면..
            clearInterval(this.timer);		// 타이머 해제
            $('#nonMbCert-error-text').text('인증시간이 만료되었습니다. 인증번호를 재전송 후 입력바랍니다.');	//msg.ch.ohg.ME061	인증시간이 만료되었습니다. 인증번호를 재전송 후 입력바랍니다.
            $("#btnMblpCharCert").attr("disabled", true);	//인증확인버튼 비활성
			$("#btnMblpCharCert").addClass("disabled");		//인증확인버튼 비활성
        }
    }
    ,fnStop : function(){
        clearInterval(this.timer);
    }
}

</script>
		<script type="text/javascript">
var simpleLoginWithPopup;
var simpleLoginWith = function(lnkgTy){
    var url = "/on/oc/ocz/SimpleLogin/simpleLogin.do?lnkgTy=" + lnkgTy;
    if ( simpleLoginWithPopup ) {
        simpleLoginWithPopup.close();
    }
    if(lnkgTy != "FACEBOOK"){
		simpleLoginWithPopup = window.open(url, 'simpleLoginWithPopup', 'width=420, height=550');
	}
	else {
		simpleLoginWithPopup = window.open(url, 'simpleLoginWithPopup', 'width=650, height=600, scrollbars=yes');
	}
}

var fn_LoginPopUpCall = function(paramData){
    if ( lnkgInfoObj.attr("connTy") != undefined ) {
        fn_ConnWithCallBack(paramData);
    } else {
        fn_LoginWithCallBack(paramData);
    }

}
var fn_LoginPopUpCallError = function(msg){
    gfn_alertMsgBoxSize(msg, 400, 250);
}

//비회원 확인 팝업
function fn_chkNonMbLogin() {

	var $td = $(document).find('#layer_no_member_chk td');

	var telTmp = $('#ibxNonMbTelno').val();

	switch(telTmp.length){
	case 10 : telTmp = telTmp.format('XXX-XXX-XXXX'); break;
	case 11 : telTmp = telTmp.format('XXX-XXXX-XXXX');break;
	}

	$td.eq(0).html($('#ibxNonMbNm').val());
	$td.eq(1).html($('#ibxNonMbByymmdd').val());
	$td.eq(2).html(telTmp);

	// 레이어 호출
	$(document).find('#aNonMbLogin').click();
}
</script>
		<script type="text/javascript">
var fn_LoginWithCallBack = function(paramData){
    $.ajaxMegaBox({
        url: "/on/oc/ocz/SimpleLogin/selectSimpleLogin.do",
        type: "POST",
        contentType: "application/json;charset=UTF-8",
        dataType: "json",
        data: JSON.stringify(paramData),
        success: function (data, textStatus, jqXHR) {
            if ( data.userMap == null ) {
            	//var simpleLoginTyCd = data.userMap.simpleLoginTyCd;
                gfn_alertMsgBoxSize('['+paramData.simpleLoginTyCd+'] 계정으로 연동된 메가박스 계정이 없습니다.\n연동을 원하시면 나의메가박스 > 개인정보수정에서\n간편로그인 계정연동을 진행해 주세요.', 400, 250);
            } else {
                var loginId = data.userMap.loginId;
                var mbNo    = data.userMap.mbNo;
                fn_selectMbLogin(loginId, "simpleLogin", "Y", paramData.redisKey);
            }
        },
        error: function(xhr,status,error){
            var err = JSON.parse(xhr.responseText);
            alert(xhr.status);
            alert(err.message);
        }
    });
}
var lnkgInfoObj;
$(function(){
    $("div.sns-login > a").off("click").on("click",function(){
        lnkgInfoObj = $(this);
        simpleLoginWith($(this).attr("lnkgTy"));
    });
});
</script>
		<form id="loginForm">
			<input type="hidden" name="redisKey" value=""> <input
				type="hidden" name="menuId" value=""> <input type="hidden"
				name="mappingId" value=""> <input type="hidden"
				name="rtnParam" value=""> <input type="hidden"
				name="certType" value=""> <input type="hidden" name="preUrl"
				value="">

			<!-- 좌석도 로그인 프로세스 여부PARAM-->
			<input type="hidden" name="bokdLoginAt" value=""> <input
				type="hidden" name="bokdLoginParam" value=""> <input
				type="hidden" name="nonMbCertRedisKey" value=""> <input
				type="hidden" name="nonMbCertedMblpNo" value=""> <input
				type="hidden" name="reloadYn" value=""> <input type="hidden"
				name="validDataRevisnYn" value="N">

		</form>

		<!-- 로그인 레이어팝업 시작 -->
		<!-- 화면ID  M-ME-LO-01 -->
		<!-- 화면ID  M-ME-CC-01 -->
		<div style="display: none;">
			<a id="loginPupupATag"
				href="https://www.megabox.co.kr/booking#layer_login_select"
				class="button active btn-modal-open" w-data="850" h-data="484"></a>
		</div>

		<section id="layer_login_select" class="modal-layer"
			style="z-index: 501;"> <a
			href="https://www.megabox.co.kr/booking" class="focus">레이어로 포커스
			이동 됨</a> <a href="https://www.megabox.co.kr/booking#" class="focus"
			title="레이어로 포커스 이동 됨">레이어로 포커스 이동 됨<!--레이어로 포커스 이동 됨--></a>
		<div class="wrap"
			style="width: 850px; height: 556px; margin-left: -425px; margin-top: -278px;">
			<header class="layer-header">
			<h3 class="tit">로그인</h3>
			</header>

			<div class="layer-con" style="height: 511px;">

				<div class="tab-list tab-layer">
					<ul>
						<li class="on"><a
							href="https://www.megabox.co.kr/booking#login_tab_01"
							title="회원 로그인 선택">회원 로그인<!--회원 로그인--></a></li>
						<li><a href="https://www.megabox.co.kr/booking#login_tab_02"
							title="비회원 로그인 선택">비회원 로그인<!--비회원 로그인--></a></li>
					</ul>
				</div>

				<!-- tab-cont-wrap -->
				<div class="tab-cont-wrap">
					<!-- tab 회원 로그인 -->
					<div id="login_tab_01" class="tab-cont on">
						<a href="https://www.megabox.co.kr/booking" class="ir"></a><a
							href="https://www.megabox.co.kr/booking" class="ir" title="로그인"></a>

						<div class="login-member col-2">
							<!-- col-wrap -->
							<div class="col-wrap">
								<div class="col left">
									<div class="login-input-area">
										<input autocomplete="off" id="ibxLoginId" maxlength="20"
											type="text" placeholder="아이디" title="아이디를 입력하세요"
											class="input-text strTrim">
										<!--아이디-->
										<!--아이디를 입력하세요-->
										<input autocomplete="off" id="ibxLoginPwd" maxlength="20"
											type="password" placeholder="비밀번호" title="비밀번호를 입력하세요"
											class="input-text mt15">
										<!--비밀번호-->
										<!--비밀번호를 입력하세요-->
										<div class="alert"></div>

										<!-- chk-util -->
										<div class="chk-util">
											<div class="left">
												<input id="chkIdSave" type="checkbox"> <label
													for="chkIdSave">아이디 저장<!--아이디 저장--></label>
											</div>

											<div class="right">
												<div class="hp-ad">
													<a
														href="https://www.sepay.org/spm/join?regSiteCode=XF&amp;ctgCode=1&amp;subCode=1"
														title="휴대폰 간편 로그인 선택" target="_blank"><span>휴대폰
															간편로그인<!--휴대폰 간편로그인-->
													</span> <em>광고<!--광고--></em></a>
												</div>
											</div>
										</div>
										<!--// chk-util -->

										<button id="btnLogin" type="button"
											class="button purple large btn-login" disabled="disabled">
											로그인
											<!--로그인-->
										</button>

										<div class="link">
											<a href="https://www.megabox.co.kr/user-find"
												title="ID/PW 찾기 선택">ID/PW 찾기<!--ID/PW 찾기--></a> <a
												href="https://www.megabox.co.kr/join" title="회원가입 선택">회원가입<!--회원가입--></a>
											<a
												href="https://www.megabox.co.kr/on/oh/ohg/MbLogin/viewNonMbLogin.rest"
												title="비회원 예매확인 선택">비회원 예매확인<!--비회원 예매확인--></a>
										</div>

										<div class="sns-login">
											<a href="javaScript:void(0)" lnkgty="FACEBOOK"
												title="페이스북으로 로그인 선택"><img
												src="resources/booking_2_files/ico-facebook.png" alt="페이스북">
												<!--페이스북--> 페이스북으로 로그인<!--페이스북으로 로그인--></a> <a
												href="javaScript:void(0)" lnkgty="NAVER" title="네이버로 로그인 선택"><img
												src="resources/booking_2_files/ico-naver.png" alt="네이버">
												<!--네이버--> 네이버로 로그인<!--네이버로 로그인--></a> <a
												href="javaScript:void(0)" lnkgty="KAKAO"
												title="카카오톡으로 로그인 선택"><img
												src="resources/booking_2_files/ico-kakao.png" alt="카카오톡">
												<!--카카오톡--> 카카오톡으로 로그인<!--카카오톡으로 로그인--></a> <a
												href="javaScript:void(0)" lnkgty="PAYCO" title="페이코로 로그인 선택"><img
												src="resources/booking_2_files/ico-payco.png" alt="페이코">
												<!--페이코--> 페이코로 로그인<!--페이코로 로그인--></a>
										</div>
									</div>
								</div>

								<div class="col right">
									<div class="login-ad" id="Rw6jtk0hQTuOBSzFbvGGlw"></div>
								</div>
							</div>
							<!--// col-wrap -->
						</div>
					</div>
					<!--// tab 회원 로그인 -->

					<!-- tab 비회원 로그인 -->
					<div id="login_tab_02" class="tab-cont">
						<a href="https://www.megabox.co.kr/booking" class="ir"></a><a
							href="https://www.megabox.co.kr/booking" class="ir"
							title="비회원 로그인"></a>

						<div class="login-member col-2">
							<!-- col-wrap -->
							<div class="col-wrap">
								<div class="col left">

									<div class="no-member-login-table">
										<table
											summary="이름, 생년월일, 휴대폰번호, 인증번호, 비밀번호, 비밀번호 확인 항목을 가진 비회원 로그인 입력 표">
											<caption>
												이름, 생년월일, 휴대폰번호, 인증번호, 비밀번호, 비밀번호 확인 항목을 가진 비회원 로그인 입력 표
												<!--이름, 생년월일, 휴대폰번호, 인증번호, 비밀번호, 비밀번호 확인 항목을 가진 비회원 로그인 입력 표-->
											</caption>
											<colgroup>
												<col style="width: 110px;">
												<col>
											</colgroup>
											<tbody>
												<tr>
													<th scope="row"><label for="ibxNonMbNm">이름<!--이름--></label>
													</th>
													<td><input maxlength="20" id="ibxNonMbNm" type="text"
														placeholder="이름" class="input-text"> <!--이름--></td>
												</tr>
												<tr>
													<th scope="row"><label for="ibxNonMbByymmdd">생년월일<!--생년월일--></label>
													</th>
													<td><input maxlength="6" id="ibxNonMbByymmdd"
														type="text" placeholder="생년월일 앞6자리" class="input-text">
														<!--주민번호 앞 6자리--></td>
												</tr>
												<tr>
													<th scope="row"><label for="ibxNonMbTelno">휴대폰번호<!--휴대폰번호--></label>
													</th>
													<td>
														<div class="hp-input">
															<input maxlength="11" id="ibxNonMbTelno" type="text"
																placeholder="- 없이 입력" class="input-text">
															<!--- 없이 입력-->
															<button id="nonMbCertNoSend" type="button"
																class="button gray" disabled="disabled">
																인증요청
																<!--인증요청-->
															</button>
														</div>
														<div id="mblpInput-error-text" class="alert"></div>
													</td>
												</tr>
												<tr id="nonMbCertRow">
													<th scope="row"><label for="mblpCharCertNo">인증번호<!--인증번호--></label>
													</th>
													<td>
														<div class="chk-num">
															<div class="line">
																<input maxlength="4" id="mblpCharCertNo" type="text"
																	class="input-text">

																<div class="time-limit" id="timer">3:00</div>
															</div>

															<button id="btnMblpCharCert" type="button"
																class="button purple" disabled="disabled">
																확인
																<!--확인-->
															</button>
														</div>
														<div id="nonMbCert-error-text" class="alert"></div>
													</td>
												</tr>
												<tr>
													<th scope="row"><label for="ibxNonMbPwd">비밀번호</label>
														<!--비밀번호--></th>
													<td><input maxlength="4" id="ibxNonMbPwd"
														type="password" placeholder="비밀번호(숫자 4자리)"
														class="input-text"> <!--비밀번호(숫자 4자리)--></td>
												</tr>
												<tr>
													<th scope="row"><label for="ibxNonMbPwdConfirm">비밀번호<!--비밀번호-->확인<!--확인--></label>
													</th>
													<td><input maxlength="4" id="ibxNonMbPwdConfirm"
														type="password" placeholder="비밀번호(숫자 4자리) 확인"
														class="input-text"> <!--비밀번호(숫자 4자리) 확인-->
														<div id="nonMbPwdErrText" class="alert"></div></td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>

								<div class="col right">

									<div class="no-member-privacy-rule">
										<p class="tit">
											비회원예매 개인정보 처리방침
											<!--비회원예매 개인정보 처리방침-->
										</p>

										<div class="cont">
											<dl>
												<dt>수집목적</dt>
												<dd>비회원예매 서비스 제공 / 이용자식별 / 구매 및 결제</dd>
												<dt>수집항목</dt>
												<dd>이름, 생년월일, 휴대폰번호, 비밀번호</dd>
												<dt>보유기간</dt>
												<dd class="ismsimp">관람 또는 취소 후 7일 이내</dd>
												<!--<dt>수집목적</dt><dd>비회원예매 서비스 제공 / 이용자식별 / 구매 및  결제</dd><dt>수집항목</dt><dd>이름, 생년월일, 휴대폰번호, 비밀번호</dd><dt>보유기간</dt><dd>관람 또는 취소 후 7일 이내</dd>-->
											</dl>

											<div class="btn-agree">
												<input type="radio" id="chkNonMbBokdPersonInfoProcTrue"
													name="chkNonMbBokdPersonInfoProc"> <label
													for="chkNonMbBokdPersonInfoProcTrue">동의<!--동의--></label> <input
													type="radio" id="chkNonMbBokdPersonInfoProcFalse"
													name="chkNonMbBokdPersonInfoProc" class="ml20"> <label
													for="chkNonMbBokdPersonInfoProcFalse">미동의<!--미동의--></label>
											</div>

											<ul class="dot-list gblue mt20">
												<li class="font-gblue">정보수집에 동의를 거부할 수 있으며, 동의하지 않을 경우
													비회원 예매서비스를 이용하실 수 없습니다.<!--정보수집에 동의를 거부할 수 있으며, 동의하지 않을 경우 비회원 예매서비스를 이용하실 수 없습니다.-->
												</li>
											</ul>
										</div>
									</div>
								</div>
							</div>
							<!--// col-wrap -->

							<div class="btn-group">
								<button id="btnChkNonMbLogin" type="button"
									class="button purple" disabled="disabled">확인</button>
								<a id="aNonMbLogin"
									href="https://www.megabox.co.kr/booking#layer_no_member_chk"
									class="button purple btn-modal-open" w-data="600" h-data="320"
									style="display: none;"></a>
							</div>
						</div>
					</div>
					<!--// tab 비회원 로그인 -->
				</div>
				<!--// tab-cont-wrap -->
			</div>

			<button type="button" class="btn-modal-close">
				레이어 닫기
				<!--레이어 닫기-->
			</button>
		</div>
		</section>

		<section id="layer_no_member_chk" class="modal-layer"> <a
			href="https://www.megabox.co.kr/booking" class="focus">레이어로 포커스
			이동 됨</a>
		<div class="wrap">
			<header class="layer-header">
			<h3 class="tit">알림</h3>
			</header>

			<div class="layer-con">
				<p>티켓 발권을 위한 입력정보를 확인해 주세요.</p>

				<div class="table-wrap v1">
					<table class="data-table"
						summary="이름, 생년월일, 휴대폰번호 항목을 가진 비회원 티켓 발권을 위한 입력정보 표">
						<caption>이름, 생년월일, 휴대폰번호 항목을 가진 비회원 티켓 발권을 위한 입력정보 표</caption>
						<colgroup>
							<col style="width: 80px;">
							<col>
						</colgroup>
						<tbody>
							<tr>
								<th scope="row" class="a-l">이름</th>
								<td></td>
							</tr>
							<tr>
								<th scope="row" class="a-l">생년월일</th>
								<td></td>
							</tr>
							<tr>
								<th scope="row" class="a-l">휴대폰번호</th>
								<td></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>

			<div class="btn-group-fixed">
				<button type="button" class="button close-layer small">취소</button>
				<button id="btnNonMbLogin" type="button" class="button purple small"
					disabled="disabled">확인</button>
			</div>

			<button id="btnNonMbModalClose" type="button" class="btn-modal-close">레이어
				닫기</button>
		</div>
		</section>


		<script type="text/javascript">
    $(function(){
        
            
            
            	$('#header .right-link .before').hide();
            	$('#header .right-link .after').show();
            
        

        // 웹에서만 실행 -> facebook을 로드하지 않는 템플릿에서 반복적인 오류 발생으로 hreader로 이전
        if(!MegaboxUtil.Common.isMobile() && !MegaboxUtil.Common.isApp())
            MegaboxUtil.Share.init();
    });

    //로그인 버튼
    $(document).on('click', '#moveLogin', function() {

        fn_viewLoginPopup('default','pc');

    });

    var sysCd = 'ON';

  	//넷퍼넬 스킨 타입 지정
	NetfunnelChk.setting( sysCd, MegaboxUtil.Common.isApp() );

</script>


<!-- 여기부터 헤더 시작!!!!!!!!!!!!!!!!!!!!!!!!!1 -->

		<!-- header -->
		<header id="header">
		<h1 class="ci">
			<a href="https://www.megabox.co.kr/" title="MEGABOX 메인으로 가기">MEGABOX
				: Life Theater</a>
		</h1>

		<!-- 브라우저 다운로드 --> <script type="text/javascript">
    $(function(){
	  	//닫기 버튼 클릭
		$('.ie-update').on('click', '.close-chk .closeDl', function() {
			 if ($(":checkbox[id='one_month_no_update']:checked").length > 0) {
				fn_setCookie("BROWDER_DL", "Y", 30);
			}

			$('.ie-update').hide();
		});

		//다시보지 않기
		 if (fn_getCookie("BROWDER_DL") == null || fn_getCookie("BROWDER_DL") == 'N') {
			if ( $(".lt-ie9").length > 0 && $('.ie-update').length > 0 ) {
				$('.ie-update').show();
			}
		}
    });
    </script> <!-- ie-update : ie 9 이하 일때만 출력 -->
		<div class="ie-update">
			<div class="dimd"></div>
			<div class="wrap">
				<p class="tit">
					<img src="resources/booking_2_files/txt-update.png"
						alt="megabox 홈페이지는 internet explrer10이상에서 최적화된 서비스 이용이 가능합니다. ie9 이하에서는 예매가 정상적으로 진행되지 않을 수 있으니, 브라우저를 업그레이드하시거나 다른 예매수단을 이용해 주세요!">
				</p>

				<div class="box">
					<div class="col">
						<p class="txt">
							브라우저를 최신 버전으로<br>업그레이드 해보세요!
						</p>

						<div class="link">
							<a
								href="https://www.microsoft.com/ko-kr/download/internet-explorer.aspx"
								title="internet explorer 새 버전 다운로드" target="_blank"> <img
								src="resources/booking_2_files/btn-ie.png"
								alt="internet explorer 새 버전 다운로드">
							</a>
						</div>

						<div class="link">
							<a href="http://www.google.com/chrome?hl=ko" title="chrome 다운로드"
								target="_blank"> <img
								src="resources/booking_2_files/btn-chrome.png" alt="chrome 다운로드">
							</a>
						</div>
					</div>

					<div class="col">
						<p class="txt">
							megabox 모바일 app을<br>이용해 보세요!
						</p>

						<div class="link">
							<a
								href="https://itunes.apple.com/us/app/megabox/id894443858?l=ko&amp;ls=1&amp;mt=8"
								title="available on the app store" target="_blank"> <img
								src="resources/booking_2_files/btn-appstore.png"
								alt="available on the app store">
							</a>
						</div>

						<div class="link">
							<a
								href="https://play.google.com/store/apps/details?id=com.megabox.mop&amp;hl=ko"
								title="available on the google play" target="_blank"> <img
								src="resources/booking_2_files/btn-google.png"
								alt="available on the google play">
							</a>
						</div>
					</div>
				</div>

				<div class="close-chk">
					<input type="checkbox" id="one_month_no_update"> <label
						for="one_month_no_update" class="ml05">한 달 동안 이 창을 열지 않음</label>

					<button type="button" class="closeDl button purple x-small ml20">닫기</button>
				</div>
			</div>
		</div>
		<!--// ie-update : ie 9 이하 일때만 출력 --> <!--// 브라우저 다운로드 --> <!-- topGnb -->




		<!-- 2019-04-15 마크업 수정 : 고객요청  -->
		<div class="util-area">
			<div class="left-link">
				<a href="https://www.megabox.co.kr/benefit/viplounge"
					title="VIP LOUNGE">VIP LOUNGE</a> <a
					href="https://www.megabox.co.kr/benefit/membership" title="멤버십">멤버십</a>
				<a href="https://www.megabox.co.kr/support" title="고객센터">고객센터</a>
			</div>

			<div class="right-link">
				<!-- 로그인후 -->
				<div class="before" style="display: none">
					<a
						href="/movie/logout"
						title="로그인">로그아웃</a> <a href="/movie/login"
						title="회원가입">회원가입</a>
				</div>

				<!-- 로그인전 -->
				<div class="after" style="">
					<a href="/movie/login"
						class="" title="로그아웃">로그인</a> <a
						href="https://www.megabox.co.kr/booking" class="notice" title="알림">알림</a>

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

		<!-- gnb --> <!--
        2019-04-15 마크업 수정 : 고객요청
        1뎁스 a 태그에 각각 다른 class 추가
    --> <nav id="gnb" class="">
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
		</nav> <!--// gnb --> <script type="text/javascript">
        $(document).ready(function() {
            var filmCheck = MegaboxUtil.Common.moveMovieFilmCheckGnb(); // 영화제 존재여부 체크
            if(filmCheck == true){
                $("#festivalArea").show();
            }else{
                $("#festivalArea").hide();
            }
        });
    </script> <!--// topGnb --> <!-- 레이어 : 사이트맵 -->




		<div id="layer_sitemap" class="header-layer layer-sitemap">
			<!-- wrap -->
			<div class="wrap">
				<a href="https://www.megabox.co.kr/booking" class="link-acc"
					title="사이트맵 레이어 입니다.">사이트맵 레이어 입니다.</a>

				<p class="tit">SITEMAP</p>

				<div class="list position-1">
					<p class="tit-depth">영화</p>

					<ul class="list-depth">
						<li><a href="https://www.megabox.co.kr/movie" title="전체영화">전체영화</a></li>
						<li><a
							href="https://www.megabox.co.kr/curation/specialcontent"
							title="큐레이션">큐레이션</a></li>
						<li><a href="javascript:void(0)"
							onclick="javascript:MegaboxUtil.Common.moveMovieFilmCheck();"
							title="영화제">영화제</a></li>
						<li><a href="https://www.megabox.co.kr/moviepost/all"
							title="무비포스트">무비포스트</a></li>
					</ul>
				</div>

				<div class="list position-2">
					<p class="tit-depth">예매</p>

					<ul class="list-depth">
						<li><a href="https://www.megabox.co.kr/booking" title="빠른예매">빠른예매</a></li>
						<li><a href="https://www.megabox.co.kr/booking/timetable"
							title="상영시간표">상영시간표</a></li>
						<li><a
							href="https://www.megabox.co.kr/booking/privatebooking"
							title="더 부티크 프라빗 예매">더 부티크 프라이빗 예매</a></li>
						<!-- <li><a href="/booking?megaboxLanguage=en" title="English Ticketing">English Ticketing</a></li> -->
					</ul>
				</div>

				<div class="list position-3">
					<p class="tit-depth">극장</p>

					<ul class="list-depth">
						<li><a href="https://www.megabox.co.kr/theater/list"
							title="전체극장">전체극장</a></li>
						<li><a href="https://www.megabox.co.kr/specialtheater/list"
							title="특별관">특별관</a></li>
					</ul>
				</div>

				<div class="list position-4">
					<p class="tit-depth">이벤트</p>

					<ul class="list-depth">
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
				</div>

				<div class="list position-5">
					<p class="tit-depth">스토어</p>

					<ul class="list-depth">
						<li><a href="javascript:void(0)"
							onclick="NetfunnelChk.aTag(&#39;STORE_LIST&#39;,&#39;/store&#39;);return false;"
							title="새로운 상품">새로운 상품</a></li>
						<li><a href="javascript:void(0)"
							onclick="NetfunnelChk.aTag(&#39;STORE_LIST&#39;,&#39;/store/megaticket&#39;);return false;"
							title="메가티켓">메가티켓</a></li>
						<li><a href="javascript:void(0)"
							onclick="NetfunnelChk.aTag(&#39;STORE_LIST&#39;,&#39;/store/megachance&#39;);return false;"
							title="메가찬스">메가찬스</a></li>
						<li><a href="javascript:void(0)"
							onclick="NetfunnelChk.aTag(&#39;STORE_LIST&#39;,&#39;/store/popcorn&#39;);return false;"
							title="팝콘/음료/굿즈">팝콘/음료/굿즈</a></li>
						<!-- <li><a href="javascript:void(0)" onclick="NetfunnelChk.aTag('STORE_LIST','/store/e-giftcard');return false;" title="기프트카드">기프트카드</a></li> -->
					</ul>
				</div>
				<div class="list position-6">
					<p class="tit-depth">나의 메가박스</p>
					<ul class="list-depth mymage">



						<li><a href="https://www.megabox.co.kr/mypage"
							title="나의 메가박스 홈">나의 메가박스 홈</a></li>
						<li><a href="https://www.megabox.co.kr/mypage/bookinglist"
							title="예매/구매내역">예매/구매내역</a></li>
						<li><a href="https://www.megabox.co.kr/mypage/movie-coupon"
							title="영화관람권">영화관람권</a></li>
						<li><a href="https://www.megabox.co.kr/mypage/store-coupon"
							title="스토어교환권">스토어교환권</a></li>
						<li><a
							href="https://www.megabox.co.kr/mypage/discount-coupon"
							title="할인/제휴쿠폰">할인/제휴쿠폰</a></li>
						<!-- <li><a href="/on/oh/ohh/Mvtckt/GiftCardL.do">기프트카드</a></li> -->
						<li><a href="https://www.megabox.co.kr/mypage/point-list"
							title="멤버십포인트">멤버십포인트</a></li>
						<li><a href="https://www.megabox.co.kr/mypage/moviestory"
							title="나의 무비스토리">나의 무비스토리</a></li>
						<li><a href="https://www.megabox.co.kr/mypage/myevent"
							title="나의 이벤트 응모내역">나의 이벤트 응모내역</a></li>
						<li><a href="https://www.megabox.co.kr/mypage/myinquiry"
							title="나의 문의내역">나의 문의내역</a></li>
						<li><a href="https://www.megabox.co.kr/mypage/mydiscount"
							title="자주쓰는 할인 카드">자주쓰는 할인 카드</a></li>
						<li><a
							href="https://www.megabox.co.kr/on/oh/ohh/Mypage/mainPage.do?returnURL=info"
							title="회원정보">회원정보</a></li>


					</ul>
				</div>

				<div class="list position-7">
					<p class="tit-depth">혜택</p>

					<ul class="list-depth">
						<li><a href="https://www.megabox.co.kr/benefit/membership"
							title="멤버십 안내">멤버십 안내</a></li>
						<li><a href="https://www.megabox.co.kr/benefit/viplounge"
							title="VIP LOUNGE">VIP LOUNGE</a></li>
						<li><a
							href="https://www.megabox.co.kr/benefit/discount/guide"
							title="제휴/할인">제휴/할인</a></li>
					</ul>
				</div>

				<div class="list position-8">
					<p class="tit-depth">고객센터</p>

					<ul class="list-depth">
						<li><a href="https://www.megabox.co.kr/support"
							title="고객센터 홈">고객센터 홈</a></li>
						<li><a href="https://www.megabox.co.kr/support/faq"
							title="자주묻는질문">자주묻는질문</a></li>
						<li><a href="https://www.megabox.co.kr/support/notice"
							title="공지사항">공지사항</a></li>
						<li><a href="https://www.megabox.co.kr/support/inquiry"
							title="1:1문의">1:1문의</a></li>
						<li><a href="https://www.megabox.co.kr/support/rent"
							title="단체/대관문의">단체/대관문의</a></li>
						<li><a href="https://www.megabox.co.kr/support/lost"
							title="분실물문의">분실물문의</a></li>
					</ul>
				</div>

				<div class="list position-9">
					<p class="tit-depth">회사소개</p>

					<ul class="list-depth">
						<li><a href="https://www.megabox.co.kr/megaboxinfo"
							target="_blank" title="메가박스소개">메가박스소개</a></li>
						<li><a href="https://www.megabox.co.kr/socialcontribution"
							target="_blank" title="사회공헌">사회공헌</a></li>
						<li><a href="https://www.megabox.co.kr/advertize"
							target="_blank" title="홍보자료">홍보자료</a></li>
						<li><a href="https://www.megabox.co.kr/partner"
							target="_blank" title="제휴/부대사업문의">제휴/부대사업문의</a></li>
						<li><a href="https://www.megabox.co.kr/onlinereport"
							target="_blank" title="온라인제보센터">온라인제보센터</a></li>
						<li><a href="https://www.megabox.co.kr/ir" target="_blank"
							title="자료">IR자료</a></li>
						<li><a href="https://www.megabox.co.kr/recruit"
							target="_blank" title="인재채용림">인재채용</a></li>
						<li><a href="https://jebo.joonganggroup.com/main.do"
							target="_blank" title="윤리경영">윤리경영</a></li>
					</ul>
				</div>

				<div class="list position-10">
					<p class="tit-depth">이용정책</p>

					<ul class="list-depth">
						<li><a href="https://www.megabox.co.kr/support/terms"
							title="이용약관">이용약관</a></li>
						<li><a href="https://www.megabox.co.kr/support/lcinfo"
							title="위치기반서비스 이용약관">위치기반서비스 이용약관</a></li>
						<li><a href="https://www.megabox.co.kr/support/privacy"
							title="개인정보처리방침">개인정보처리방침</a></li>
						<li><a href="https://www.megabox.co.kr/support/screenrule"
							title="스크린수배정에관한기준">스크린수배정에관한기준</a></li>
					</ul>
				</div>

				<div class="ir">
					<a href="https://www.megabox.co.kr/booking" class="layer-close"
						title="레이어닫기">레이어닫기</a>
				</div>
			</div>
			<!--// wrap -->
		</div>
		<!--// 레이어 : 사이트맵 --> <!-- 레이어 : 검색 -->
		<div id="layer_header_search" class="header-layer layer-header-search"></div>
		<!--// 레이어 : 검색 --> <!-- 레이어 : 마이페이지 -->




		<div id="layer_mymega" class="header-layer layer-mymege">
			<a href="https://www.megabox.co.kr/booking" class="ir"
				title="나의 메가박스 레이어 입니다.">나의 메가박스 레이어 입니다.</a>

			<!-- wrap -->
			<div class="wrap" style="display: none">

				<div class="login-after">
					<div class="couponpass" style="display: none;">
						<span>쿠폰패스 이용고객이시군요!!쿠폰패스로 발급된 쿠폰을 확인해보세요~ </span>
					</div>
					<div class="user-info">
						<p class="txt">안녕하세요!</p>

						<p class="info">
							<!--
                            vip 일때만 출력
                            vip 아닐때는 태그 자체 삭제
                        -->
							<em class="vip">VIP PREMIUM</em> <em class="name"></em> <span>회원님</span>
						</p>

						<div class="last-date">
							마지막 접속일 : <em></em>
						</div>

						<!-- vip, 멤버십 없을때는 미 출력  -->
						<div class="membership">
							<!-- <i class="iconset ico-header-vip"></i>
                        <i class="iconset ico-header-film"></i>
                        <i class="iconset ico-header-classic"></i> -->
						</div>

						<div class="btn-fixed">
							<a href="https://www.megabox.co.kr/mypage" class="button"
								title="나의  메가박스">나의 메가박스</a>
						</div>
					</div>

					<div class="box">
						<div class="point">
							<p class="tit">Point</p>

							<p class="count">0</p>

							<div class="btn-fixed">
								<a href="https://www.megabox.co.kr/mypage/point-list"
									class="button" title="멤버십 포인트">멤버십 포인트</a>
							</div>
						</div>
					</div>

					<div class="box">
						<div class="coupon">
							<p class="tit">
								쿠폰/관람권
								<!-- <i class="iconset ico-header-new"></i> -->
							</p>

							<p class="count">
								<em title="쿠폰 수" class="cpon">0</em> <span title="관람권 수"
									class="movie">0</span>
							</p>

							<div class="btn-fixed">
								<a href="https://www.megabox.co.kr/mypage/discount-coupon"
									class="button" title="쿠폰">쿠폰</a> <a
									href="https://www.megabox.co.kr/mypage/movie-coupon"
									class="button" title="관람권">관람권</a>
							</div>
						</div>
					</div>

					<div class="box">
						<div class="reserve">
							<p class="tit">
								예매
								<!-- <i class="iconset ico-header-new"></i> -->
							</p>

							<p class="txt"></p>

							<div class="btn-fixed">
								<a href="https://www.megabox.co.kr/mypage/bookinglist"
									class="button" title="예매내역">예매내역 </a>
							</div>
						</div>
					</div>

					<div class="box">
						<div class="buy">
							<p class="tit">
								구매
								<!-- <i class="iconset ico-header-new"></i> -->
							</p>

							<p class="count">
								<em>0</em> <span>건</span>
							</p>
						</div>

						<div class="btn-fixed">
							<a href="https://www.megabox.co.kr/mypage/bookinglist?tab=02"
								class="button" title="구매내역">구매내역</a>
						</div>
					</div>
				</div>

				<!-- 로그인 전 -->
				<div class="login-before">
					<p class="txt">
						로그인 하시면 나의 메가박스를 만날 수 있어요.<br> 영화를 사랑하는 당신을 위한 꼭 맞는 혜택까지 확인해
						보세요!
					</p>

					<div class="mb50">
						<a href="https://www.megabox.co.kr/booking#layer_login_common"
							id="moveLogin" title="로그인" class="button w120px btn-modal-open"
							w-data="850" h-data="484">로그인</a>
					</div>

					<a href="https://www.megabox.co.kr/join" class="link"
						title="혹시 아직 회원이 아니신가요?">혹시 아직 회원이 아니신가요?</a>
				</div>
			</div>
			<!--// wrap -->

			<div class="ir">
				<a href="https://www.megabox.co.kr/booking" class="layer-close"
					title="레이어닫기">레이어닫기</a>
			</div>
		</div>
		<!--// 레이어 : 마이페이지 -->
		
		 </header>
		<!--// header -->

<!-- 로그인 DB(ajax)판별 -->
<script type="text/javascript">
var idck = 0;
var f = document.form;

$(function() {
	
    $("#loginCheck").click(function() {

        var obj = new Object(); 
        obj.id = $("#id").val();
        obj.pwd = $("#pwd").val();

        var json_data = JSON.stringify(obj); // form의 값을 넣은 오브젝트를 JSON형식으로 변환
        
        $.ajax({
            type : 'POST',
            data : json_data,
            url : "/moviestar/login2",
            contentType : "application/json; charset=UTF-8",
            success : function(data) {
            	
            	if(data.cnt==0) {
                    alert("아이디 또는 비밀번호가 틀립니다.");
					$("#id").focus();
                    	                
                } else {
                    alert("로그인 성공");
                    //아이디가 중복하지 않으면  idck = 1 
                    idck = 1;
                    joinCheck()
                }     
            },
            beforeSend:showRequest,
            error:function(request,status,error){
                //alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
             }

        });
        
    });
});
</script>

<!-- 주소API연결 -->
<script type="text/javascript">
// opener관련 오류가 발생하는 경우 아래 주석을 해지하고, 사용자의 도메인정보를 입력합니다. 
// (＂팝업 API 호출 소스"도 동일하게 적용시켜야 합니다.)
//document.domain = "abc.go.kr";
function goPopup(){
//경로는 시스템에 맞게 수정하여 사용
//호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(https://www.juso.go.kr/addrlink/addrLinkUrl.do)를
//호출하게 됩니다.
var pop = window.open("jusoPopup","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
//** 2017년 5월 모바일용 팝업 API 기능 추가제공 **/
// 모바일 웹인 경우, 호출된 페이지(jusopopup.jsp)에서
// 실제 주소검색 URL(https://www.juso.go.kr/addrlink/addrMobileLinkUrl.do)를 호출하게 됩니다.
// var pop = window.open("/popup/jusoPopup.jsp","pop","scrollbars=yes, resizable=yes"); 
}
function jusoCallBack(roadFullAddr){
 // 2017년 2월 제공항목이 추가되었습니다. 원하시는 항목을 추가하여 사용하시면 됩니다.
 document.form.roadFullAddr.value = roadFullAddr;

}
</script>

<!-- 회원가입 빈칸 검증 -->
<script type="text/javascript">
    
    function joinCheck() {
		
    	var f = document.form;
    	//아이디
    	if(!f.id.value) {

			alert("아이디를 입력하세요!");
			document.form.id.focous();
			return;
			}
    	
    	//아아디
		if(f.id.value.length<5 || f.id.value.length>10) {

			alert("아이디를 5~10자 사이로 입력하세요!");
			document.form.id.focous();
			return;
		}
    	
		//이름
		if(!f.name.value) {

			alert("성명을 입력하세요!");
			document.form.id.focous();
			return;
			}
		
		//이름 4자리까지 체크
		if(f.name.value.length>4) {

			alert("성명은 최대 4자까지 가능합니다!");
			document.form.id.focous();
			return;
			}
		
		
		//비밀번호
		if(!f.pwd.value) {
		
			alert("비밀번호입력!");
			f.pwd.focous();
			return;
		}
		
		//비밀번호 길이
		if(f.pwd.value.length<6 || f.pwd.value.length>12) {
		
			alert("비밀번호는 6~12자 사이로 입력가능합니다.!");
			f.pwd.focous();
			return;
		}
    	
		//이메일 입력
		if(!f.email1.value) {
			
			alert("이메일을 입력하세요!");
			document.form.email.focous();
			return;
		}
		//이메일 입력
		if(!f.email2.value) {
			
			alert("이메일을 입력하세요!");
			document.form.email.focous();
			return;
		}
		
		//생년월일
		if(!f.birth_year.value) {
			
			alert("생일 입력!");
			document.form.birth_year.focous();
			return;
		}
		
		//생년월일
		if(!f.birth_month.value) {
			
			alert("생일 입력!");
			document.form.birth_month.focous();
			return;
		}
		
		//생년월일
		if(!f.birth_day.value) {
			
			alert("생일 입력!");
			document.form.birth_day.focous();
			return;
		}
		
		alert("회원가입 성공!!!!!");
		
		f.action="<%=cp%>/movie/join_ok";
		f.submit();
		
	}
    
</script>

<!-- ID 중복처리 -->
<script type="text/javascript">

//아이디의 유효성 검사
var regExp1= /^[A-Za-z0-9+]{4,12}$/;

//아이디 체크여부 확인 (아이디 중복일 경우 = 0 , 중복이 아닐경우 = 1 )
$(function() {
	$("#id").keyup(function(){
		//userid 를 param.
        var id =  $("#id").val();

        $.ajax({
            async: true,
            type : 'POST',
            data : id,
            url : "idcheck",
            dataType : "json",
            contentType: "application/json; charset=UTF-8",
            success : function(data) {
				//입력창이 비었을경우 html 지워줌
            	if(id==""){
            		var newDiv=document.getElementById("result");
                  	newDiv.innerHTML="";
                    newDiv.innerHTML=html;
                  	idck = 0;
				}
            	else if(!regExp1.test(id)){
                  	var html="<p class=\"text\" style=\"color:red;\">"
                      	html+="형식에 맞게 ID를 입력해주세요.</p>"
                      	var newDiv=document.getElementById("result");
                      	newDiv.innerHTML=html;
                    idck = 0;
            	}
				else if(data.cnt > 0) {
                    
                    $("#id").focus();
                  	var html="<p class=\"text\" style=\"color:red;\">"
                  	html+="사용할 수 없는 ID입니다.</p>"
                  	var newDiv=document.getElementById("result");
                  	newDiv.innerHTML=html;
                  	
                    idck = 0;
                
                }else {
                  	var html="<p class=\"text\" style=\"color:blue;\">"
                    html+="사용 가능한 ID입니다.</p>"
                    var newDiv=document.getElementById("result");
                    newDiv.innerHTML=html;
                    
                    //아이디가 중복하지 않으면  idck = 1 
                    idck = 1;
                }
                
            },
            error : function(error) {
                //alert("error : " + error);
            	var html="<p class=\"text\" style=\"color:red;\">"
                html+="ID를 입력해주세요.</p>"
                var newDiv=document.getElementById("result");
                newDiv.innerHTML=html;
                idck = 0;
            }
        });
		
	});
});

</script>




		<!-- 여기부터 마이페이지 UI(현우) -->
	<div class="container" align="center">
		<div class="col-lg-6" align="center" style="width: 400px;">
		
		<div class="title">MyPage</div>
			<b style="font-size: 25px;">회원정보수정</b>
			<form action="" method="post" name="form">
			
				<div class="" align="left">
					<label for="id">아이디</label>
					${id }
				</div>
				</br>
				<div>
					<div id="result"></div> <!-- 여기서 텍스트 뿌려줌 -->
				</div>
				
				
				<div class="input_group" style="margin-top: 5px;">
					<div id="result" class="input_wrap w30p"></div>
				</div>
				<div class="" align="left">
					<label for="">이름</label>
    				<input class="form-control" type="text" id="name" name="name" placeholder="이름을 입력하세요">
				</div>
				</br>
				<div class="" align="left">
					<label for="">비밀번호</label>
					<input type="password" class="form-control" id="pwd" name="pwd" placeholder="패스워드를 입력하세요" onkeydown="javascript:if(event.keyCode == 13) {login();}">
				</div>
				</br>
				<div class="" align="left">
					<label for="">이메일</label>
    				<input type="text" class="form-control" id="email1" name="email1" placeholder="email">
    				<span class="input-group-text">@</span>
   					<select class="form-control" name="email2" id="email2">
    					<option value="" selected="selected">선택</option>
						<option value="naver.com">naver.com</option>
						<option value="daum.net">daum.net</option>
						<option value="nate.com">nate.com</option>
						<option value="gmail.com">gmail.com</option>
						<option value="" selected="selected">직접입력</option>
    				</select>
				</div>
				</br>
				<div class="" align="left">
					<label for="">주소</label>
					</br>		
					<input type="text" class="form-control3" id="roadFullAddr" name="roadFullAddr" style="width: 400px;"/>
					<button class="button3" type="button"  onClick="goPopup();">주소검색</button>
				</div>
				<div class="" align="left" >
					<label for="">생년월일</label>
					</br>
					<select name="birth_year" id="birth_year" style="width: 113px;">
							<option value="1922">1922</option><option value="1923">1923</option><option value="1924">1924</option><option value="1925">1925</option><option value="1926">1926</option><option value="1927">1927</option><option value="1928">1928</option><option value="1929">1929</option><option value="1930">1930</option><option value="1931">1931</option><option value="1932">1932</option><option value="1933">1933</option><option value="1934">1934</option><option value="1935">1935</option><option value="1936">1936</option><option value="1937">1937</option><option value="1938">1938</option><option value="1939">1939</option><option value="1940">1940</option><option value="1941">1941</option><option value="1942">1942</option><option value="1943">1943</option><option value="1944">1944</option><option value="1945">1945</option><option value="1946">1946</option><option value="1947">1947</option><option value="1948">1948</option><option value="1949">1949</option><option value="1950">1950</option><option value="1951">1951</option><option value="1952">1952</option><option value="1953">1953</option><option value="1954">1954</option><option value="1955">1955</option><option value="1956">1956</option><option value="1957">1957</option><option value="1958">1958</option><option value="1959">1959</option><option value="1960">1960</option><option value="1961">1961</option><option value="1962">1962</option><option value="1963">1963</option><option value="1964">1964</option><option value="1965">1965</option><option value="1966">1966</option><option value="1967">1967</option><option value="1968">1968</option><option value="1969">1969</option><option value="1970">1970</option><option value="1971">1971</option><option value="1972">1972</option><option value="1973">1973</option><option value="1974">1974</option><option value="1975">1975</option><option value="1976">1976</option><option value="1977">1977</option><option value="1978">1978</option><option value="1979">1979</option><option value="1980">1980</option><option value="1981">1981</option><option value="1982">1982</option><option value="1983">1983</option><option value="1984">1984</option><option value="1985">1985</option><option value="1986">1986</option><option value="1987">1987</option><option value="1988">1988</option><option value="1989">1989</option><option value="1990">1990</option><option value="1991">1991</option><option value="1992">1992</option><option value="1993">1993</option><option value="1994">1994</option><option value="1995">1995</option><option value="1996">1996</option><option value="1997" selected="">1997</option><option value="1998">1998</option><option value="1999">1999</option><option value="2000">2000</option><option value="2001">2001</option><option value="2002">2002</option><option value="2003">2003</option><option value="2004">2004</option><option value="2005">2005</option><option value="2006">2006</option><option value="2007">2007</option><option value="2008">2008</option><option value="2009">2009</option><option value="2010">2010</option><option value="2011">2011</option><option value="2012">2012</option><option value="2013">2013</option><option value="2014">2014</option><option value="2015">2015</option><option value="2016">2016</option><option value="2017">2017</option><option value="2018">2018</option><option value="2019">2019</option><option value="2020">2020</option><option value="2021">2021</option><option value="2022">2022</option>
							</select>
							년
							<select name="birth_month" id="birth_month" style="width: 113px;">
							<option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option><option value="6">6</option><option value="7">7</option><option value="8">8</option><option value="9">9</option><option value="10">10</option><option value="11">11</option><option value="12">12</option>
							</select>
							월
							<select name="birth_day" id="birth_day" style="width: 113px;">
							<option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option><option value="6">6</option><option value="7">7</option><option value="8">8</option><option value="9">9</option><option value="10">10</option><option value="11">11</option><option value="12">12</option><option value="13">13</option><option value="14">14</option><option value="15">15</option><option value="16">16</option><option value="17">17</option><option value="18">18</option><option value="19">19</option><option value="20">20</option><option value="21">21</option><option value="22">22</option><option value="23">23</option><option value="24">24</option><option value="25">25</option><option value="26">26</option><option value="27" selected="">27</option><option value="28">28</option><option value="29">29</option><option value="30">30</option><option value="31">31</option>
							</select>
							일
				</div>
		
				<div class="" align="center">
					</br>
					<button onclick="joinCheck();" class="button1" type="button" id="login">회원가입</button>
				</div>
			</form>
		</div>
	</div>
		<!-- 		<div id="bodyContent"> -->







		<!-- 		<script type="text/javascript">
var localeCode = "kr";			//한영 구분 코드
var sellChnlCd = '';	//파라메타로 전달된 판매 체널 코드
var riaParamIsMember   = '';	//회원여부
var riaParamName       = '';		//고객명
var riaParamMobileNo   = '';	//고객전화번호
var riaParamBirthday   = '';	//고객생년월일
var riaParamMemberCard = '';	//카드번호
var riaParamPassword   = '';	//암호
var riaParamIPinCi     = '';		//아이핀 CI값
var riaParamReciveTime = '';	//ARS시각
var riaParamMovieCode  = '';	//특정영화코드
var riaMemberYn        = '';	//메가박스 회원여부
var riaLoginAt         = '';		//메가박스 로그인여부
var riaLoginId         = '';		//메가박스 로그인여부
var usrId              = '';		//메가박스 로그인여부
var msgStr       = '';
var bokdMPlayDe = ''; // 상영일자


$(window).load(function(){
	var frameBokdMBookingBodyObj    = $('#frameBokdMBooking').get(0).contentWindow.document.body;	//빠른예매 프레임 바디 오브젝트
	var frameBokdMBookingContentObj = $('#frameBokdMBooking').get(0).contentWindow;
	var frameBokdMSeatBodyObj       = $('#frameBokdMSeat').get(0).contentWindow.document.body;	//좌석도 프레임 바디 오브젝트
	var frameBokdMSeatContentObj    = $('#frameBokdMSeat').get(0).contentWindow;
	var framePayBookingBodyObj      = $('#framePayBooking').get(0).contentWindow.document.body;	//결제화면 프레임 바디 오브젝트
	var framePayBookingContentObj   = $('#framePayBooking').get(0).contentWindow;

	var bokdMPlaySchdlNo = '';	//파라메타로 전달된 상영스케줄 번호
	var bokdMRpstMovieNo = '22004700';	//파라메타로 전달된 대표영화번호
	var bokdMTheabKindCode1 = ''; // 특별관 area
	var bokdMBrchNo1 = ''; // 지점코드
	var naverPlaySchdlNo = ''; // 네이버예매로 넘어온경우

	//상영스케줄 번호가 없는경우 빠른예매 화면을 표시한다.
	if("" == bokdMPlaySchdlNo){
		//상단네비게이션바 RIA의 경우
		if(sellChnlCd != ""){

			$('.page-util').hide();	//상단 네비게이션바를 숨김 처리한다.

			if(riaMemberYn == "Y"){
				msgStr = riaParamName + "(" + riaLoginId + ") 고객님의 회원 정보가 적용되었습니다."
            }
            else if(riaMemberYn == "N"){
        		msgStr = "해당 회원 정보가 없습니다. 비회원으로 예매를 진행합니다.";
            }
		}
		else{
			$('.page-util').show();	//상단 네비게이션바를 숨김 처리한다.
		}

		$('#bokdMSeat').hide();	//좌석도 숨김
		$('#bokdMPayBooking').hide();	//결제 숨김

		//$('#frameBokdMBooking').attr('src','/on/oh/ohb/SimpleBooking/simpleBookingPage.do?rpstMovieNo='+bokdMRpstMovieNo);	//영화를 통해 진입한경우 영화 파라메타를 함께 전달
		$('#frameBokdMBooking').attr('src','/on/oh/ohb/SimpleBooking/simpleBookingPage.do?rpstMovieNo='+bokdMRpstMovieNo+'&theabKindCode1='+bokdMTheabKindCode1+'&brchNo1='+bokdMBrchNo1+'&sellChnlCd='+sellChnlCd+'&playDe='+bokdMPlayDe+'&naverPlaySchdlNo='+naverPlaySchdlNo); //영화를 통해 진입한경우 영화 파라메타를 함께 전달
		$('#frameBokdMBooking').load(function(){	//빠른예매 화면이 로딩이 완료되면
			$('#frameBokdMSeat').attr('src','/on/oh/ohz/PcntSeatChoi/selectPcntSeatChoi.do');	//좌석도 화면로딩
			$('#framePayBooking').attr('src','/on/oh/ohz/PayBooking/completeSeat.do');			//결제 화면 로딩
		});
		NetfunnelChk.script("BOOK_STEP1",function(){	//넷퍼넬 적용
			$('#bokdMBooking').show();	//빠른예매 화면 표시
		});
	}
	else {
		NetfunnelChk.script("BOOK_STEP2",function(){	//넷퍼넬 적용
	// 		$('#bokdMBooking').hide();	//빠른예매 숨김
	// 		$('#bokdMPayBooking').hide();	//결제 숨김
			$('#frameBokdMSeat').attr('src','/on/oh/ohz/PcntSeatChoi/selectPcntSeatChoi.do');
			$('#frameBokdMSeat').load(function(){
				frameBokdMSeatBodyObj       = $('#frameBokdMSeat').get(0).contentWindow.document.body;	//좌석도 프레임 바디 오브젝트
				frameBokdMSeatContentObj    = $('#frameBokdMSeat').get(0).contentWindow;
				$('#framePayBooking').attr('src','/on/oh/ohz/PayBooking/completeSeat.do');
				$(frameBokdMSeatBodyObj).find('#playSchdlNo').val(bokdMPlaySchdlNo);
				frameBokdMSeatContentObj.fn_search();
			});
			$('#bokdMSeat').show();
		});
	}

	//RIA용 화면 패딩 제거
	if("" != sellChnlCd){
		$('.container').addClass("mg00");
		$('.container').addClass("pd00");
	}
});

//좌석도로 파라메타 전달
function fn_setSmapParam(obj) {
	NetfunnelChk.script("BOOK_STEP2",function(){	//넷퍼넬 적용
		var frameBokdMSeatBodyObj = $('#frameBokdMSeat').get(0).contentWindow.document.body;	//좌석도 프레임 바디 오브젝트
		var frameBokdMSeatContentObj = $('#frameBokdMSeat').get(0).contentWindow;

		$('#bokdMSeat').show();	//좌석도 표시
		$(frameBokdMSeatBodyObj).find('#playSchdlNo').val(obj.attr("play-schdl-no"));
		$(frameBokdMSeatBodyObj).find('#brchNo').val(obj.attr("brch-no"));
		frameBokdMSeatContentObj.fn_search();

	// 	$('#frameBokdMSeat').attr('src','/on/oh/ohz/PcntSeatChoi/selectPcntSeatChoi.do?playSchdlNo='+obj.attr("play-schdl-no"));
	// 	$('#frameBokdMSeat').attr('src','/main');

		$('#bokdMBooking').hide();	//빠른예매 숨김
		$('#bokdMPayBooking').hide();	//결제 숨김
	});
}

//좌석도에서 이전 버튼 클릭
function fn_goPrePagePcntSeatChoi(msg) {
	var frameBokdMSeatContentObj = $('#frameBokdMSeat').get(0).contentWindow;
	$('#bokdMPayBooking').hide();	//결제 숨김
	$('#bokdMSeat').hide();	//좌석도 숨김
	$('#bokdMBooking').show();	//빠른예매 표시

	if (msg != null && msg != "") {
		gfn_alertMsgBox("결제가능 시간이 초과되어<br/> 좌석선택부터 다시 진행바랍니다.");
	}

	//결제에서 예매이동 처리 추가
	$('#frameBokdMSeat').attr("src", "/on/oh/ohz/PcntSeatChoi/selectPcntSeatChoi.do"); //좌석도 화면초기화
	$('#framePayBooking').attr("src", "/on/oh/ohz/PayBooking/completeSeat.do"); //결제화면 초기화
}

//상영시간표에서 다음 버튼 클릭
function fn_goNextPagePcntSeatChoi(param) {
	//선점좌석 체크
	fn_validOccupSeat(param);
	//로그인 여부 체크
	//데이터 보정 체크
	//fn_validLoginAt();
	//오입력 체크
	//블랙리스트 체크
	//결제로이동
}


//결제화면으로로 파라메타 전달 및 화면 이동
function fn_setBookingParamMove(options) {
	NetfunnelChk.script("BOOK_STEP3",function(){	//넷퍼넬 적용
		var framePayBookingBodyObj    = $('#framePayBooking').get(0).contentWindow.document.body;	//결제화면 프레임 바디 오브젝트
		var framePayBookingContentObj = $('#framePayBooking').get(0).contentWindow;

		//좌석도에서 세팅한 param 값
		var playSchdlNo   = options.playSchdlNo;	//상영스케쥴
		var seatOccupText = options.seatOccupText;	//좌석/티켓 상세정보
		var totalAmt      = options.totalAmt;		//총금액
		var entrpMbCd     = options.entrpMbCd;		//기업회원
		var tkeYn         = options.tkeYn;		    //기업요금결제여부
		var benepiaTotalAmt         = 8000;		    //기업요금결제여부

		$(framePayBookingBodyObj).find('#playSchdlNo').val(playSchdlNo);
		$(framePayBookingBodyObj).find('#seatOccupText').val(seatOccupText);
		$(framePayBookingBodyObj).find('#totalAmt').val(totalAmt);
		$(framePayBookingBodyObj).find('#entrpMbCd').val(entrpMbCd);
		$(framePayBookingBodyObj).find('#tkeYn').val(tkeYn);
		$(framePayBookingBodyObj).find('#benepiaTotalAmt').val(benepiaTotalAmt);

		framePayBookingContentObj.completeSeat();
		$('#bokdMPayBooking').show();
		//프레임 높이 자동 조정
		calcFrameHeight($('#bokdMPayBooking'), $('#framePayBooking'));

		$('#bokdMSeat').hide();  //좌석도 숨김
	});
}

//결제화면에서 이전 버튼 클릭
function fn_goPrePagePayBooking() {
	var framePayBookingContentObj = $('#framePayBooking').get(0).contentWindow;
	var frameBokdMSeatContentObj = $('#frameBokdMSeat').get(0).contentWindow;
	$('#bokdMPayBooking').hide();
	$('#framePayBooking').attr("src", "/on/oh/ohz/PayBooking/completeSeat.do"); //결제화면 초기화
	$('#bokdMSeat').show();	//좌석도 표시
	$("html,body").scrollTop(0);

	frameBokdMSeatContentObj.fn_display_init();
}

function fn_seatDispInit() {
	var frameBokdMSeatContentObj = $('#frameBokdMSeat').get(0).contentWindow;
	frameBokdMSeatContentObj.fn_display_init();
	frameBokdMSeatContentObj.fn_search('N');
}

//결제화면에서 이전 버튼 클릭 및 블랙리스트 팝업
function fn_altBlackgoPrePagePayBooking(blackListParam) {
	var framePayBookingContentObj = $('#framePayBooking').get(0).contentWindow;
	var frameBokdMSeatContentObj = $('#frameBokdMSeat').get(0).contentWindow;
	$('#bokdMPayBooking').hide();
	$('#framePayBooking').attr("src", "/on/oh/ohz/PayBooking/completeSeat.do"); //결제화면 초기화
	$('#bokdMSeat').show();	//좌석도 표시
	$("html,body").scrollTop(0);

	frameBokdMSeatContentObj.fn_display_init();

	frameBokdMSeatContentObj.shwoBlackListPopup(blackListParam);
}

//결제화면에서 오류 발생시 좌석도로 이동(기선점 존재, 시간 초과 등)
function fn_goPrePageInitSeat(msg) {
	var framePayBookingContentObj = $('#framePayBooking').get(0).contentWindow;
	$('#bokdMPayBooking').hide();
	$('#framePayBooking').attr("src", "/on/oh/ohz/PayBooking/completeSeat.do"); //결제화면 초기화

	//좌석도 초기화
	var frameBokdMSeatContentObj = $('#frameBokdMSeat').get(0).contentWindow;
	frameBokdMSeatContentObj.fn_search('N');  //새로 조회 및 최초진입 팝업 띄우지 않음
	$('#bokdMSeat').show();	//좌석도 표시
	$("html,body").scrollTop(0);

	if (msg != null && msg != "") {
		gfn_alertMsgBox("결제가능 시간이 초과되어<br/> 좌석선택부터 다시 진행바랍니다.");
	}

	frameBokdMSeatContentObj.fn_display_init();
	frameBokdMSeatContentObj.fn_search('N');
}

//프레임 height 자동조정 : 결제만 적용가능
function calcFrameHeight(divObj, frameObj) { //div obj, frame obj
	var frameBodyObj = $(frameObj).get(0).contentWindow.document.body;	//프레임 바디 오브젝트
	var height = $(frameObj).contents().find('.inner-wrap').outerHeight();
	$(divObj).height(height+35);
	$(frameObj).height(height+25);
}

//선점좌석 체크
function fn_validOccupSeat(param){
	$.ajaxMegaBox({
        url    : "/on/oh/ohb/BokdMain/selectOccupSeat.do",
        data   : JSON.stringify(param),
        success: function(result){
        	var occupSeatAt = result.resultMap.occupSeatAt;	//좌석선점여부

        	//비 좌석선점 상태 로그인 체크 하러 감.
			if(occupSeatAt  == "N"){
				fn_validLoginAt(param);	//로그인 체크
			}
        	//좌석 선점 상태
        	else {
        		gfn_alertMsgBoxSize('선택하신 좌석은 이미 판매가 진행중입니다．\n다른 좌석을 선택해주세요.',400,250);	//선택하신　좌석은　이미　판매가　진행중입니다．\\n다른　좌석을　선택해주세요.
        		return;
        	}
        }
    });

}


//로그인여부 체크
function fn_validLoginAt(param){
	$.ajaxMegaBox({
        url    : "/on/oh/ohg/MbLogin/selectLoginSession.do",
        //data   : JSON.stringify(paramData),
        success: function(result){
        	var loginAt = result.resultMap.result;	//로그인 여부

        	//비로그인 상태
			if(loginAt  == "N" && sellChnlCd == ""){
				//로그인 팝업 표시
				fn_viewLoginPopup('SimpleBokdM','pc','Y',JSON.stringify(param));
			}
        	//비로그인상태 RIA
        	else if(loginAt  == "N" && sellChnlCd != ""){
				gfn_alertMsgBoxSize('로그인이 필요한 서비스 입니다.',400,250);	//로그인이 필요한 서비스 입니다.
				fn_riaLoginInputToggle(false);
			}
        	//로그인 상태
			else {
				//데이터 보정 체크
				fn_validDataRevisn(param);
			}
        }
    });
}


//로그인여부 체크
function fn_testLoginAt(){
	$.ajaxMegaBox({
        url    : "/on/oh/ohg/MbLogin/selectLoginSession.do",
        //data   : JSON.stringify(paramData),
        success: function(result){
        	var loginAt = result.resultMap.result;	//로그인 여부
        	alert(loginAt);
        }
    });
}


//RIA 로그인 토글
function fn_setRiaLoginToggle(riaLoginAtArrayParam){	//0 : 로그인여부, 1:riaName, 2:riaBirthday, 3:riaMobileNo
	var ajaxUrl     = "";
	var paramData   = "";
	var riaLoginAt  = riaLoginAtArrayParam[0];
	var riaName     = "";
	var riaBirthday = "";
	var riaMobileNo = "";

	if("Y" == riaLoginAt){
		//로그아웃
		ajaxUrl = "/on/oh/ohg/MbLogin/riaLogOut.do";
	}
	else {
		//로그인
		ajaxUrl = "/on/oh/ohg/MbLogin/selectRiaLoginInfo.rest";

		//파라메타 생성
		riaName     = riaLoginAtArrayParam[1];
		riaBirthday = riaLoginAtArrayParam[2];
		riaMobileNo = riaLoginAtArrayParam[3];

		paramData   = { name:riaName, birthday:riaBirthday, mobileNo:riaMobileNo, sellChnlCd:sellChnlCd};
	}
	//로그인 또는 로그아웃
	$.ajaxMegaBox({
        url    : ajaxUrl,
        data   : JSON.stringify(paramData),
        success: function(result){
        	//전역변수 토글
        	//로그인 여부 변경
        	if(typeof result.resultMap != 'undefined' && result.resultMap.memberYn != null && result.resultMap.memberYn != ""){
	    		riaLoginAtArrayParam[0] = "Y";							//로그인여부
	    		riaLoginAtArrayParam[1] =  result.resultMap.name;		//이름
	        	riaLoginAtArrayParam.push(result.resultMap.memberYn);	//회원여부
	        	riaLoginAtArrayParam.push(result.resultMap.riaLoginId);	//로그인ID
        	}
        	else {
        		riaLoginAtArrayParam[0] = "N";	//로그인여부
        		riaLoginAtArrayParam.push("N");	//회원여부
        		if("N" == riaLoginAt)
        			gfn_alertMsgBoxSize('이름은  필수 입력 항목 입니다.',400,250);	//{0} 필수 입력 항목 입니다.
        	}

        	fn_riaLoginGVToggle(riaLoginAtArrayParam);

        	//RIA 로그인 입력창 토글
        	fn_riaLoginInputToggle("N" == riaLoginAtArrayParam[0] ? false : true);
        }
    });
}

//RIA 전역변수 토글
function fn_riaLoginGVToggle(arrayParam){
	//로그인 상태에서 로그아웃 상태로 갈때
	if("N" == arrayParam[0]){
		riaLoginAt         = 'N'; //메가박스 로그인여부
		riaParamName       = arrayParam[1];  //고객명
		riaParamBirthday   = arrayParam[2];  //고객생년월일
		riaParamMobileNo   = arrayParam[3];  //고객전화번호
		riaMemberYn        = typeof arrayParam == undefined || arrayParam == "" || arrayParam == null ? "N" : arrayParam[5]; //메가박스 회원여부
		riaLoginId         = '';  //로그인ID

	}
	else {
		riaLoginAt         = arrayParam[0];  //메가박스 로그인여부
		riaParamName       = arrayParam[1];  //고객명
		riaParamBirthday   = arrayParam[2];  //고객생년월일
		riaParamMobileNo   = arrayParam[3];  //고객전화번호
		riaMemberYn        = arrayParam[4];  //메가박스 회원여부
		riaLoginId         = arrayParam[5];  //로그인ID
	}
}

//RIA 로그인 입력창 토글
function fn_riaLoginInputToggle(inputAbleAt){
	var frameBokdMBookingBodyObj    = $('#frameBokdMBooking').get(0).contentWindow.document.body;	//빠른예매 프레임 바디 오브젝트
	var frameBokdMBookingContentObj = $('#frameBokdMBooking').get(0).contentWindow;
	var frameBokdMSeatBodyObj       = $('#frameBokdMSeat').get(0).contentWindow.document.body;	//좌석도 프레임 바디 오브젝트
	var frameBokdMSeatContentObj    = $('#frameBokdMSeat').get(0).contentWindow;
	var framePayBookingBodyObj      = $('#framePayBooking').get(0).contentWindow.document.body;	//결제화면 프레임 바디 오브젝트
	var framePayBookingContentObj   = $('#framePayBooking').get(0).contentWindow;
	var riaMemberInputText = "";
	var riaMemberButtonText = "";

	//로그인 버튼 텍스트 생성
	//로그인 되어 있는경우
	if("Y" == riaLoginAt){
		//
		if("Y" == riaMemberYn){
			riaMemberInputText = "회원";
			riaMemberButtonText = "재인증";
			msgStr = riaParamName + "(" + riaLoginId + ") 고객님의 회원 정보가 적용되었습니다.";
		}
		else {
			riaMemberInputText = "비회원";
			riaMemberButtonText = "재인증";
			msgStr = "해당 회원 정보가 없습니다. 비회원으로 예매를 진행합니다.";
		}
	}
	//로그인 되어 있지 않은경우
	else {
		msgStr = "";
		riaMemberButtonText = "인증요청";
	}


	$(frameBokdMBookingBodyObj).find('.cti-area input[name=riaName]').val(riaParamName);	//고객명
	$(frameBokdMBookingBodyObj).find('.cti-area input[name=riaMobileNo]').val(riaParamMobileNo);	//고객전화번호
	$(frameBokdMBookingBodyObj).find('.cti-area input[name=riaBirthday]').val(riaParamBirthday);	//고객생년월일
	$(frameBokdMBookingBodyObj).find('.cti-area input[name=riaMemberYn]').val(riaMemberInputText);	//회원여부

	$(frameBokdMBookingBodyObj).find('.cti-area input[name=riaName]').attr("readonly",inputAbleAt);		//고객명
	$(frameBokdMBookingBodyObj).find('.cti-area input[name=riaMobileNo]').attr("readonly",inputAbleAt);	//고객전화번호
	$(frameBokdMBookingBodyObj).find('.cti-area input[name=riaBirthday]').attr("readonly",inputAbleAt);	//고객생년월일
	$(frameBokdMBookingBodyObj).find('.cti-area button').attr('login-at',riaLoginAt);	//회원여부
	$(frameBokdMBookingBodyObj).find('.cti-area button').html(riaMemberButtonText);

	//좌석도
	$(frameBokdMSeatBodyObj).find('.cti-area input[name=riaName]').val(riaParamName);	//고객명
	$(frameBokdMSeatBodyObj).find('.cti-area input[name=riaMobileNo]').val(riaParamMobileNo);	//고객전화번호
	$(frameBokdMSeatBodyObj).find('.cti-area input[name=riaBirthday]').val(riaParamBirthday);	//고객생년월일
	$(frameBokdMSeatBodyObj).find('.cti-area input[name=riaMemberYn]').val(riaMemberInputText);	//회원여부

	$(frameBokdMSeatBodyObj).find('.cti-area input[name=riaName]').attr("readonly",inputAbleAt);		//고객명
	$(frameBokdMSeatBodyObj).find('.cti-area input[name=riaMobileNo]').attr("readonly",inputAbleAt);	//고객전화번호
	$(frameBokdMSeatBodyObj).find('.cti-area input[name=riaBirthday]').attr("readonly",inputAbleAt);	//고객생년월일
	$(frameBokdMSeatBodyObj).find('.cti-area button').attr('login-at',riaLoginAt);	//회원여부
	$(frameBokdMSeatBodyObj).find('.cti-area button').html(riaMemberButtonText);

	//결제
	$(framePayBookingBodyObj).find('.cti-area input[name=riaName]').val(riaParamName);	//고객명
	$(framePayBookingBodyObj).find('.cti-area input[name=riaMobileNo]').val(riaParamMobileNo);	//고객전화번호
	$(framePayBookingBodyObj).find('.cti-area input[name=riaBirthday]').val(riaParamBirthday);	//고객생년월일
	$(framePayBookingBodyObj).find('.cti-area input[name=riaMemberYn]').val(riaMemberInputText);	//회원여부

	$(framePayBookingBodyObj).find('.cti-area input[name=riaName]').attr("readonly",inputAbleAt);		//고객명
	$(framePayBookingBodyObj).find('.cti-area input[name=riaMobileNo]').attr("readonly",inputAbleAt);	//고객전화번호
	$(framePayBookingBodyObj).find('.cti-area input[name=riaBirthday]').attr("readonly",inputAbleAt);	//고객생년월일
	$(framePayBookingBodyObj).find('.cti-area button').attr('login-at',riaLoginAt);	//회원여부

	fn_getMsgStrToAlert();

}


function fn_getMsgStrToAlert(){
	if(sellChnlCd == "TELLER" && msgStr != ""){
		gfn_alertMsgBox(msgStr);
	}
}


//데이터 보정 체크 데이터 보정 체크 안함 김민영과장 2019-12-02
function fn_validDataRevisn(param){
	fn_vlaidBlackList(param);

// 	$.ajaxMegaBox({
//         url    : "/on/oh/ohg/MbLogin/selectDataRevisn.do",
//         //data   : JSON.stringify(paramData),
//         success: function(result){
//         	var dataRevisnAt = result.resultMap.result;	//로그인 여부

//         	//자료보정대상
// 			if(dataRevisnAt  == "Y" && sellChnlCd == ""){
// 				//자료 보정 안내 메세지 표시
// 				var arguments=result.resultMap.birthDe+' / '+result.resultMap.mblpTelno;
// 				var frameBokdMSeatContentObj = $('#frameBokdMSeat').get(0).contentWindow;	//좌석도 프레임 컨텐츠 오브젝트
// 				frameBokdMSeatContentObj.shwoDataRevisnPopup(arguments,param);
//  			}
//  			//자료보정대상아님
//  			else {
//  				//블랙리스트 체크
// 				fn_vlaidBlackList(param);
//  			}
//         }
//     });
}

//블랙리스트 체크
function fn_vlaidBlackList(param){
	var paramData = { BokdCnt : param.bokdCnt
					, BokdBrch : param.brchNo
					};
// 	//좌석수 param
	$.ajaxMegaBox({
        url    : "/on/oh/ohg/MbLogin/selectBlackList.do",
        data   : JSON.stringify(paramData),
        success: function(result){
        	var dataBlackListAt = result.resultMap.result;
        	//블랙리스트 대상
        	//dataBlackListAt = "N";	//주희연 통테 테스트용 블랙리스트 체크 제외 로직 삽입. 20191118
			if(dataBlackListAt  == "Y"){
				//블랙리스트 안내 메세지 표시
				var frameBokdMSeatContentObj = $('#frameBokdMSeat').get(0).contentWindow;
				var blackListParam = { bokdAbleBrch: result.resultMap.bokdAbleBrch
									, bokdAbleCnt: result.resultMap.bokdAbleCnt
									, bokdAbleQty: result.resultMap.bokdAbleQty
									 }
				frameBokdMSeatContentObj.shwoBlackListPopup(blackListParam);
			}
			//블랙리스트 비 대상
			else {
				//결제로 이동
 				fn_setBookingParamMove(param);
			}
        }
    });
}

//페이지 이동
function fn_mvPage(page){
	$("#bokdMForm").attr("method","post");
	$("#bokdMForm").attr("action",page);
	$("#bokdMForm").submit();
}


//언어변환
function setLangChg(){
    if(localeCode == "en"){
        location.href="/booking?megaboxLanguage=kr";
    }
    else {
        location.href="/booking?megaboxLanguage=en";
    }
}

//페이지 리로드
function fn_bokdReload(page){
	$("#bokdMForm").attr("method","post");
	$("#bokdMForm").attr("action",page);
	$("#bokdMForm").submit();
}


$(window).on("beforeunload", function(){

	//결제 페이지 이동시
	if( $("#framePayBooking").contents().find("#completeYn").val() != 'Y' &&
			$("#framePayBooking").contents().find("#prepareYn").val() == 'Y' ){

		$.ajaxMegaBox({
			url		: '/on/oh/ohg/MbLogin/nonMbLogout.do',
	        success	: function(result){

	        	//console.log("result : "+result);
	        },
	        complete : function(){

	        	//console.log("?");
	        }
	    });
	}

});


</script>
		<form id="bokdMForm">
			<input type="hidden" name="returnURL" value="info">
				<input type="button" onClick="javaScript:fn_testLoginAt()">
		</form>
		container
		<div class="container" style="padding-bottom: 240px;">
			<input type="hidden" id="playDe" name="playDe" value="">
			<div class="page-util" style="">
				<div class="inner-wrap">
					<div class="location">
						<span>Home</span> <a href="https://www.megabox.co.kr/booking"
							title="예매 페이지로 이동">예매</a> <a
							href="https://www.megabox.co.kr/booking" title="빠른예매 페이지로 이동">빠른예매</a>
					</div>


				</div>
			</div>

			loading
			<div class="bg-loading" style="display: none;">
				<div class="spinner-border" role="status">
					<span class="sr-only">Loading...</span>
				</div>
			</div>

			<div id="bokdMSeat" style="overflow: hidden; height: 1000px;">
				<iframe id="frameBokdMSeat" src="resources/booking_2_files/selectPcntSeatChoi.html" title="관람인원선택 프레임" scrolling="no" frameborder="0" class="reserve-iframe" style="width: 100%; height: 1000px;"></iframe>
				<input type="hidden" name="admisClassNm_value" value="12세이상관람가" />
				<input type="hidden" name="movieNm_value"
					value="닥터 스트레인지: 대혼돈의 멀티버스" /> 
					<input type="hidden"
					name="playKindNm_value" value="3D(자막)" /> 
					<input type="hidden"
					name="brchNm_value" value="강남" /> 
					<input type="hidden"
					name="theater_value" value="1관" />
					<input type="hidden"
					name="playDe_value" value="2022.05.07" /> 
					<input type="hidden"
					name="dowNm_value" value="(토)" /> 
					<input type="hidden"
					name="playTime_value" value="21:45~23:46" /> 

			</div>

		</div>
		// container




		<script>
    //document.body.scrollIntoView(true);

    ////////////////////////////////////////////////////////////////////////////
    /////////////////////////// IFRAME 외부로 호출영역///////////////////////////
    ////////////////////////////////////////////////////////////////////////////

/*     $("#frameBokdMBooking").load(function(){
        if (self != top) {
            var height = $(document).height();
            var allowOrigin = "http://ria.megabox.co.kr";
            window.parent.postMessage(height, allowOrigin);
        }
    }); */

    ////////////////////////////////////////////////////////////////////////////
    ////////////////////////////////////////////////////////////////////////////
    ////////////////////////////////////////////////////////////////////////////

</script>

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
		</div> -->

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

		<!-- 모바일 때만 출력 -->
		<div class="go-mobile" style="display: none;">
			<a href="https://www.megabox.co.kr/booking#"
				data-url="https://m.megabox.co.kr">모바일웹으로 보기 <i
				class="iconset ico-go-mobile"></i></a>
		</div>
	</div>
	<form id="mainForm"></form>
	<script type="text/javascript">
		(function(w, d, a){
		    w.__beusablerumclient__ = {
		        load : function(src){
		            var b = d.createElement("script");
		            b.src = src; b.async=true; b.type = "text/javascript";
		            d.getElementsByTagName("head")[0].appendChild(b);
		        }
		    };w.__beusablerumclient__.load(a);
		})(window, document, "//rum.beusable.net/script/b200617e104748u388/bc4af2fa1e");
	</script>

	<div class="normalStyle"
		style="display: none; position: fixed; top: 0; left: 0; background: #000; opacity: 0.7; text-indent: -9999px; width: 100%; height: 100%; z-index: 100;">닫기</div>
	<div class="alertStyle"
		style="display: none; position: fixed; top: 0px; left: 0px; background: #000; opacity: 0.7; width: 100%; height: 100%; z-index: 5005;"></div>
	<div id="fatkun-drop-panel">
		<a id="fatkun-drop-panel-close-btn">×</a>
		<div id="fatkun-drop-panel-inner">
			<!-- <div class="fatkun-content">
				<svg class="fatkun-icon" viewBox="0 0 1024 1024" version="1.1"
					xmlns="http://www.w3.org/2000/svg" p-id="5892">
				<path
					d="M494.933333 782.933333c2.133333 2.133333 4.266667 4.266667 8.533334 6.4h8.533333c6.4 0 10.666667-2.133333 14.933333-6.4l2.133334-2.133333 275.2-275.2c8.533333-8.533333 8.533333-21.333333 0-29.866667-8.533333-8.533333-21.333333-8.533333-29.866667 0L533.333333 716.8V128c0-12.8-8.533333-21.333333-21.333333-21.333333s-21.333333 8.533333-21.333333 21.333333v588.8L249.6 475.733333c-8.533333-8.533333-21.333333-8.533333-29.866667 0-8.533333 8.533333-8.533333 21.333333 0 29.866667l275.2 277.333333zM853.333333 874.666667H172.8c-12.8 0-21.333333 8.533333-21.333333 21.333333s8.533333 21.333333 21.333333 21.333333H853.333333c12.8 0 21.333333-8.533333 21.333334-21.333333s-10.666667-21.333333-21.333334-21.333333z"
					p-id="5893"></path></svg>
				<div class="fatkun-title">Drag and Drop</div>
				<div class="fatkun-desc">The image will be downloaded</div>
			</div> -->
		</div>
	</div>
</body>
</html>