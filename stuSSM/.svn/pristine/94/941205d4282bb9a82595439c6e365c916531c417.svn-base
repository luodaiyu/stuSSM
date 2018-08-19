<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script src="<%=basePath%>js/jquery.js"></script>
</head>

<body>

	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><atarget="_parent" href="index.jsp">首页</a></li>
    <li><a href="#">修改学院信息</a></li>
    </ul>
    </div>
    
    <div class="formbody">
    
    <div class="formtitle"><span>修改菜单信息</span></div>
    
    <ul class="forminfo">
    
    <li><input id="xid" name="xid" type="hidden" class="dfinput" value="${XUEYUAN.xid}"/></li>
    <li><label>学院名称：</label><input id="xName" name="xName" type="text" class="dfinput" value="${XUEYUAN.xName}"/><i id="xName">学院名称不能为空</i></li>
    
    
    <li><label></label><input type="button" class="btn" value="确认提交"/></li>
    </ul>
   
    
    </div>
    
<div class="tip">
    	<div class="tiptop"><span>提示信息</span><a></a></div>
        
      <div class="tipinfo">
        <span><img src="images/ticon.png" /></span>
        <div class="tipright">
        <p id="message">是否确认添加这个用户 ？</p>
        <cite id="txt">如果是请点击确定按钮 ，否则请点取消。</cite>
        </div>
        </div>
        
        <div class="tipbtn">
        <input  type="button"  class="sure" value="确定" />&nbsp;
        <input  type="button"  class="cancel" value="取消" />
        </div>
    
    </div>
   

<script>
	$(function(){
		function checkxName(){
			var fal=false;
			var xName=$("#xName").val();
			if(xName==""){
				$("#xName").text("菜单名不能为空");
				$("#xName").css('color','red');
				return fal;
			}else{
				$("#xName").text("ok");
				$("#xName").css('color','green');
				fal = true;						
			}			
			return fal;
		}

		$("#xName").blur(function(){
			alert(checkxName());
		});
		
		$(".btn").click(function(){
			//执行确认按钮的操作
			if(checkxName()){
			$.ajax({
				url:'doupdateXueYuan.do',
				data:{xName:$("#xName").val(),xid:$("#xid").val()},
				type:'post',
				success:function(data){
					if(data == "true"){
						$("#message").text("修改成功!");
						$(".tip").fadeIn(200);
						$(".sure").unbind('click').click(function(){
							location.href='xueyuan.do';
						});
					}else{
						$("#message").text("修改失败!");
						$(".tip").fadeIn(200);
						$(".sure").unbind('click').click(function(){
							location.href='toupdateXueYuan.do';
						});
					}
				}
			});
			}
		});
		
	
		//注册关闭按钮的事件 
		$(".cancel").click(function(){
			$(".tip").fadeOut(100);
		});
		//X按钮事件
		  $(".tiptop a").click(function(){
			  $(".tip").fadeOut(200);
			  
		  });
		
	});
</script>

</body>

</html>


  
  

