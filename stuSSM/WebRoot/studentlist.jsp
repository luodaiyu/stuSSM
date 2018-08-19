<%@ page language="java" import="java.util.*" pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="p" uri="http://page.com" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/studentcheched/quanxuandelete.js"></script>
<script type="text/javascript">
$(document).ready(function(){
  $(".click").click(function(){
  $(".tip").fadeIn(200);
  });
  
  $(".tiptop a").click(function(){
  $(".tip").fadeOut(200);
});

  $(".sure").click(function(){
  $(".tip").fadeOut(100);
});

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
    <li><a href="#">数据表</a></li>
    <li><a href="#">基本内容</a></li>
    </ul>
    </div>
    
    <div class="rightinfo">
    
    <div class="tools">
    
    	<ul class="toolbar">
    	
        <li id="sc"><span><img src="images/t03.png" /></span>删除</li>
        </ul>
        
        
        <ul class="toolbar1">
        <li><span><img src="images/t05.png" /></span>设置</li>
        </ul>
    
    </div>
    
    
    <table class="tablelist">
    	<thead>
    	<tr>
        <th><input name="" type="checkbox" value="" checked="checked"/></th>
       
        <th>姓名</th>
        <th>性别</th>
        <th>所属班级</th>
        <th>所属专业</th>
        <th>所属学院</th>
        <th>操作</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${StudentList}" var="sl">
        <tr>
        <td><input name="" type="checkbox" value="${sl.sid}" /></td>
        <td>${sl.sName}</td>
        <td>${sl.sex}</td>
        <td>${sl.banji.getBname()}</td>
        <td>${sl.zhuanye.getzName()}</td>
        <td>${sl.xueyuan.getxName()}</td>
        <td>
            <a href="toStudentView.do?id=${sl.sid}" class="tablelink">查看</a> 
            <a href="doStudentDeleteBYid.do?id=${sl.sid}" class="tablelink"> 删除</a>
            <a href="toStudentUpdata.do?id=${sl.sid}" class="tablelink"> 修改</a>
        </td>
        </tr> 
        </c:forEach>   
        </tbody>
    </table>
    <div class="pagin">
     
       <p:page url="toStudentList.do" page="${PAGE}" paramter="currpage"/>
       
    </div>    
   
    
    <div class="tip">
    	<div class="tiptop"><span>提示信息</span><a></a></div>
        
      <div class="tipinfo">
        <span><img src="images/ticon.png" /></span>
        <div class="tipright">
        <p>是否确认对信息的修改 ？</p>
        <cite>如果是请点击确定按钮 ，否则请点取消。</cite>
        </div>
        </div>
        
        <div class="tipbtn">
        <input name="" type="button"  class="sure" value="确定" />&nbsp;
        <input name="" type="button"  class="cancel" value="取消" />
        </div>
    
    </div>
    
    
    
    
    </div>
    
    <script type="text/javascript">
	$('.tablelist tbody tr:odd').addClass('odd');
	</script>

</body>

</html>