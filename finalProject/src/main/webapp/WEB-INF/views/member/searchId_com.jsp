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
<title>MEGA BOX ID 찾기 완료</title>
<script type="text/javascript" src="<%=cp%>/resources/js/jquery-3.3.1.min.js"></script>
<link rel="stylesheet" type="text/css" href="<%=cp%>/resources/search_mem/member-join.css">
<style type="text/css">
button {
            background-color: rgb(63,0,153);
            color : white;
            width:420px;
            height:50px;
            font-size: 17px;
            border : none;
            border-radius: 5px;
            margin : 20px 0 30px 0;
        }
        
         .id_box {
            width:400px;
            height:600px;
            display : flex;
            flex-direction: column;
            align-items:center;
            position : absolute;
            top:50%;
            left:50%;
            transform: translate(-50%, -50%) ;
            border: 1px solid rgb(89,117,196);
            border-radius: 10px;
        }
        
        
</style>

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
				</br>
						<legend class="sr_only">회원님의 ID찾기가 완료 되었습니다.</legend>

						<div class="input_wrap">
						<tr>
							<span style="font-size: 20px;">회원님의 ID : ${id}</span>
						</tr>
						</div>
				<button type="button" onclick="location.replace('/movie/login')"><span>로그인 하러가기</span></button>

			</div>

		</div>
	</div>
</body>
</html>










































