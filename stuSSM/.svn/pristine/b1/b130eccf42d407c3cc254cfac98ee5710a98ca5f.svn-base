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

//ע��ɾ��ť�¼�
$(function(){

$("#delsBtn").click(function(){
	var str = "";
	$('input:checkbox').each(function(){
		
	if($(this).val()  != 0 &&$(this).is(':checked')){
			str += $(this).val()+",";
	}
	});
	str = str.substring(0,str.lastIndexOf(','));
	//alert(str);
	//ͨ��ajax�����ݵĴ���
	$.ajax({
		url:'dodeleteEmployee.do',
		data:'ids='+str,
		type:'post',
		success:function(data){
			if(data){
				$("#message").text("删除成功!");
				$(".tip").fadeIn(200);
				$(".sure").click(function(){
					location.href='selectEmployee.do';
				});
			}else{
				$("#message").text("删除失败!");
				$(".tip").fadeIn(200);
				$(".sure").click(function(){
					location.href='selectEmployee.do';
				});
			}
		}
	});
	
	
});

$(".cancel").click(function(){
	$(".tip").fadeOut(100);
});
//X按钮事件
  $(".tiptop a").click(function(){
	  $(".tip").fadeOut(200);
	  
  });
});