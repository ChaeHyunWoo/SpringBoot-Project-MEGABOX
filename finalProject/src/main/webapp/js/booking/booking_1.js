


function mcRepeat(data){

	var mcToken = parseInt($('#mcToken').val());

	if(mcToken === 1){
		
		var cell = document.getElementById("mChoice_1"); 
		
		while ( cell.hasChildNodes() ) { 
			cell.removeChild(cell.firstChild ); 
		}
		
		createMovieChoice(data);
		
		return;
	}
	
	mcToken ++;
	$('#mcToken').val(mcToken);
	
	createMovieChoice(data);
	
}



function createMovieChoice(data){

	var node = document.createElement("div");
	
	node.className = "wrap";
	node.onclick=function(){
		alert("1");
	}
	
	var html = "<div class=\"img\">";
		html += "<img src=\"./poster/" + data.s_f_n + "\"></div>";
		html +=	"<button type=\"button\" onclick=\"\">삭제</button>";
		
	node.innerHTML = html;
	document.getElementById("mChoice_1").appendChild(node);

}


function mnClk(mnNum){

	if($('#movieSel').val() == ""){
		$('#mn_' + mnNum).addClass('on');
	} else {
		$('#mn_' + $('#movieSel').val()).removeClass('on');
		$('#mn_' + mnNum).addClass('on');
	}
	$('#movieSel').val(mnNum);
	
	var params = "mnNum=" + mnNum;

	$.ajax({
		type:"POST",
		url:"movieData",
		data: params,
		success:function(data){
			mcRepeat(data.movieData);
		},
		error:function(e){
			alert(e.responseText);
		}
	});
	
	
	selectConfirm();
}

function dateClk(year,month,day){
	
	if($('#daySel2').val() == ""){
		$('#day_' + day).addClass('on');
	} else {
		$('#day_' + $('#daySel2').val()).removeClass('on');
		$('#day_' + day).addClass('on');
	}
	$('#daySel2').val(day);
	
	
	var strMonth = "";
	
	if(month < 10){
		strMonth = "0" + String(month)
	}
	
	var strDate = year + "." + strMonth + "." + day;
	
	$('#daySel').val(strDate);

	selectConfirm();
}

function regionClk(regionNum){
	
	if($('#regionSel').val() == ""){
		$('#region_' + regionNum).addClass('on');
	} else {
		$('#region_' + $('#regionSel').val()).removeClass('on');
		$('#region_' + regionNum).addClass('on');
	}
	$('#regionSel').val(regionNum);
	
	var params = "regionNum=" + regionNum;

	$.ajax({
		type:"POST",
		url:"regionDetailList",
		data: params,
		success:function(data){
			rdRepeat(data.rdLists);
		},
		error:function(e){
			alert(e.responseText);
		}
	});
	
}

function rdRepeat(lists){
	
	var rdToken = parseInt($('#rdToken').val());
	var preListsLength = parseInt($('#preListsLength').val());
	
	if(rdToken === 1){
		
		var cell = document.getElementById("regionDetailPos"); 
		
		while ( cell.hasChildNodes() ) { 
			cell.removeChild( cell.firstChild ); 
		}
		
		for(i=0;i<lists.length;i++){
			createRegionDetail(i, lists[i]);
		}
		
		$('#preListsLength').val(lists.length);
		
		return;
	}
	
	rdToken ++;
	$('#rdToken').val(rdToken);
	
	for(i=0;i<lists.length;i++){
		createRegionDetail(i, lists[i]);
	}
	$('#preListsLength').val(lists.length);

}

function createRegionDetail(i, list){
	
	var num = list.num;
	
	var node = document.createElement("button");
	
	var newText = document.createTextNode(list.name);
	
	node.appendChild(newText);
	
	node.type = "button";
	node.className = "seat-condition";
	node.id = "rd_" + num;
	node.onclick=function(){
		
		if($('#rdSel').val() == ""){
			$('#rd_' + num).addClass('on');
		} else {
			$('#rd_' + $('#rdSel').val()).removeClass('on');
			$('#rd_' + num).addClass('on');
		}
		$('#rdSel').val(num);
		
		thRepeat(list);
		
		selectConfirm();
	}
	
	document.getElementById("regionDetailPos").appendChild(node);
	
	
}

function removeRegionDetail(preListsLength){
	
	for(i=0;i<preListsLength;i++){
		document.getElementById("regionDetailPos").removeChild(document.getElementById("rd_" + i));
	}
}

function thRepeat(data){

	var thToken = parseInt($('#thToken').val());

	if(thToken === 1){
		
		var cell = document.getElementById("thChoice_1"); 
		
		while ( cell.hasChildNodes() ) { 
			cell.removeChild(cell.firstChild ); 
		}
		
		createTheaterChoice(data);
		
		return;
	}
	
	thToken ++;
	$('#thToken').val(thToken);
	
	createTheaterChoice(data);
	
}

function createTheaterChoice(data){

	var node = document.createElement("div");
	
	node.className = "wrap";
	node.onclick=function(){
		alert("1");
	}
	
	var html = "<p class=\"txt\">" + data.name;
		html += "<button type=\"button\" onclick=\"\"></button></p>";
		
	node.innerHTML = html;
	document.getElementById("thChoice_1").appendChild(node);

}




function selectConfirm(){

	var flag = false;

	var movieSel = $('#movieSel').val();
	if(movieSel != ""){
		params = "movieSel=" + movieSel;
		flag = true;
	}
	
	var rdSel = $('#rdSel').val();
	if(rdSel != ""){
		if(flag){
			params+= "&rdSel=" + rdSel;
		} else {
			params = "rdSel=" + rdSel;
			flag = true;
		}
	}
	
	var daySel = $('#daySel').val();
	if(daySel != ""){
		if(flag){
			params+= "&daySel=" + daySel;
		} else {
			params = "daySel=" + daySel;
			flag = true;
		}
	}
	
	var timeSel = $('#timeSel').val();
	if(timeSel != ""){
		if(flag){
			params+= "&timeSel=" + timeSel;
		} else {
			params = "timeSel=" + timeSel;
		}
	}
	
	movieTotalLists(params);
		
}

function sendIt(){
	
	var f = document.myForm;
	
	f.action = "/booking_2";
	
	f.submit();
	
}

function movieTotalLists(params){

	$.ajax({
		type:"POST",
		url:"movieTotalLists",
		data: params,
		success:function(data){
			var mtnlists = data.mtnlists;
		
			modHourschedule(mtnlists)
			movieTotalRepeat(mtnlists);
		},
		error:function(e){
			alert(e.responseText);
		}
	});

}

function modHourschedule(lists){

	var cell = document.getElementById("hour-scheduleView"); 
		
	while ( cell.hasChildNodes() ) { 
		cell.removeChild(cell.firstChild ); 
	}
	
	for(i=0;i<19;i++){
		createHourscheduleDummy();
	}
	
	for(i=0;i<10;i++){
			
		if(lists.length != 0){
			createHourschedule(lists[0].startHour, i);
		} else {
			createHourschedule(0, i);
		}
	}
	
	
}

function createHourscheduleDummy(){

	var node = document.createElement("button");
	
	var newText = document.createTextNode("00");
	
	node.appendChild(newText);
	
	node.type = "button";
	node.className = "hour";
	node.id = "hsId_d";
	node.onclick=function(){
		//alert("1");
	}
	
	document.getElementById("hour-scheduleView").appendChild(node);

}

function createHourschedule(hour, i){

	hour = parseInt(hour);

	hour = hour + i;
	
	var strHour = "";
	if (hour < 10) {
		strHour = "0" + String(hour);
	} else {
		strHour = String(hour);
	}

	var node = document.createElement("button");
	
	var newText = document.createTextNode(strHour);
	
	node.appendChild(newText);
	
	node.type = "button";
	node.className = "hour";
	node.id = "hsId_" + strHour;
	node.onclick=function(){
		//alert("1");
	}
	
	document.getElementById("hour-scheduleView").appendChild(node);

}


function movieTotalRepeat(lists){

	var mtToken = parseInt($('#mtToken').val());
	var preMtListsLength = parseInt($('#preMtListsLength').val());

	if(mtToken === 1){
		
		removeMovieTotalLists(preMtListsLength);
		
		for(i=0;i<lists.length;i++){
			createMovieTotalLists(i, lists[i]);
		}
		
		$('#preMtListsLength').val(lists.length);
		
		return;
	}
	
	mtToken ++;
	$('#mtToken').val(mtToken);
	
	for(i=0;i<lists.length;i++){
		createMovieTotalLists(i, lists[i]);
	}
	$('#preMtListsLength').val(lists.length);
	
}

function createMovieTotalLists(i, lists){
	
	var node = document.createElement("button");
	
	node.type = "button";
	node.className = "btn";
	node.id = "mtId" + i;
	node.onclick=function(){
		$('#mtnNum').val(lists.num);
		sendIt();	
	}
	
	var html = "<div class=\"legend\"></div>";
		html += "<span class=\"time\">";
		html +=	"<strong title=\"상영 시작\">" + lists.startHour + ":" + lists.startMinute + "</strong>";
		html +=	"<em title=\"상영 종료\">~" + lists.endHour + ":" + lists.endMinute + "</em> </span>";	
		html +=	"<span class=\"title\">";
		html +=	"<strong title=\"" + lists.movie + "\">";	
		html +=	lists.movie + "</strong>";	
		html +=	"<em>" + lists.playKind + "</em></span>";	
		html +=	"<div class=\"info\">";	
		html +=	"<span class=\"theater\" title=\"극장\">";
		html +=	lists.regionDetail + "<br>" + lists.theater + "</span>";	
		html +=	"<span class=\"seat\">";	
		html +=	"<strong class=\"now\" title=\"잔여 좌석\">" + lists.remainSeat + "</strong>";	
		html +=	"<span>/</span>";	
		html +=	"<em class=\"all\" title=\"전체 좌석\">" + lists.totalSeat + "</em>";	
		html +=	"</span></div>";	
			
			
	node.innerHTML = html;
	document.getElementById("movieTimePos").appendChild(node);
	
}

function removeMovieTotalLists(preListsLength){
	
	for(i=0;i<preListsLength;i++){
		document.getElementById("movieTimePos").removeChild(document.getElementById("mtId" + i));
	}
}