<%@ page language="java" import="java.util.*" pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/banjichecked/Updatechecked.js"></script>

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
    <form action="doBanjiUpdate.do" method="post" id="form_id">
    <input type="hidden" value="${Banji.bid}" name="bid" id="bid"/>
    <ul class="forminfo">
    <li><label>班级名</label><input name="bname" id="bname" type="text" class="dfinput" value="${Banji.bname}"/><i id="txt" style="color:red">班级名不能重复</i></li>
    <li><label>班级人数</label><input name="bnop" id="bnop" type="text" class="dfinput" value="${Banji.bnop}"/><i id="txt1" style="color:red">人数不能超过40人</i></li>
    <li><label>院系</label>
    <select name="xid" id="xueyuan">
    <c:forEach items="${XueYuanList}" var="xyl">
      <c:if test="${xyl.xName == Banji.xueyuan.getxName()}">
        <option value="${xyl.xid}" selected="selected">${xyl.xName}</option> 
      </c:if>
      <c:if test="${xyl.xName != Banji.xueyuan.getxName()}">
           <option value="${xyl.xid}">${xyl.xName}</option>
      </c:if>
        </c:forEach>     
    </select>
    <i id="txt2" ></i>
    </li>   
    <li><label>&nbsp;</label><input name="" type="button" class="btn" id="butn" value="确认保存"/></li>
    </ul>
    </form>
    
    </div>



</body>

</html>
