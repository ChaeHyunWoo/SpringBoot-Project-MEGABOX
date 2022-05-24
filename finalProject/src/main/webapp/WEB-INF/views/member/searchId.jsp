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
<link rel="shortcut icon" href="https://www.megabox.co.kr/static/pc/images/favicon.ico">
<title>아이디 찾기</title>
<script type="text/javascript" src="<%=cp%>/resources/js/jquery-3.3.1.min.js"></script>
<link rel="stylesheet" type="text/css" href="<%=cp%>/resources/search_mem/member-join.css">
<style type="text/css">

	

	button {
            background-color: rgb(63,0,153);
            color : white;
            width:300px;
            height:50px;
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
<script type="text/javascript">

	//form submit
	function sendIt(){
		var f= document.myForm;
		
	  	//f.action="searchid_com";
	  	f.action="/movie/searchId_ok";
		f.submit();
	}

	
	//이메일 naver.com,daum.com 등 선택 
	function emailCheck() {
		
		var f = document.myForm;
		var clength = f.emailSel.options.length;
		var cvalue = f.emailSel.selectedIndex;
	
		f.email2.value = "";
	
		if (cvalue == (clength - 1)) {
			f.email2.readOnly = false;
		} else {
			f.email2.value = f.emailSel.options[cvalue].value;
			f.email2.readOnly = true;
		}
	
	}
</script>

<script type="text/javascript">
	var idck = 0;
	var f = document.myForm;
	
	$(function() {
	    
	    $("#findId").click(function() {

	        var obj = new Object(); 
	        obj.name = $("#name").val();
	        obj.email1 = $("#email1").val();
	         
	        var json_data = JSON.stringify(obj); // form의 값을 넣은 오브젝트를 JSON형식으로 변환
	        
	        $.ajax({
	            type : 'POST',
	            data : json_data,
	            url : "idAjax",
	            dataType : "json",
	            contentType: "application/json; charset=UTF-8",
	            success : function(data) {
	            	
	            	if(data.cnt==''||data.cnt==null) {
	                    alert("아이디가 조회되지 않습니다.");
						$("#name").focus();
	                    	                
	                } else {
	                    //alert("아이디 조회 성공");
	                    //아이디가 중복하지 않으면  idck = 1 
	                    idck = 1;

	            	  	sendIt();
	                }     
	            },
	            beforeSend:showRequest,
	            error : function(error) {
	                alert("error : " + error);
	            }
	        });
	        
	    });
	});

	function showRequest() {
		
		var name=$.trim($("#name").val());
		var email1=$.trim($("#email1").val());
		
        if(name==""){
        	alert("이름을 입력해주세요.");
        	$("#id").focus();
        	return false;//이거 안쓰면 success부분의 alert창이 뜸
        }
        
        if(email1==""||email2==""){
        	alert("이메일을 입력해주세요.");
        	$("#email1").focus();
        	return false;
        }

	}
</script>
</head>
<body>
	<div class="ap_wrapper">

		<div id="ap_container" class="ap_container">
			<div class="page_title_area" align="center">
				<h1>MEGA BOX ID 찾기</h1>
			</div>
			
			
			
			<div class="ap_contents find_id_pwd">
				</br>
				<img src="/resources/mega_image/메인로고.png" alt="메인로고">
				</br>
				</br>
				</br>
				</br>
				<p class="text">본인 인증으로 아이디를 찾으실 수 있습니다.</p>
				</br>
				<form class="validate" name="myForm">
					<fieldset class="form">
						<legend class="sr_only">본인인증 정보입력</legend>

						<div class="input_wrap">
							<input type="text" title="이름 입력" name="name" id="name"
								placeholder="이름(실명으로 입력해주세요)" required="required"
								>
						</div>

						<div class="input_group">
							<div class="input_wrap w30p no-check">
								<input type="tel" pattern="[0-9]*" placeholder="이메일"
									title="이메일 입력" name="email1" id="email1"
									maxlength="11" />
							</div>
							<span class="gap" style="width: 20px; line-height: 40px;">&nbsp;@&nbsp;</span>

							<div class="input_wrap w30p no-check">
								<input type="tel" pattern="[0-9]*" placeholder="" title="이메일 입력"
									name="email2"  id="email2"
									maxlength="11" />
							</div>
							<span class="gap"></span>
							<div class="select_wrap">
								<select title="선택" id="emailSel" name="emailSel" onchange="emailCheck();">
									<option value="">&nbsp;선택</option>
									<option value="naver.com">&nbsp;naver.com</option>
									<option value="daum.net">&nbsp;daum.net</option>
									<option value="nate.com">&nbsp;nate.com</option>
									<option value="">&nbsp;직접 입력</option>
								</select>
							</div>
						</div>

						<div class="form_btns">
								<button type="button" id="findId">아이디 찾기</button>
						</div>

						<c:if test="${!empty message }">
							<script type="text/javascript">
							alert("회원정보가 조회되지 않습니다.");
							</script>
						</c:if>

					</fieldset>
				</form>
			</div>

		</div>
	</div>
</body>
</html>










































