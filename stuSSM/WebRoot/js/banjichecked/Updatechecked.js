function checkedName(){
	var str=false;
		$.ajax({
			url:'checkedName.do',
			type:'post',
			async:false,
			data:{bname:+$("#bname").val(),bid:$("#bid").val()},
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
	//�ж��Ƿ�Ϊ������
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
$(function(){
	$("#bname").blur(function(){
	checkedName(); 
	});
	$("#bnop").blur(function(){
	checkedNop(); 
	});
	$("#butn").click(function(){
		if(checkedName() && checkedNop() ){
			$("#form_id").submit();	
		}
	});
});