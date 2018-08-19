<%@ page language="java" import="java.util.*" pageEncoding="utf-8" isELIgnored="false"%>
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
<script type="text/javascript" src="<%=basePath %>js/jquery.js"></script>
<script src="js/jquery.js"></script>
<script src="<%=basePath %>js/employee.js"></script>
<script type="text/javascript">
$(document).ready(function(){
 

  $(".cancel").click(function(){
  $(".tip").fadeOut(100);
});

});
</script>


</head>


<body>

	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a target="_parent" href="index.jsp">首页</a></li>
    <li><a href="#">教师管理</a></li>
    <li><a href="#">教师信息查询</a></li>
    </ul>
    </div>
    
    <div class="rightinfo">
    
    <div class="tools">
    	<ul class="toolbar">
        <li class="click"><span><img src="images/t01.png" /></span><a href="toinsertTeacher.do">添加</a></li>
        <li id="delsBtn"><span><img src="images/t03.png" /></span>删除</li>
        </ul>
    </div>
	 <form action="selectTeacher.do" method="post">
     	请输入：<input type="text" name="tName"  placeholder="教师姓名" style="border:1px solid gray;"/> </br>
     	请输入：<input type="text" name="className"  placeholder="课程名称" style="border:1px solid gray;"/> 
     	<input type="submit" value="提交" />
     </form>
    
    <table class="tablelist">
    	<thead>
    	<tr>
        <td><input name="first_hang" type="checkbox" value="0"/></td>
        <td>教师编号<i class="sort"><img src="images/px.gif" /></i></td>
        <td>教师名称</td>
        <td>课程名称</td>
        <td>所属分院</td>
        <td>操作</td>
        </tr>
        </thead>
        <tbody>
        
        <c:forEach items="${TEACHER}" var="t">
	        <tr>
	        <td><input type="checkbox" value="${t.tid}"/></td>
	        <td>${t.tid}</td>
	        <td>${t.tName}</td>
	        <td>${t.className}</td>
	        <td>${t.xueyuan.xName}</td>
	        <td> <a href="toupdateTeacher.do?tid=${t.tid}" class="tablelink">修改</a>   <a href="dodeleteTeacherOne.do?tid=${t.tid}" class="tablelink"> 删除</a></td>
	        </tr> 
        </c:forEach>
        </tbody>
    </table>

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
    <script type="text/javascript">
	$('.tablelist tbody tr:odd').addClass('odd');
	</script>

</body>

</html>
