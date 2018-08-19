$(function(){
	function checktid(){
		var fal=false;
		var tid=$("#tid").val();
		if(tid==""){
			$("#ttid").text("教师编号不能为空");
			$("#ttid").css('color','red');
			return fal;
		}
		$.ajax({
			type:'post',
			url:'checkTid.do',
			data:'tid='+tid,
			async:false,
			success:function(data){
				if(data=="true"){
					$("#ttid").text("OK");
					$("#ttid").css('color','green');
					fal=true;
				}else{
					$("#ttid").text("不存在该教师");
					$("#ttid").css('color','red');
					fal=false;
				}
			}
		});
		return fal;
	}
	function checksid(){
		var fal=false;
		var sid=$("#sid").val();
		if(sid==""){
			$("#ssid").text("学生编号不能为空");
			$("#ssid").css('color','red');
			return fal;
		}
		$.ajax({
			type:'post',
			url:'checkSid.do',
			data:'sid='+sid,
			async:false,
			success:function(data){
				if(data=="true"){
					$("#ssid").text("OK");
					$("#ssid").css('color','green');
					fal=true;
				}else{
					$("#ssid").text("不存在该学生");
					$("#ssid").css('color','red');
					fal=false;
				}
			}
		});
		return fal;
	}
	function checkGrade(){
		var fal=false;
		var grade=$("#chengji").val();
		if(grade==""||isNaN(grade)){
			$("#sgrade").text("成绩不能为空，且不能是字符");
			$("#sgrade").css('color','red');
			fal=false;
		}else{
			$("#sgrade").text("OK");
			$("#sgrade").css('color','green');
			fal=true;
		}
		return fal;
	}
	$("#chengji").blur(function(){
		checkGrade();
	});
	$("#tid").blur(function(){
		 checktid();
	});
	$("#sid").blur(function(){
		 checksid();
	});
	$("#btn").click(function(){
		
		if(checkGrade()&&checktid()&&checksid()){
			$.ajax({
				type:'post',
				url:'checkAllid.do',
				data:{sid:$("#sid").val(),tid:$("#tid").val()},
				async:false,
				success:function(data){
					if(data=="false"){
						$("#sgrade").text("OK");
						$("#sgrade").css('color','green');
						$("#form_id").submit();
					}else{
						$("#sgrade").text("该学生本科目成绩已存在，请重新输入！");
						$("#sgrade").css('color','red');
					}
				}
			});
			
		}
	});
	
});