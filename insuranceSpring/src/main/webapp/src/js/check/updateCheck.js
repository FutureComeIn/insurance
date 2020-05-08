$(document).ready(function(){
	//alert($("#updateCheck").html());
	$("#updateCheck").click(function(){
		var options = {
				url:'http://localhost:8080/src/page/check/updateCheckByParam.do',
				dataType:'json',//提交方式
				success: function(data) {
					console.log(data);
					if(data.result){
//						//勘察明细信息更新
//						$.ajax({
//							url:  'http://localhost:8080/src/page/check/updateCheckDetails.do',
//							dataType:'json',//提交方式
//							success: function(data){
//								console.log(data);
//								if(data.result){
//									alert("勘察明细信息更新成功")
//								}else{
//									alert(data.message);
//								}
//							}
//						});
						alert("更新成功");
					}else{
						alert(data.message);
					}
				},
				error: function(){
					//alert("error");
				}
			};
			$("#updateform").ajaxSubmit(options); //  表单提交 
			return false;  // 必须返回false，否则表单会自己再做一次提交操作，并且页面跳转 
	});
});
