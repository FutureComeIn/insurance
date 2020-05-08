function add(){
	var policyholdersName=$("#policyholdersName").val();
	var cardId=$("#cardId").val();
	var sex=$("#sex").val();
	var addressShen=$("#addressShen").val();
	var addressShi=$("#addressShi").val();
	var tel=$("#tel").val();
	var email=$("#email").val();
	$.ajax({
		url:'http://localhost:8080/addPolicyholders.do',
		type:'post',
		data:{
			'policyholdersName':policyholdersName,
			'cardId':cardId,
			'sex':sex,
			'addressShen':addressShen,
			'addressShi':addressShi,
			'tel':tel,
			'email':email
		},
		dataType : 'json',
		success : function(data) {
			console.log(data);
			if(data.result){
				alert("添加成功！");
				window.location.href="Policy-holder.jsp";
			}
		},
		error : function() {
			alert("添加失败!");
		}
	});
}  
