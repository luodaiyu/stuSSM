<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="<%=basePath %>css/style.css" rel="stylesheet" type="text/css" />
<script src="<%=basePath%>js/jquery.js"></script>
</head>

<body>

	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a target="_parent" href="index.jsp">首页</a></li>
    <li><a href="#">添加教师</a></li>
    </ul>
    </div>
    
    <div class="formbody">
    
    <div class="formtitle"><span>添加教师</span></div>
    
	    <ul class="forminfo">
	    <li><label>教师名称:</label><input id="tName" type="text" class="dfinput" /><i id="namey">*请填写用户名</i></li>
	    <li><label>课程名称:</label><input id="className" type="text" class="dfinput" /><i id="cname">*请输入课程名称</i></li>
	    <li><label>所属分院:</label>
	    	<select id="xid" style="width: 200px;height:30px;border:1px solid gray;" >
		    	<option value="0">--请选择--</option>
		    	<c:forEach items="${XY}" var="xy">
		    		<option value="${xy.xid}">${xy.xName}</option>
		    	</c:forEach>
		    </select>
		    <i id="xname">*</i>
	    </li>
	    <li><label>&nbsp;</label><input type="button" class="btn" value="确认保存"/></li>
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
		function checktName(){
			var fal=false;
			var tName=$("#tName").val();
			if(tName==""){
				$("#namey").text("教师姓名不能为空");
				$("#namey").css('color','red');
				return fal;
			}else{
				$("#namey").text("ok");
				$("#namey").css('color','green');
				fal = true;						
			}			
			return fal;
		}
		
		function checkclassName(){
			var fal=false;
			var className=$("#className").val();
			if(className==""){
				$("#cname").text("课程名称不能为空");
				$("#cname").css('color','red');
				return fal;
			}else{
				$("#cname").text("ok");
				$("#cname").css('color','green');
				fal = true;						
			}			
			return fal;
		}
		
		function checkxid(){
			var fal=false;
			var xid=$("#xid").val();
			if(xid=="0"){
				$("#xname").text("请选择学院");
				$("#xname").css('color','red');
				fal=false;
			}else{
				$("#xname").text("ok");
				$("#xname").css('color','green');
				fal=true;
			}
			return fal;
		}
		
		$("#tName").blur(function(){
			checktName();
		});
		$("#className").blur(function(){
			checkclassName();
		});
		$("#xid").blur(function(){
			checkxid();
		});
		
		
		$(".btn").click(function(){
			if(checktName()&&checkxid()&&checkclassName()){
				$.ajax({
					url:'doinsertTeacher.do',
					data:{tName:$("#tName").val(),className:$("#className").val(),xid:$("#xid").val()},
					type:'post',
					success:function(data){
						if(data == "true"){
							$("#message").text("添加成功!");
							$(".tip").fadeIn(200);
							$(".sure").unbind('click').click(function(){
								location.href='selectTeacher.do';
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

