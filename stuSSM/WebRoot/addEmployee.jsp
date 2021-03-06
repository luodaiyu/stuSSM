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
    <li><a href="#">添加用户</a></li>
    </ul>
    </div>
    
    <div class="formbody">
    
    <div class="formtitle"><span>添加用户</span></div>
    
	    <ul class="forminfo">
	    <li><label>用户名称:</label><input id="userName" type="text" class="dfinput" /><i id="namey">*请填写用户名</i></li>
	    <li><label>用户密码:</label><input id="passWord" type="password" class="dfinput" /><i id="passy">*密码在6到18位之间</i></li>
	    <li><label>用户角色:</label>
	    	<select id="rid" style="width: 200px;height:30px;border:1px solid gray;" >
		    	<option value="0">--请选择--</option>
		    	<c:forEach items="${ROLE}" var="r">
		    		<option value="${r.rid}">${r.rName}</option>
		    	</c:forEach>
		    </select>
		    <i id="rname">*</i>
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
		function checkuserName(){
			var fal=false;
			var userName=$("#userName").val();
			if(userName==""){
				$("#namey").text("用户名不能为空");
				$("#namey").css('color','red');
				return fal;
			}else{
				$("#namey").text("ok");
				$("#namey").css('color','green');
				fal = true;						
			}			
			return fal;
		}
		
		function checkpassWord(){
			var fal=false;
			var passWord=$("#passWord").val();
			if(passWord == "" || String(passWord).length >= 18 || String(passWord).length < 6){
				$("#passy").text("您所填写的密码格式不正确，请重新输入！");
				$("#passy").css('color','red');
				return fal;
			}else{
				$("#passy").text("ok");
				$("#passy").css('color','green');
				fal = true;						
			}			
			return fal;
		}
		
		function checkrid(){
			var fal=false;
			var rid=$("#rid").val();
			if(rid=="0"){
				$("#rname").text("请选择角色");
				$("#rname").css('color','red');
				fal=false;
			}else{
				$("#rname").text("OK");
				$("#rname").css('color','green');
				fal=true;
			}
			return fal;
		}
		
		$("#userName").blur(function(){
			checkuserName();
		});
		
		$("#passWord").blur(function(){
			checkpassWord();
		});
		$("#rid").blur(function(){
			checkrid();
		});
		
		
		$(".btn").click(function(){
			if(checkuserName()&&checkrid()&&checkpassWord()){
				$.ajax({
					url:'doinsertEmployee.do',
					data:{userName:$("#userName").val(),passWord:$("#passWord").val(),rid:$("#rid").val()},
					type:'post',
					success:function(data){
						if(data == "true"){
							$("#message").text("添加成功!");
							$(".tip").fadeIn(200);
							$(".sure").unbind('click').click(function(){
								location.href='selectEmployee.do';
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

