<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
</head>

<body>

	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a target="_parent" href="index.jsp">首页</a></li>
    <li><a href="#">班级详情</a></li>
    </ul>
    </div>
    
    <div class="formbody">
    
    <div class="formtitle"><span>基本信息</span></div>
    
    <ul class="forminfo">
    <li><label>班级名：</label><input name="" type="text" class="dfinput" value="${Banji.bname}" readonly="readonly"/></li>
    <li><label>所属学院：</label><input name="" type="text" class="dfinput" value="${Banji.xueyuan.getxName()}" readonly="readonly"/></li>
    <li><label>班级容量：</label><input name="" type="text" class="dfinput" value="${Banji.bcapacity}" readonly="readonly"/></li>
    <li><label>班级人数：</label><input name="" type="text" class="dfinput" value="${Banji.bnop}" readonly="readonly"/></li>
    <li><label>&nbsp;</label><input  type="button" class="btn" value="返回" onclick="history.back(-1)"/></li>
    </ul>
    
    
    </div>


</body>

</html>

