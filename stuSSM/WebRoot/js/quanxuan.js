$(function(){
	//���ҳ���һ��checkbox
	var $in=$('input:checkbox:first');
	//ע�����¼�
	$in.click(function(){
		//�ж��Ƿ�ѡ��
		checked($(this).is(':checked'));
	});
});


//����ҳ������checkbox��ѡ�еķ���
function checked(checked){
                
	//������е�checkboxͨ��each()����ѭ��
	$('input:checkbox').each(function(i){
		$(this).attr('checked',checked);
	});
}

//ע��ɾ����ť�¼�
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
	//ͨ��ajax������ݵĴ���
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