<%@ page language="java" import="java.util.*" pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>学生管理系统</title>
	<link href="css/style.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="js/jquery.js"></script>
	</head>
  <body>
    <div class="place">
	    <span>位置：</span>
	    <ul class="placeul">
	    <li><a href="#">首页</a></li>
	    <li><a href="#">修改成绩</a></li>
	    </ul>
    </div>
    
    
	    <div class="formbody">
		    <div class="formtitle"><span>基本信息</span></div>
			<ul class="forminfo">
				
			    <li><label>学生编号：</label><input name="sid" id="sid" type="text" class="dfinput" value="${STUDENT.sid}"/></li>
			  	<li><label>学生姓名：</label><input name=sName id="sName" type="text" class="dfinput" value="${STUDENT.sName}"/></li>
			  	<li><label>各科目成绩</label>
		  		<table border="1px">
		  			<tr>
		  				<td><input type="text" class="dfinput" value="授课老师编号" style="width:auto;" readonly="readonly"/></td>
			  			<td><input type="text" class="dfinput" value="课程名称" style="width:auto;" readonly="readonly"/></td>
			  			<td><input type="text" class="dfinput" value="成绩" style="width:auto;" readonly="readonly"/></td>
			  		</tr>
		  			<c:forEach items="${GRADE_LIST}" var="item">
		  				<tr>
			  				<td><input type="text" name="tid" id="tid" value="${item.teacher.tid}" style="width:auto;" class="dfinput"/></td>
			  				<td><input type="text" name="className" id="className" value="${item.teacher.className}" style="width:auto;" class="dfinput" readonly="readonly"/></td>
			  				<td><input type="text" name="chengji1" id="chengji1" value="${item.chengji}" style="width:auto;" class="dfinput"/></td>
			  			</tr>
		  			</c:forEach>
		  		</table>
		   		</li>
   	
      			<li><label>&nbsp;</label><input type="button" value="返回" class="btn" onclick="history.back(-1)"/></li>
	   		</ul>
	    </div>
	
	
	
  </body>
  
	
</html>
