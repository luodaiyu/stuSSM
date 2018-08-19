$(function(){
	//获得页面第一个checkbox
	var $in=$('input:checkbox:first');
	//注册点击事件
	$in.click(function(){
		//判定是否被选中
		checked($(this).is(':checked'));
	});
});


//定义页面所有checkbox被选中的方法
function checked(checked){
                
	//获得所有的checkbox通过each()进行循环
	$('input:checkbox').each(function(i){
		$(this).attr('checked',checked);
	});
}

//注册删除按钮事件
$(function(){

$("#sc").click(function(){
	var str = "";
	$('input:checkbox').each(function(){
		
	if($(this).val()  != 0 &&$(this).is(':checked')){
			str += $(this).val()+",";
	}
	});
	str = str.substring(0,str.lastIndexOf(','));
	//alert(str);
	//通过ajax完成数据的处理
	$.ajax({
		
		url:'doBanjiDeleteBYList.do',
		data:'ids='+str,
		type:'post',
		success:function(data){
			if(data == 'true'){
				location.href='toBanjiList.do';
			}
		}
	});
	
	
});
});