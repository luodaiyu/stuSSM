<%@ page language="java" import="java.util.*" pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>


</head>

<body>

	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a target="_parent" href="index.jsp">首页</a></li>
    <li><a href="#">修改班级信息</a></li>
    </ul>
    </div>
    
    <div class="formbody">
    
    <div class="formtitle"><span>基本信息</span></div>
    <form action="doStudentUpdata.do" method="post" id="form_id">
    <input type="hidden" value="${Student.sid}" name="sid" id="sid"/>
    <ul class="forminfo">
    <li><label>姓名</label><input name="sName" id="sName" type="text" class="dfinput" value="${Student.sName}"/><i id="txt" style="color:red"></i></li>
    <li><label>性别</label><input name="sex" id="sex" type="text" class="dfinput" value="${Student.sex}"/><i id="txt1" style="color:red"></i></li>
    <li><label>年龄</label><input name="age" id="age" type="text" class="dfinput" value="${Student.age}"/><i id="txt1" style="color:red"></i></li>
    <li><label>家庭住址</label><input name="address" id="address" type="text" class="dfinput" value="${Student.address}"/><i id="txt1" style="color:red"></i></li>
    <li><label>出生日期</label><input name="birthday" id="birthday" type="text" class="dfinput" value="${Student.birthday}"/><i id="txt1" style="color:red"></i></li>
    <li><label>&nbsp;</label><input name="" type="submit" class="btn" id="butn" value="确认保存"/></li>
    </ul>
    </form>
    
    </div>



</body>

</html>
