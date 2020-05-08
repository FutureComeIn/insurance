function deleteSettleClaimBycaseId(caseId){
	$("#deleteSettleClaimBycaseId").empty();
	alert("进入删除js");
	alert(caseId);
	$.ajax({
		url:'http://localhost:8080/src/page/lipei/deleteSettleClaimBycaseId.do',
		type:'post',
		data:{"caseId":caseId },
		dataType : 'json',
		
		success : function(data) {
			alert("驳回成功!");
		},
		error : function() {
			alert("驳回失败!");
		}
	})
}   
