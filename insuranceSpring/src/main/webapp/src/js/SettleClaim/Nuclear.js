function Nuclear(bb){
	$("#nc").empty();
	
	$.ajax({
		url:'http://localhost:8080/src/page/hesun/queryNuclearDamageByStatus.do',
		type:'post',
		data:{
			'nuclearDamageStatus':bb
		},
		dataType : 'json',
		success : function(data) {
			console.log(data);
			var contentHtml ="";
			for (var i = 0; i < data.datas.length; i++) {
				var rowHtml = "<tr>";
				rowHtml+="<td >"+data.datas[i].nuclearDamageId+"</td>";
				rowHtml+="<td >"+data.datas[i].assessmentId+"</td>";
				rowHtml+="<td >"+data.datas[i].nuclearDamageTime+"</td>";
				rowHtml+="<td >"+data.datas[i].userId+"</td>";
				rowHtml+="<td >"+data.datas[i].userName+"</td>";
				if(data.datas[i].nuclearDamageStatus==0){
					rowHtml+="<td >未核损</td>";
				}else{
					rowHtml+="<td >已核损</td>";
				}
				rowHtml+="<td ><a href='lipei.jsp'><button type='button' class='btn btn-warning' style='height: 35px;' >开始理赔&nbsp;</button></a></td></tr>";
				contentHtml += rowHtml;	
			}
			$("#nc").append(contentHtml);
			
			//initPageBar(data.singerData,"loadRole");
		},
		error : function() {
			alert("查找失败!");
		}
	})
}   
