function checkedName(){
	var str=false;
		if($("#sName").val()==""){
			$("#txt").text("姓名不能为空！！");
			$("#txt").css('color', 'red');
			str=false;
		}else{
			$("#txt").text("");
			str=true;
		}
	return str;
}
function chechedXueyuan(){
	var str=false;
	if($("#xueyuan").val()==0){
		$("#txt2").text("学院不能为空！！");
		$("#txt2").css('color', 'red');
		str=false;
		return;
	}else{
		$("#txt2").text("");
		str=true;
	}
return str;
}
function chechedZhuanye(){
	var str=false;
	if($("#zhuanye").val()==0){
		$("#txt3").text("专业不能为空！！");
		$("#txt3").css('color', 'red');
		str=false;
		return;
	}else{
		$("#txt3").text("");
		str=true;
	}
return str;
}
function chechedBanji(){
	var str=false;
	if($("#banji").val()==0){
		$("#txt4").text("班级不能为空！！");
		$("#txt4").css('color', 'red');
		str=false;
		return;
	}
	$.ajax({
		url:'checkedNumber.do',
		type:'post',
		async:false,
		data:'bid='+$("#banji").val(),
		success:function(data){
			if(data=="true"){
				$("#txt4").text("OK");
				$("#txt4").css('color', 'green');
				str=true;
			}else{
				$("#txt4").text("班级人数过多！！");
				$("#txt4").css('color', 'red');
				str=false;
			}
		}
	});
return str;
}
$(function(){
	$("#sName").blur(function(){
		checkedName(); 
		});
	$("#xueyuan").blur(function(){
		chechedXueyuan(); 
		});
	$("#zhuanye").blur(function(){
		chechedZhuanye();
		});
	$("#banji").blur(function(){
		chechedBanji(); 
		});
	$("#butn").click(function(){
		if(checkedName() && chechedXueyuan() && chechedZhuanye() && chechedBanji()){
			$("#form_id").submit();	
		}
	});
});