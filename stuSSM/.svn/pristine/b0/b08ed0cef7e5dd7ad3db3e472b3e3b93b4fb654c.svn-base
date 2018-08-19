<%@ page language="java" import="java.util.*" pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>学生管理系统</title>
	<link href="css/style.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="js/jquery.js"></script>
 	<script type="text/javascript" src="js/grade/addGrade.js"></script>
	</head>
  <body>
    <div class="place">
	    <span>位置：</span>
	    <ul class="placeul">
	    <li><a target="_parent" href="index.jsp">首页</a></li>
	    <li><a href="#">添加成绩</a></li>
	    </ul>
    </div>
    
    <form action="doAddGrade.do" method="post" id="form_id">
	    <div class="formbody">
		    <div class="formtitle"><span>基本信息</span></div>
			<ul class="forminfo">
			    <li><label>教师编号：</label><input name="tid" id="tid" type="text" class="dfinput"/><i id="ttid">请输入教师编号</i></li>
			  	<li><label>学生编号：</label><input name="sid" id="sid" type="text" class="dfinput"/><i id="ssid">请输入学生编号</i></li>
			   	<li><label>学生成绩：</label><input name="chengji" id="chengji" type="text" class="dfinput"/><i id="sgrade">请输入学生成绩</i></li>
			   	<li><label>&nbsp;</label><input type="button" value="确认保存" class="btn" id="btn"/></li>
			</ul>
	    </div>
	</form>
	
	
	<!-- 这是提示框 -->  
    <div class="tip">
    	<div class="tiptop"><span>提示信息</span><a></a></div>
        
      <div class="tipinfo">
        <span><img src="images/ticon.png" /></span>
        <div class="tipright">
        <p id="text">是否确认添加该专业 ？</p>
        <cite>如果是请点击确定按钮 ，否则请点取消。</cite>
        </div>
        </div>
        
        <div class="tipbtn">
        <input name="" type="button"  class="sure" value="确定" />&nbsp;
        <input name="" type="button"  class="cancel" value="取消" />
        </div>
    
    </div>
    
  </body>
  
	
</html>
