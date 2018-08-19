<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>
<script src="<%=basePath %>js/xueyuan/delxueyuans.js"></script>

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
    <li><a href="#">学院管理</a></li>
    <li><a href="#">学院信息查询</a></li>
    </ul>
    </div>
    
    <div class="rightinfo">
    
    <div class="tools">
    
    	<ul class="toolbar">
        <li class="click"><span><img src="images/t01.png" /></span><a href="toaddxueyuan.do">添加</a></li>
        <li id="del"><span><img src="images/t03.png" /></span>删除</li>
        </ul>
        
       
    </div>
    
    
    <table class="tablelist">
    	<thead>
    	<tr>
        <td><input name="" type="checkbox" value="0" checked="checked"/></td>
        <td>编号<i class="sort"><img src="images/px.gif" /></i></td>
        <td>名称</td>
        <td>操作</td>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${XUEYUANLIST}" var="l">
        
        <tr>
        <td><input name="" type="checkbox" value="${l.xid}" /></td>
        <td>${l.xid}</td>
        <td>${l.xName}</td>
        <td>
        <a href="getXueYuan.do?xid=${l.xid}">查看</a>   
        <a href="delXueYuan.do?xid=${l.xid}">删除</a>
        <a href="toupdateXueYuan.do?xid=${l.xid}">修改</a>
        </td>
        
        </tr> 
        </c:forEach>
        </tbody>
    </table>
    
   
  
    
    
    <div class="tip">
    	<div class="tiptop"><span>提示信息</span><a></a></div>
        
      <div class="tipinfo">
        <span><img src="images/ticon.png" /></span>
        <div class="tipright">
        <p>是否确认删除学院信息？</p>
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
