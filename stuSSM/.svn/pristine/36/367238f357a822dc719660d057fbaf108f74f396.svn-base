$(function(){
	function checkzName(){
		var fal=false;
		var zName=$("#zName").val();
		if(zName==""){
			$("#zname").text("专业名称不能为空，且不能重复");
			$("#zname").css('color','red');
			return fal;
		}
		$.ajax({
			type:'post',
			url:'checkzName2.do',
			data:{zName:zName,zid:$("#zzid").val()},
			async:false,
			success:function(data){
				if(data=="false"){
					$("#zname").text("OK");
					$("#zname").css('color','green');
					fal=true;
				}else{
					$("#zname").text("专业名称不能重复");
					$("#zname").css('color','red');
					fal=false;
				}
			}
		});
		return fal;
	}
	
	function checkxName(){
		var fal=false;
		var xName=$("#xName").val();
		if(xName=="0"){
			$("#xname").text("请选择学院");
			$("#xname").css('color','red');
			fal=false;
		}else{
			$("#xname").text("OK");
			$("#xname").css('color','green');
			fal=true;
		}
		return fal;
	}
	
	$("#zName").blur(function(){
		checkzName();
	});
	$("#xName").blur(function(){
		checkxName();
	});
	$("#btn").click(function(){
		if(checkzName()&&checkxName()){
			$(".tip").fadeIn(200);
		}
		$(".sure").click(function(){
				$.ajax({
					type:'post',
					url:'doUpdateZhuanYe.do',
					data:{zName:$("#zName").val(),zid:$("#zzid").val(),xid:$("#xName").val()},
					ssync:false,
					success:function(data){
						if(data == "true"){
							$("#text").text("修改成功!");
							$(".sure").unbind('click').click(function(){
								location.href='toZhuanYeList.do';
							});
						}else{
							$("#text").text("修改失败!");
							$(".sure").unbind('click').click(function(){
								location.href='toUpdateZhuanYe.do?zid=$("#zzid").val()';
							});
						}
					}
				});
			
		});
	});
		$(".tiptop a").click(function(){
			  $(".tip").fadeOut(200);
		 });

		 $(".cancel").click(function(){
	 		 $(".tip").fadeOut(100);
	  	 });	 

	 
});