$(function(){
	$("#id1").change(function(){
	$.ajax({
		type:'post',
		url:'checkZhuanYeByXY.do',
		data:'xid='+$("#id1").val(),
		async:false,
		success:function(data){
			data=$.parseJSON(data);
			$("#id2").empty();
			$("#id2").html("<option value='0'>--请选择--</option>");
			for(var i=0;data.length;i++){
				$("#id2").append("<option value='"+data[i].zid+"'>"+data[i].zName+"</option>");
			}
		}
		});
	});
	
	$("#id2").change(function(){
		$.ajax({
			type:'post',
			url:'checkBanjiByZY.do',
			data:'xid='+$("#id1").val(),
			async:false,
			success:function(data){
				data=$.parseJSON(data);
				$("#id3").empty();
				$("#id3").html("<option value='0'>--请选择--</option>");
				for(var i=0;data.length;i++){
					$("#id3").append("<option value='"+data[i].bid+"'>"+data[i].bname+"</option>");
				}
			}
			});
		});
});