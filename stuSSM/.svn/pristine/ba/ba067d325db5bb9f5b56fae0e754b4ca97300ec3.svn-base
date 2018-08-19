$(function(){
	var $in=$('input:checkbox:first');
	$in.click(function(){
		checked($(this).is(':checked'));
	});
});


function checked(checked){
                
	$('input:checkbox').each(function(i){
		$(this).attr('checked',checked);
	});
}

$(function(){

$("#sc").click(function(){
	var str = "";
	$('input:checkbox').each(function(){
		
	if($(this).val()  != 0 &&$(this).is(':checked')){
			str += $(this).val()+",";
	}
	});
	str = str.substring(0,str.lastIndexOf(','));
	$.ajax({
		
		url:'doDeleteZhuanYe.do',
		data:'zids='+str,
		type:'post',
		success:function(data){
			if(data == 'true'){
				alert("删除成功!");
				location.href='toZhuanYeList.do';
			}else{
				alert("删除失败!");
			}
		}
	});
	
	
});
});