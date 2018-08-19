<%@ page language="java" import="java.util.*" pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/studentcheched/addchecked.js"></script>
<script type="text/javascript">
   $(function(){
	   $("#xueyuan").change(function(){
		   $.ajax({
			   type:'post',
			   url:'zhuanyeselect.do',
			   data:'xid='+$(this).val(),
			   async:false,
			   success:function(data){
				   data=$.parseJSON(data);
				   $("#zhuanye").empty();
				   $("#zhuanye").html("<option value='0'>--请选择--</option>");
				   for(var i=0;i<data.length;i++){
					   $("#zhuanye").append("<option value='"+data[i].zid+"'>"+data[i].zName+"</option>");
				   }
			   }
		   });
	   });
	   $("#zhuanye").change(function(){
		   $.ajax({
			   type:'post',
			   url:'banjiselect.do',
			   data:'xid='+$("#xueyuan").val(),
			   async:false,
			   success:function(data){
				   data=$.parseJSON(data);
				   $("#banji").empty();
				   $("#banji").html("<option value='0'>--请选择--</option>");
				   for(var i=0;i<data.length;i++){
					   $("#banji").append("<option value='"+data[i].bid+"'>"+data[i].bname+"</option>");
				   }
			   }
		   });
	   });
   });

</script> 
</head>

<body>

	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a target="_parent" href="index.jsp">首页</a></li>
    <li><a href="#">添加学生</a></li>
    </ul>
    </div>
    
    <div class="formbody">
    
    <div class="formtitle"><span>基本信息</span></div>
    <form action="doStudentAdd.do" method="post" id="form_id">
    <ul class="forminfo">
    <li><label>姓名</label><input name="sName" id="sName" type="text" class="dfinput" /><i id="txt" style="color:red"></i></li>
    <li><label>性别</label><input name="sex" id="sex" type="text" class="dfinput" /><i></i></li>
    <li><label>年龄</label><input name="age" id="age" type="text" class="dfinput" /><i></i></li>
    <li><label>家庭住址</label><input name="address" id="address" type="text" class="dfinput" /><i></i></li>
    <li><label>出生日期</label><input name="birthday" id="birthday" type="text" class="dfinput" /><i></i></li>
    <li><label>院系</label>
    <select name="xid" id="xueyuan" style="width: 200px;height:30px;border:1px solid gray;">
        <option value="0">--请选择--</option> 
        <c:forEach items="${XueYuan}" var="xy">
           <option value="${xy.xid}">${xy.xName}</option>
        </c:forEach>     
    </select>
    <i id="txt2" style="color:red">*</i>
    </li>
    <li><label>专业</label>
    <select name="zid" id="zhuanye" style="width: 200px;height:30px;border:1px solid gray;">
        <option value="0">--请选择--</option> 
           
    </select>
    <i id="txt3" style="color:red">*</i>
    </li>   
    <li><label>班级</label>
    <select name="bid" id="banji" style="width: 200px;height:30px;border:1px solid gray;">
        <option value="0">--请选择--</option> 
         
    </select>
    <i id="txt4" style="color:red"></i>
    </li>      
    <li><label>&nbsp;</label><input name="" type="button" class="btn" id="butn" value="确认保存"/></li>
    </ul>
    </form>
    
    </div>



</body>

</html>
