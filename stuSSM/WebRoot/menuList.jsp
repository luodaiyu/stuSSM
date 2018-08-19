<%@ page language="java" import="java.util.*" pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="p" uri="http://page.com" %>
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
<script src="<%=basePath %>js/menu/delmenus.js"></script>

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
    <li><a href="#">系统管理</a></li>
    <li><a href="#">菜单管理</a></li>
    </ul>
    </div>
    
    <div class="rightinfo">
    
    <div class="tools">
    
    	<ul class="toolbar">
        <li class="click" ><span><img src="images/t01.png" /></span><a href="toAddMenu.do">添加菜单</a></li>
        <li id="del"><span><img src="images/t03.png" /></span>删除</li>
        </ul>
        
	</div>
    
    
    <table class="tablelist">
    	<thead>
    	 
    	<tr>
        <th><input name="" type="checkbox" value="0" checked="checked"/></th>
        <th>编号<i class="sort"><img src="images/px.gif" /></i></th>
        <th>菜单名称</th>
        <th>URL地址</th>
        <th>操作</th>
        </tr>
        </thead>
        <tbody>
        
        <c:forEach items="${LIST}" var="menu">
	        <tr>
	        <td><input type="checkbox" value="${menu.id}" /></td>
	        <td>${menu.id}</td>
	        <td>${menu.menuName}</td>
	        <td>${menu.url}</td>
	        <td>
	        <a href="toUpdate.do?id=${menu.id}" class="tablelink">修改</a> 
	        <a href="delmenu.do?id=${menu.id}" class="tablelink"> 删除</a>
	        </td>
	        </tr> 
        </c:forEach>

        
   
        </tbody>
    </table>
    
  <div class="pagin">
     <p:page url="tomenu.do" page="${PAGE}" paramter="currpage"/>
    </div>
    
    
    <div class="tip">
    	<div class="tiptop"><span>提示信息</span><a></a></div>
        
      <div class="tipinfo">
        <span><img src="images/ticon.png" /></span>
        <div class="tipright">
        <p>是否确认删除 ？</p>
        <cite>如果是请点击确定按钮 ，否则请点取消。</cite>
        </div>
        </div>
        
        <div class="tipbtn">
        <input type="button"  class="sure" value="确定" />&nbsp;
        <input type="button"  class="cancel" value="取消" />
        </div>
    
    </div>
    
    
    
    
    </div>
    
    <script type="text/javascript">
	$('.tablelist tbody tr:odd').addClass('odd');
	</script>

</body>

</html>
