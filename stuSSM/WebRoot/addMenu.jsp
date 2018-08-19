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
    <li><a target="_parent" href="index.jsp">首页</a></li>
    <li><a href="#">添加</a></li>
    </ul>
    </div>
    
    <div class="formbody">
    
    <div class="formtitle"><span>添加菜单</span></div>
    
    <ul class="forminfo">
    <li><label>菜单名称：</label><input id="menuName" name="menuName" type="text" class="dfinput" /><i id="menuName">菜单名称不能为空</i></li>
    <li><label>url地址：</label><input id="url" name="url" type="text" class="dfinput" /><i id="url">地址在1-20个字符中间</i></li>
    <li><label>pid：</label><input id="pid" name="pid" type="text" class="dfinput" /><i id="pid"></i></li>
    
    <li><label>&nbsp;</label><input type="button" class="btn" value="确认提交"/></li>
    </ul>
  
    
    </div>
	<div class="tip">
    	<div class="tiptop"><span>提示信息</span><a></a></div>
        
      <div class="tipinfo">
        <span><img src="images/ticon.png" /></span>
        <div class="tipright">
        <p id="message">是否确认添加这个菜单 ？</p>
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
		function checkmenuName(){
			var fal=false;
			var menuName=$("#menuName").val();
			if(menuName=="" || menuName>=10){
				$("#menuName").text("菜单名不能为空");
				$("#menuName").css('color','red');
				return fal;
			}else{
				$("#menuName").text("ok");
				$("#menuName").css('color','green');
				fal = true;						
			}			
			return fal;
		}
		
		function checkurl(){
			var fal=false;
			var url=$("#url").val();
			if(url == "" || String(url).length >= 20){
				$("#url").text("您所填写的密码格式不正确，请重新输入！");
				$("#url").css('color','red');
				return fal;
			}else{
				$("#url").text("ok");
				$("#url").css('color','green');
				fal = true;						
			}			
			return fal;
		}
		
		
		
		$("#menuName").blur(function(){
			alert(checkmenuName());
		});
		
		$("#url").blur(function(){
			checkurl();
		});
		
		
		$(".btn").click(function(){
			if(checkmenuName()&&checkurl()){
				$.ajax({
					url:'doAddMenu.do',
					data:{menuName:$("#menuName").val(),url:$("#url").val()},
					type:'post',
					success:function(data){
						if(data == "true"){
							$("#message").text("添加成功!");
							$(".tip").fadeIn(200);
							$(".sure").unbind('click').click(function(){
								location.href='tomenu.do';
							});
						}else{
							$("#message").text("添加失败!");
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
