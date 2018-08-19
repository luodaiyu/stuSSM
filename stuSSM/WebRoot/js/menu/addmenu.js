/**
 * 
 */$(function(){
	function checkmenuName(){
		var fal=false;
		var menuName=$("#menuName").val();
		if(menuName==""){
			$("#menuName").text("菜单名称不能为空，且不能重复");
			$("#menuName").css('color','red');
			return fal;
		}
		$.ajax({
			type:'post',
			url:'doAddMenu.do',
			data:'menuName='+menuName,
			async:false,
			success:function(data){
				if(data=="false"){
					$("#menuName").text("OK");
					$("#menuName").css('color','green');
					fal=true;
				}else{
					$("#menuName").text("专业名称不能重复");
					$("#menuName").css('color','red');
					fal=false;
				}
			}
		});
		return fal;
	}
	

	
	$("#menuName").blur(function(){
		checkmenuName();
	});
	
	$("#btn").click(function(){
		if(checkmenuName()&&checkmenuName()){
			$(".tip").fadeIn(200);
		}
		$(".sure").click(function(){
				$.ajax({
					type:'post',
					url:'doAddMenu.do',
					data:{menuName:$("#menuName").val(),id:$("#id").val()},
					ssync:false,
					success:function(data){
						if(data == "true"){
							$("#text").text("添加成功!");
							$(".sure").unbind('click').click(function(){
								location.href='tomenu.do';
							});
						}else{
							$("#text").text("添加失败!");
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