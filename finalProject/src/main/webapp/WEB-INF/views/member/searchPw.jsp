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
<title>비밀번호 찾기</title>
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
		
	  	f.action="/movie/searchPw_ok";
		f.submit();
	}


</script>

<script type="text/javascript">
	var idck = 0;
	var f = document.myForm;
	
	$(function() {
	    
	    $("#findId").click(function() {

	        var obj = new Object(); 
	        obj.id = $("#id").val();
	        obj.name = $("#name").val();
	         
	        var json_data = JSON.stringify(obj); // form의 값을 넣은 오브젝트를 JSON형식으로 변환
	        
	        $.ajax({
	            type : 'POST',
	            data : json_data,
	            url : "pwAjax",
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
		
		var id=$.trim($("#id").val());
		var name=$.trim($("#name").val());
		
        if(id==""){
        	alert("ID를 입력해주세요.");
        	$("#id").focus();
        	return false;//이거 안쓰면 success부분의 alert창이 뜸
        }
        
        if(name==""){
        	alert("이름을 입력해주세요.");
        	$("#name").focus();
        	return false;//이거 안쓰면 success부분의 alert창이 뜸
        }

	}
</script>
</head>
<body>
	<div class="ap_wrapper">

		<div id="ap_container" class="ap_container">
			<div class="page_title_area" align="center">
				<h1>MEGA BOX PW 찾기</h1>
			</div>
			
			
			
			<div class="ap_contents find_id_pwd">
				</br>
				<img src="/resources/mega_image/메인로고.png" alt="메인로고">
				</br>
				</br>
				</br>
				</br>
				<p class="text">본인 인증으로 비밀번호를 찾으실 수 있습니다.</p>
				</br>
				<form class="validate" name="myForm">
					<fieldset class="form">
						<legend class="sr_only">본인인증 정보입력</legend>

						<div class="input_wrap">
							<input type="text" title="ID 입력" name="id" id="id"
								placeholder="ID를 입력해주세요" required="required"
								>
						</div>
						
						<div class="input_wrap">
							<input type="text" title="이름 입력" name="name" id="name"
								placeholder="이름(실명으로 입력해주세요)" required="required">
						</div>


						<div class="form_btns">
								<button type="button" id="findId">비밀번호 찾기</button>
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










































