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
<script type="text/javascript" src="js/grade/delGrade.js"></script>
<script type="text/javascript" src="js/grade/gradeList.js"></script>
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
    <li><a href="#">成绩管理</a></li>
    <li><a href="#">学生信息显示列表</a></li>
    </ul>
    </div>
    
    <div class="rightinfo">
    
    <div class="tools">
    <form action="toQueryZXB.do" method="post">
    	<ul class="toolbar">
       	 <li class="click2" id="sc" ><span><img src="images/t03.png" /></span>删除</li>
         <li class="click2" >
         	按学院查询:<select name="id1" id="id1">
         				<option value="0">--请选择--</option>
         				<c:forEach items="${XUEYUAN_LIST}" var="item">
         					<option value="${item.xid}">${item.xName}</option>
         				</c:forEach>
         			</select>
         </li>
         <li class="click2" >
         	按专业查询:<select name="id2" id="id2">
         				<option value="0">--请选择--</option>
         			</select>
         </li>
         <li class="click2" >
         	按班级查询:<select name="id3" id="id3">
         				<option value="0">--请选择--</option>
         			</select>
         </li>
         <li class="click2" ><input type="submit" value="查询"/></li>
        </ul>
        </form>
        
    
    </div>
    
    
    <table class="tablelist">
    	<thead>
    	<tr>
        <th><input name="" type="checkbox" value="" /></th>
        <th>学生学号<i class="sort"><img src="images/px.gif" /></i></th>
        <th>姓名</th>
        <th>性别</th>
        <th>课程名称</th>
        <th>成绩</th>
        <th>所属班级</th>
        <th>操作</th>
        </tr>
        </thead>
        <tbody> 
	        <c:forEach items="${GRADEALL}" var="item">
		        <tr>
		        <td><input type="checkbox" value="${item.sid}【${item.tid}】" /></td>
		        <td>${item.sid}</td>
		        <td>${item.sName}</td>
		        <td>${item.sex}</td>
		        <td>${item.kec}</td>
		        <td>${item.chengji}</td> 
		        <td>${item.bName}</td>
		        <td><a href="toQueryGrade.do?sid=${item.sid}&tid=${item.tid}" class="tablelink">查看</a>
		        	<a href="toUpdateGrade.do?sid=${item.sid}&tid=${item.tid}" class="tablelink">修改</a>
		        </td>  
		        </tr> 
	         </c:forEach>    
      </tbody>
    </table>
   <!-- 这是分页标签 --> 
  <div class="pagin">
     <p:page url="toGradeList.do" page="${PAGE}" paramter="currpage"/>
  </div>
    
  <!-- 这是提示框 -->  
    <div class="tip">
    	<div class="tiptop"><span>提示信息</span><a></a></div>
        
      <div class="tipinfo">
        <span><img src="images/ticon.png" /></span>
	        <div class="tipright">
	        <p id="text">是否确认对信息的修改 ？</p>
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
