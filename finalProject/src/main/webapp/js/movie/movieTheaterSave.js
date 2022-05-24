
function sendIt(){
	
	var f = document.myForm;
	
	f.action = "/movieTheaterSave_ok";
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

