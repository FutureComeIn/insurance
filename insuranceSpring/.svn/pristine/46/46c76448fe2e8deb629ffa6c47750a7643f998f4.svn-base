function loadUnCheck(indexPage){
	$("#content").empty();
	$.ajax({
		url:'http://localhost:8080/src/page/check/queryByUnCheck.do',
		type:'post',
		data:{
			'indexPage':indexPage
		},
		dataType:'json',
		success:function(data){
			//data = $.parseJSON(data);
			//控制输出
			console.log(data);
			if(data.result){
			var contentHtml = "";
			for(var i=0; i < data.datas.length;i++){
				var rowHtml = "<tr><td>"+data.datas[i].reportId+"</td>";
				rowHtml += "<td>"+data.datas[i].reportPersonName+"</td>";
				rowHtml += "<td>"+data.datas[i].reporPersontPhone+"</td>";
				rowHtml += "<td>"+data.datas[i].reportTime+"</td>";
				rowHtml += "<td>"+data.datas[i].reportReason+"</td>";
				rowHtml += "<td>"+data.datas[i].province+"</td>";
				rowHtml += "<td>"+data.datas[i].city+"</td>";
				rowHtml += "<td>"+data.datas[i].area+"</td>";
				rowHtml += "<td>"+data.datas[i].road+"</td>";
				rowHtml += "<td>"+data.datas[i].road_direction+"</td>";
				rowHtml += "<td>"+data.datas[i].userName+"</td>";
				if(data.datas[i].caseStatus==1){
					rowHtml += "<td>未勘察</td>";
					rowHtml += "<td><a href='add_check.jsp?reportId="+data.datas[i].reportId+"' class='btn btn-sm btn-primary'>我要勘察</a></td></tr>";
				}
				//追加数据
				contentHtml += rowHtml;
			}	
			$("#content").append(contentHtml);
			page(data.singerData,"loadUnCheck");
			}else{
				alert(data.message);
			}
		},
		error:function(){
			alert("查询失败");
		}
	})
}
function search(indexPage){
	var reportId = $("#reportId").val();
	var reportPersonName = $("#reportName").val();
	var reporPersontPhone = $("#reporPersontPhone").val();
	$("#content").empty();
	$.ajax({
		url:'http://localhost:8080/src/page/check/queryByUnCheck.do',
		type:'post',
		data:{
			'indexPage':indexPage,
			'reportId':reportId,
			'reportPersonName':reportPersonName,
			'reporPersontPhone':reporPersontPhone
		},
		dataType:'json',
		success:function(data){
			//data = $.parseJSON(data);
			//控制输出
			console.log(data);
			var contentHtml = "";
			if(data.result){
				for(var i=0; i < data.datas.length;i++){
					var rowHtml = "<tr><td>"+data.datas[i].reportId+"</td>";
					rowHtml += "<td>"+data.datas[i].reportPersonName+"</td>";
					rowHtml += "<td>"+data.datas[i].reporPersontPhone+"</td>";
					rowHtml += "<td>"+data.datas[i].reportTime+"</td>";
					rowHtml += "<td>"+data.datas[i].reportReason+"</td>";
					rowHtml += "<td>"+data.datas[i].province+"</td>";
					rowHtml += "<td>"+data.datas[i].city+"</td>";
					rowHtml += "<td>"+data.datas[i].area+"</td>";
					rowHtml += "<td>"+data.datas[i].road+"</td>";
					rowHtml += "<td>"+data.datas[i].road_direction+"</td>";
					rowHtml += "<td>"+data.datas[i].userName+"</td>";
					if(data.datas[i].caseStatus==1){
						rowHtml += "<td>未勘察</td>";
						rowHtml += "<td><a href='add_check.jsp?reportId="+data.datas[i].reportId+"' class='btn btn-sm btn-primary'>我要勘察</a></td></tr>";
					}
					//追加数据
					contentHtml += rowHtml;
				}
				$("#content").append(contentHtml);
				page(data.singerData,"search");
			}
			else
			{
				$("#page").empty();
				alert(data.message);
			}
		},
		error:function(){
			alert("查询失败");
		}
	});
}
function page(page,method){
	$("#page").empty();
	var pagehtml = "<button class='btn btn-sm btn-primary' style='margin-right:20px' onclick='"+method+"(\"1\")'>首页</button>";
	if(page.indexPage == 1){
		pagehtml += "<button class='btn btn-sm btn-primary' style='margin-right:20px'>上一页</button>";
	}else{
		pagehtml += "<button class='btn btn-sm btn-primary' style='margin-right:20px' onclick='"+method+"(\""+(page.indexPage - 1)+"\")'>上一页</button>";
	}
	
	pagehtml += page.indexPage + "/" + page.pageCount;
	
	if(page.indexPage == page.pageCount){
		pagehtml += "<button class='btn btn-sm btn-primary' style='margin-right:20px;margin-left:20px'>下一页</button>";
	}else{
		pagehtml += "<button class='btn btn-sm btn-primary' style='margin-right:20px;margin-left:20px' onclick='"+method+"(\""+(page.indexPage + 1)+"\")'>下一页</button>";
	}
	pagehtml += "<button class='btn btn-sm btn-primary' style='margin-right:20px' onclick='"+method+"(\""+page.pageCount+"\")'>尾页</button>";
	$("#page").append(pagehtml);
}