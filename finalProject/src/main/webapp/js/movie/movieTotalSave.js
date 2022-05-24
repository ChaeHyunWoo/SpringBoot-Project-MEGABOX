$( function() {
  
    $( "#datepicker" ).datepicker({
    });	
    
});

function sendIt(){
	
	var f = document.myForm;
	
	f.action = "/movieTotalSave_ok";
	f.submit();
}

function rdView(){

	var regionNum = $("#region_value option:selected").val();

	if (regionNum !== ""){
		
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

		$("#rd_value").attr("disabled", false);
		$("#btnTheater").attr("disabled", false);
	}

}

function rdRepeat(lists){
	
	var rdToken = parseInt($('#rdToken').val());
	var preListsLength = parseInt($('#preListsLength').val());
	
	if(rdToken === 1){
		
		removeRegionDetail(preListsLength);
		
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
	
	var node = document.createElement("option");
	
	var newText = document.createTextNode(list.name);
	
	node.appendChild(newText);
	
	node.id = "btn" + i;
	node.value = list.num
	
	document.getElementById("rd_value").appendChild(node);
	
	
}

function removeRegionDetail(preListsLength){
	
	for(i=0;i<preListsLength;i++){
		document.getElementById("rd_value").removeChild(document.getElementById("btn" + i));
	}
}

function theaterView(){

	var rdNum = $("#rd_value option:selected").val();

	if (rdNum !== ""){
		
		var params = "rdNum=" + rdNum;

		$.ajax({
			type:"POST",
			url:"theaterList",
			data: params,
			success:function(data){
				theaterRepeat(data.theaterLists);
			},
			error:function(e){
				alert(e.responseText);
			}
		});

		$("#theater_value").attr("disabled", false);
		
	}

}

function theaterRepeat(lists){
	
	var theaterToken = parseInt($('#theaterToken').val());
	var preTheaterListsLength = parseInt($('#preTheaterListsLength').val());
	
	if(theaterToken === 1){
		
		removeTheater(preTheaterListsLength);
		
		for(i=0;i<lists.length;i++){
			createTheater(i, lists[i]);
		}
		
		$('#preListsLength').val(lists.length);
		
		return;
	}
	
	theaterToken ++;
	$('#theaterToken').val(theaterToken);
	
	for(i=0;i<lists.length;i++){
		createTheater(i, lists[i]);
	}
	$('#preTheaterListsLength').val(lists.length);

}

function createTheater(i, list){
	
	var node = document.createElement("option");
	
	var newText = document.createTextNode(list.name);
	
	node.appendChild(newText);
	
	node.id = "theaterId" + i;
	node.value = list.num
	
	document.getElementById("theater_value").appendChild(node);
	
	
}

function removeTheater(preListsLength){
	
	for(i=0;i<preListsLength;i++){
		document.getElementById("theater_value").removeChild(document.getElementById("theaterId" + i));
	}
}