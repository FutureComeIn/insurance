function updateSettleClaim(caseId){
	$("#updateSettleClaim").empty();
	//alert(caseId);
	$.ajax({
		url:'http://localhost:8080/src/page/lipei/updateSettleClaim.do',
		type:'post',
		data:{"caseId":caseId},
		dataType : 'json',
		success : function(data) {
			alert("审核成功!");
		},
		error : function() {
			alert("审核失败!");
		}
	})
}   