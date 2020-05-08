function querySettleclaim(){
	$("#all_lipei").empty();
	
	$.ajax({
		url:'http://localhost:8080/src/page/lipei/querySettleClaim.do',
		type:'post',
		dataType : 'json',
		success : function(data) {
			//data=$.parseJSON(data);
			console.log(data);
			var contentHtml ="";
			for (var i = 0; i < data.datas.length; i++) {
				var rowHtml = "<tr>";
				rowHtml+="<td >"+data.datas[i].settleclaimId+"</td>";
				rowHtml+="<td >"+data.datas[i].settleclaimPrice+"</td>";
				rowHtml+="<td >"+data.datas[i].settleclaimTime+"</td>";
				if(data.datas[i].settleClaimstatus==0){
					rowHtml+="<td >未理赔</td>";
				}
				else if(data.datas[i].settleClaimstatus==1){
					rowHtml+="<td >已理赔</td>";
				}
				rowHtml+="<td >"+data.datas[i].username+"</td>";
				//rowHtml+="<td ><a href='hesun_info.jsp'><button type='button' class='btn btn-warning' style='height: 35px;'>继续审核&nbsp;</button></a></td></tr>";
				contentHtml += rowHtml;	
			}
			$("#all_lipei").append(contentHtml);
			
			//initPageBar(data.singerData,"loadRole");
		},
		error : function() {
			alert("查找失败!");
		}
	})
}   
