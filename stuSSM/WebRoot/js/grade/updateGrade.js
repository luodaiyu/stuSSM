$(function(){
	function checkGrade(){
		var fal=false;
		var grade=$("#chengji1").val();
		if(grade==""||isNaN(grade)){
			fal=false;
		}else{
			fal=true;
		}
		return fal;
	}
	$("#chengji1").blur(function(){
		checkGrade();
	});
	
		$("#sbutton").click(function(){
			if(checkGrade()){
				$("#form_id").submit();
			}else{
				$(".tip").fadeIn(200);
				$("#text").text("请确保数据的正确性");
				  $(".tiptop a").click(function(){
				  $(".tip").fadeOut(200);
					});

				  $(".sure").click(function(){
				  $(".tip").fadeOut(100);
					});

				  $(".cancel").click(function(){
				  $(".tip").fadeOut(100);
					});
			}
		});
});