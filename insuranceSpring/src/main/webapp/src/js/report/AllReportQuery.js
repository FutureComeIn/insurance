//加载数据
function queryAllreport(indexPage){
//	alert(1);
	$("#allreportInfo").empty();
	$.ajax({
		url:'http://localhost:8080/src/page/report_wb/loadAllReport.do',
		type:'post',
	    dataType : 'json',
	    data:{
			'indexPage':indexPage
		},
		success : function(data) {
			//data=$.parseJSON(data);
			//alert(data.datas.length);
			//控制输出
			console.log(data);
			var contentHtml ="";
			for (var i = 0; i<data.datas.length; i++) {
				var rowHtml ="<tr>";
				rowHtml+="<td >"+data.datas[i].reportId+"</td>";
				if(data.datas[i].warranty!=null){
//					rowHtml+="<td >"+data.datas[i].warranty.policyholdersName+"</td>";
//					rowHtml+="<td >"+data.datas[i].warranty.recognizeeName+"</td>";
					rowHtml+="<td >"+data.datas[i].warranty.sailId+"</td>";
				}else{
					rowHtml+="<td ></td>"
				}
				rowHtml+="<td >"+data.datas[i].reportPersonName+"</td>";
				rowHtml+="<td >"+data.datas[i].reporPersontPhone+"</td>";
				rowHtml+="<td >"+data.datas[i].reportReason+"</td>";
				rowHtml+="<td >"+data.datas[i].province+"</td>";
				rowHtml += "<td>"+data.datas[i].city+"</td>";
				rowHtml += "<td>"+data.datas[i].area+"</td>";
				rowHtml += "<td>"+data.datas[i].road+"</td>";
				rowHtml += "<td>"+data.datas[i].road_direction+"</td>";
				rowHtml+="<td >"+data.datas[i].reportTime+"</td>";
				rowHtml+="<td >";
				rowHtml+="<a onclick='allReportDetailsQuery("+data.datas[i].reportId+");'>查看详情</a>";
				rowHtml+="&nbsp;";
				rowHtml+="<a onclick='updateReportDetailsQuery("+data.datas[i].reportId+");'>";
				rowHtml+="<button class='btn btn-sm btn-primary' >修改</button></a>";
				rowHtml+="&nbsp;";
				rowHtml+="<button class='btn btn-sm btn-primary' disabled='disabled'>删除</button></td></tr>";
				//追加数据
				contentHtml += rowHtml;
				}
			//alert(contentHtml);
			$("#allreportInfo").append(contentHtml);
			page(data.singerData,"queryAllreport");
			},
		error : function() {
			alert("查找失败!");
			}
		})
	} 


function allReportDetailsQuery(reportId){
	window.location.href="http://localhost:8080/src/page/report_wb/loadAllReportDetial.do?reportId="+reportId;
}
function updateReportDetailsQuery(reportId){
	window.location.href="http://localhost:8080/src/page/report_wb/loadupdateReportDetails.do?reportId="+reportId;
}

//搜索
function search(indexPage){
//	alert(1);
	var reportId = $("#reported_number").val();
	var reportPersonName = $("#reported_name").val();
	var reporPersontPhone = $("#reported_tel").val();
	$("#allreportInfo").empty();
	$.ajax({
		url:'http://localhost:8080/src/page/report_wb/loadAllReport.do',
		type:'post',
		dataType:'json',
		data:{
			'indexPage':indexPage,
			'reportId':reportId,
			'reportPersonName':reportPersonName,
			'reporPersontPhone':reporPersontPhone
		},
		success:function(data){
			//data = $.parseJSON(data);
			//控制输出
			console.log(data);
    		var contentHtml = "";
			if(data.result){
				for (var i = 0; i<data.datas.length; i++) {
					var rowHtml ="<tr>";
					rowHtml+="<td >"+data.datas[i].reportId+"</td>";
					if(data.datas[i].warranty!=null){
						rowHtml+="<td >"+data.datas[i].warranty.policyholdersName+"</td>";
						rowHtml+="<td >"+data.datas[i].warranty.recognizeeName+"</td>";
						rowHtml+="<td >"+data.datas[i].warranty.sailId+"</td>";
					}else{
						rowHtml+="<td ></td>"
					}
					rowHtml+="<td >"+data.datas[i].reportPersonName+"</td>";
					rowHtml+="<td >"+data.datas[i].reporPersontPhone+"</td>";
					rowHtml+="<td >"+data.datas[i].reportReason+"</td>";
					rowHtml+="<td >"+data.datas[i].province+"</td>";
					rowHtml += "<td>"+data.datas[i].city+"</td>";
					rowHtml += "<td>"+data.datas[i].area+"</td>";
					rowHtml+="<td >"+data.datas[i].reportTime+"</td>";
					rowHtml+="<td >";
					rowHtml+="<a onclick='allReportDetailsQuery("+data.datas[i].reportId+");'>查看详情</a>";
					rowHtml+="&nbsp;";
					rowHtml+="<a onclick='updateReportDetailsQuery("+data.datas[i].reportId+");'>";
					rowHtml+="<button class='btn btn-sm btn-primary' >修改</button></a>";
					rowHtml+="&nbsp;";
					rowHtml+="<button class='btn btn-sm btn-primary' disabled='disabled'>删除</button></td></tr>";
					//追加数据
					contentHtml += rowHtml;
				}
				$("#allreportInfo").append(contentHtml);
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


//分页
function page(page,method){
	//alert(page.pageCount);
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