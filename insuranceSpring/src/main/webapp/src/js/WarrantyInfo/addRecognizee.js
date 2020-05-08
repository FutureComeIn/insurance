function add(){
	var recognizeeName=$("#recognizeeName").val();
	var cardId=$("#cardId").val();
	var sex=$("#sex").val();
	var addressShen=$("#addressShen").val();
	var addressShi=$("#addressShi").val();
	var tel=$("#tel").val();
	var email=$("#email").val();
	var bankNumber=$("#bankNumber").val();
	var driveId=$("#driveId").val();
	var vehicleLicenseId=$("#vehicleLicenseId").val();
	var engineId=$("#engineId").val();
	$.ajax({
		url:'http://localhost:8080/addRecognizee.do',
		type:'post',
		data:{
			'recognizeeName':recognizeeName,
			'cardId':cardId,
			'sex':sex,
			'addressShen':addressShen,
			'addressShi':addressShi,
			'tel':tel,
			'email':email,
			'bankNumber':bankNumber,
			'driveId':driveId,
			'vehicleLicenseId':vehicleLicenseId,
			'engineId':engineId
		},
		dataType : 'json',
		success : function(data) {
			console.log(data);
			if(data.result){
				alert("添加成功！");
				window.location.href="Policy-recognizee.jsp";
			}
		},
		error : function() {
			alert("添加失败!");
		}
	});
}  
