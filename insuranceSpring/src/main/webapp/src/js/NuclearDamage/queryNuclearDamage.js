function NuclearDamageonloads(){
	var UserId = $("#userId").val();
	//alert("用户id："+UserId);
	$("#tbody").empty();
	
	
	$.ajax({
		url:'http://localhost:8080/src/page/hesun/queryNuclearDamage.do',
		type:'post',
		data:{"UserId":UserId},
		dataType : 'json',
		success : function(data) {
			//data=$.parseJSON(data);
			//console.log(data);
			var contentHtml ="";
			for (var i = 0; i < data.datas.length; i++) {
				var rowHtml = "<tr>";
				rowHtml+="<td >"+data.datas[i].nuclearDamageId+"</td>";
				rowHtml+="<td >"+data.datas[i].assessmentId+"</td>";
				rowHtml+="<td >"+data.datas[i].nuclearDamageTime+"</td>";
				rowHtml+="<td >"+data.datas[i].userId+"</td>";
				rowHtml+="<td >"+data.datas[i].userName+"</td>";
				if(data.datas[i].nuclearDamageStatus==3){
					rowHtml+="<td >未核损</td>";
				}
				else if(data.datas[i].nuclearDamageStatus==4){
					rowHtml+="<td >已核损</td>";
				}
				
				if(data.datas[i].nuclearDamageStatus==3){					
					rowHtml+="<td><a href='http://localhost:8080/src/page/hesun/queryNuclearDamageById.do?nuclearDamageId="+data.datas[i].nuclearDamageId+"'><button type='button' class='btn btn-warning' style='height: 35px;'>开始核损&nbsp;</button></a>"
				}else if(data.datas[i].nuclearDamageStatus==4){
					rowHtml+="<td ><a href='hesunzhong.jsp'><button type='button' class='btn btn-warning' style='height: 35px;'>查看案件&nbsp;</button></a></td></tr>";
				}
				
				contentHtml += rowHtml;	
			}
			$("#tbody").append(contentHtml);
			
			//initPageBar(data.singerData,"loadRole");
		},
		error : function() {
			alert("查找失败!");
		}
	})
}   
