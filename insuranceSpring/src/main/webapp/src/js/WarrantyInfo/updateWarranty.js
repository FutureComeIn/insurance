function updateWarranty(){
	var warrantyId=$("#warrantyId").val();
	var policyholdersTel=$("#policyholdersTel").val();
	$.ajax({
		url:'http://localhost:8080/updateWarranty.do',
		type:'post',
		data{
			'warrantyId':warrantyId,
			'policyholdersTel':policyholdersTel
		},
		dataType:'json',
		success:function(data){
			if(data.result){
				
			}
		},
		errot:function(){
			alert("修改失败!");
		}
	});
	
	var recognizeeId=$("#recognizeeId").val();
	var tel=$("#tel").val();
	var email=$("#email").val();
	var bankNumber=$("#bankNumber").val();
	$.ajax({
		url:'http://localhost:8080/updateWarranty1.do',
		type:'post',
		data:{
			'recognizeeName':recognizeeName,
			'tel':tel,
			'email':email,
			'bankNumber':bankNumber
		},
		dataType : 'json',
		success : function(data) {
			if(data.result){
				
			}
		},
		error : function() {
			alert("修改失败!");
		}
	});
	
	var policyholdersId=$("#policyholdersId").val();
	var policyholdersTel=$("#policyholdersTel").val();
	var policyholdersEmail=$("#policyholdersEmail").val();
	$.ajax({
		url:'http://localhost:8080/updateWarranty2.do',
		type:'post',
		data:{
			'policyholdersId':policyholdersId,
			'policyholdersTel':policyholdersTel,
			'policyholdersEmail':policyholdersEmail
		},
		dataType : 'json',
		success : function(data) {
			if(data.result){
				alert("修改成功！");
				window.location.href="Insurance_querying.jsp";
			}
		},
		error : function() {
			alert("修改失败!");
		}
	});
}  
