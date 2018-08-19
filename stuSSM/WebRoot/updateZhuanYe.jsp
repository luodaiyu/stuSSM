<%@ page language="java" import="java.util.*" pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>学生管理系统</title>
	<link href="css/style.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="js/jquery.js"></script>
 	<script type="text/javascript" src="js/zhuanye/updateZhuanYe.js"></script>
 	
	</head>
  <body>
    <div class="place">
	    <span>位置：</span>
	    <ul class="placeul">
	    <li><a target="_parent" href="index.jsp">首页</a></li>
	    <li><a href="#">修改专业信息</a></li>
	    </ul>
    </div>
    
    <form action="doUpdateZhuanYe.do" method="post" id="form_id">
    <input type="hidden" value="${ZHUANYE.zid}" id="zzid"/>
	    <div class="formbody">
		    <div class="formtitle"><span>基本信息</span></div>
			<ul class="forminfo">
			    <li><label>专业名称：</label><input name="zName" id="zName" type="text" class="dfinput" value="${ZHUANYE.zName}"/><i id="zname">请输入专业名称</i></li>
			  	<li><label>所属院系：</label>
			  		<select name="xid" id="xName">
			  			<option value="0">--请选择--</option>
			  				<c:forEach items="${XUEYUAN_LIST}" var="item">
			  				<c:if test="${item.xid==ZHUANYE.xueyuan.xid}">
			  					<option value="${item.xid}" selected="selected">${item.xName}</option>
			  				</c:if>
			  				<c:if test="${item.xid!=ZHUANYE.xueyuan.xid}">
			  					<option value="${item.xid}">${item.xName}</option>
			  				</c:if>
			  				</c:forEach>
			  		</select>
			  		<i id="xname">*</i>
			  	</li>
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
        <p id="text">是否确认修改该专业 ？</p>
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
