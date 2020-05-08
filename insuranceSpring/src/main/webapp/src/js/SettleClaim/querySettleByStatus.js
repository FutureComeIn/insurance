function querySettleClaimByStatus(settleClaimStatus){
	$("#queryByStatus").empty();
	alert(settleClaimStatus);
	$.ajax({
		url:'http://localhost:8080/src/page/lipei/querySettleClaimByStatus.do',
		type:'post',
		data:{
			'settleClaimstatus':settleClaimStatus
		},
		dataType : 'json',
		success : function(data) {
			console.log(data);
			var contentHtml ="";
			for (var i = 0; i < data.datas.length; i++) {
				var rowHtml = "<tr>";
				rowHtml+="<td >"+data.datas[i].settleclaimPrice+"</td>";
				rowHtml+="<td >"+data.datas[i].settleclaimTime+"</td>";
				if(data.datas[i].settleClaimstatus==0){
					rowHtml+="<td >未理赔</td>";
				}else{
					rowHtml+="<td >已理赔</td>";
				}
				rowHtml+="<td >"+data.datas[i].username+"</td>";
		        rowHtml+="<td ><a href='lipei.jsp'><button type='button' class='btn btn-warning' style='height: 35px;' >开始理赔&nbsp;</button></a></td></tr>";
				contentHtml += rowHtml;	
			}
			$("#queryByStatus").append(contentHtml);
			
			//initPageBar(data.singerData,"loadRole");
		},
		error : function() {
			alert("查找失败!");
		}
	})
}   
