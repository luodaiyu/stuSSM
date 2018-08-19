<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="js/jquery.js"></script>

<script type="text/javascript">
$(function(){	
	//导航切换7
	$(".menuson li").click(function(){
		$(".menuson li.active").removeClass("active")
		$(this).addClass("active");
	});
	
	$('.title').click(function(){
		var $ul = $(this).next('ul');
		$('dd').find('ul').slideUp();
		if($ul.is(':visible')){
			$(this).next('ul').slideUp();
		}else{
			$(this).next('ul').slideDown();
		}
	});
})	
</script>


</head>

<body style="background:#f0f9fd;">
	<div class="lefttop"><span></span>操作</div>
    
    <dl class="leftmenu">
    
    <c:forEach items="${MENU}" var="m">
    	    <dd>
    	    <c:if test="${m.pid == 0}">
	    	    		<div class="title">
					    <span><img src="images/${m.icon}" /></span>${m.menuName}
						</div>
					    <ul class="menuson">
				<c:forEach items="${MENU}" var="ml">
					<c:if test="${m.id == ml.pid}">
						<li><cite></cite><a href="${ml.url}" target="rightFrame">${ml.menuName}</a><i></i></li>	           
					</c:if>
				</c:forEach>
					   </ul>   
    	    </c:if>
		    </dd>
    </c:forEach>    

        
    
     
    
    </dl>
    
</body>
</html>
