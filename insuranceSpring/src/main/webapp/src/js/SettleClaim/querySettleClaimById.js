function querySettleClaimById(){
	var UserId = $("#userId").val();
	//alert("用户id："+UserId);
    $("#querySettleClaimById").empty();
    
	$.ajax({
		url:'http://localhost:8080/src/page/lipei/querySettleClaimById.do',
		type:'post',
		data:{"userId":UserId},
		dataType : 'json',
		success : function(data) {
			//data=$.parseJSON(data);
			console.log(data);
			var contentHtml ="";
			for (var i = 0; i < data.datas.length; i++) {
				var rowHtml = "<tr>";
				rowHtml+="<td >"+data.datas[i].settleclaimPrice+"</td>";
				rowHtml+="<td >"+data.datas[i].settleclaimTime+"</td>";
				if(data.datas[i].settleClaimstatus==0){
					rowHtml+="<td >未理赔</td>";
				}
				else if(data.datas[i].settleClaimstatus==1)
				{
					rowHtml+="<td >已理赔</td>";
				}
				rowHtml+="<td >"+data.datas[i].username+"</td>";
				if(data.datas[i].settleClaimstatus==0){					
					rowHtml+="<td ><a href='http://localhost:8080/src/page/lipei/querySettleClaimBycaseId.do?caseId="+data.datas[i].caseId+"'><button type='button' class='btn btn-warning' style='height: 35px;'>开始理赔&nbsp;</button></a></td>";
				}else if(data.datas[i].settleClaimstatus==1){
					rowHtml+="<td ><a href='lipei.jsp'><button type='button' class='btn btn-warning' style='height: 35px;'>查看案件&nbsp;</button></a></td></tr>";
				}
				//rowHtml+="<td ><a href='lipei.jsp'><button type='button' class='btn btn-warning' style='height: 35px;'>开始理赔&nbsp;</button></a></td></tr>";
				contentHtml += rowHtml;	
			}
			$("#querySettleClaimById").append(contentHtml);
			
			//initPageBar(data.singerData,"loadRole");
		},
		error : function() {
			alert("查找失败!");
		}
	})
}   
