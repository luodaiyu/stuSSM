function checkedName(){
	var str=false;

		if($("#bname").val()==""){
			$("#txt").text("班级名不能为空！！");
			$("#txt").css('color', 'red');
			str=false;
			return;
		}
		$.ajax({
			url:'checkedName.do',
			type:'post',
			async:false,
			data:'bname='+$("#bname").val(),
			success:function(data){
				if(data=="true"){
					$("#txt").text("OK");
					$("#txt").css('color', 'green');
					str=true;
				}else{
					$("#txt").text("班级名不能重复！！");
					$("#txt").css('color', 'red');
					str=false;
				}
			}
		
		
	});
	
	return str;
}
function checkedNop(){
	var str=false;
	
		if($("#bnop").val()==""){
			$("#txt1").text("人数不能为空！！");
			$("#txt1").css('color', 'red');
			str=false;
		}
	//判断是否为正整数
	var re = /^[0-9]*[1-9][0-9]*$/ ; 
	if(!re.test($("#bnop").val())){
		$("#txt1").text("请输入正整数！");
		$("#txt1").css('color', 'red');
		str=false;
	}else{
		if($("#bnop").val()>40){
		$("#txt1").text("人数不能超过班级最大容量！！");
		$("#txt1").css('color', 'red');
		  str=false;
	     }else{
	        $("#txt1").text("OK");
			$("#txt1").css('color', 'green');
	    	 str=true;
	     }
	 }
	
	return str;
}
function checkedxueyuan(){
	var str=false;
	
		if($("#xueyuan").val()==0){
			$("#txt2").text("请选择院系！");
			$("#txt2").css('color', 'red');
			str=false;
		}else{
			$("#txt2").text("OK");
			$("#txt2").css('color', 'green');
			str=true;
		}
	
	return str;
}
$(function(){
	$("#bname").blur(function(){
	checkedName(); 
	});
	$("#bnop").blur(function(){
	checkedNop(); 
	});
	$("#xueyuan").blur(function(){
	checkedxueyuan();
	});
	$("#butn").click(function(){
		if(checkedName() && checkedNop() && checkedxueyuan()){
			$("#form_id").submit();	
		}
	});
});