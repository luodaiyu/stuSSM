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
    <li><a href="#">修改用户信息</a></li>
    </ul>
    </div>
    
    <div class="formbody">
    
    <div class="formtitle"><span>修改用户信息</span></div>
    
	    <ul class="forminfo">
	    <li><label></label><input id="id" type="hidden" class="dfinput" value="${Employee.id}"/><i></i></li>
	    <li><label>用户名称:</label><input id="uname" type="text" class="dfinput" value="${Employee.userName}"/><i>用户名6-12位</i></li>
	    <li><label>用户密码:</label><input id="upass" type="password" class="dfinput" value="${Employee.passWord}"/><i></i></li>
	    <li><label>用户角色:</label>
	    	<select id="rid" style="width: 200px;height:30px;border:1px solid gray;" >
		    	<option value="0">--请选择--</option>
		    	<c:forEach items="${Role}" var="ro">
		    		<option value="${ro.rid}">${ro.rName}</option>
		    	</c:forEach>
		    </select>
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
		$(".btn").click(function(){
			//执行确认按钮的操作
			$.ajax({
				url:'doupdateEmployee.do',
				data:{userName:$("#uname").val(),passWord:$("#upass").val(),rid:$("#rid").val(),id:$("#id").val()},
				type:'post',
				success:function(data){
					if(data == "true"){
						$("#message").text("修改成功!");
						$(".tip").fadeIn(200);
						$(".sure").unbind('click').click(function(){
							location.href='selectEmployee.do';
						});
					}else{
						$("#message").text("修改失败!");
						$(".tip").fadeIn(200);
						$(".sure").unbind('click').click(function(){
							location.href='toupdateEmployee.do';
						});
					}
				}
			});
			
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

