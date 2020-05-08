
//查询未指派报案信息
function querymyreport(indexPage) {
//	alert(1);
	$("#myreportInfo").empty();
	$.ajax({
		url:'http://localhost:8080/src/page/report_wb/loadHandleReport.do',
		type:'post',
	    dataType : 'json',
	    data:{
			'indexPage':indexPage
		},
		success : function(data) {
			//data=$.parseJSON(data);
//			alert(data.datas.length);
			//console.log();
			var contentHtml ="";
			for (var i = 0; i<data.datas.length; i++) {
				var rowHtml ="<tr>";
				rowHtml+="<td >"+data.datas[i].reportId+"</td>";
				rowHtml+="<td >"+data.datas[i].reportPersonName+"</td>";
				rowHtml+="<td >"+data.datas[i].reporPersontPhone+"</td>";
				if(data.datas[i].warranty!=null){
					rowHtml+="<td >"+data.datas[i].warranty.sailId+"</td>";
				}else{
					rowHtml+="<td ></td>"
				}
				rowHtml+="<td >"+data.datas[i].reportTime+"</td>";
				if(data.datas[i].caseStatus==1){
					rowHtml += "<td>未勘察</td>";
					rowHtml+="<td><a onclick='queryhandleDetailsQuery("+data.datas[i].reportId+");'>查看详情</a></td>";
				}else{
					rowHtml +="</tr>";
				}
				contentHtml += rowHtml;
				}
		//alert(contentHtml);
		$("#myreportInfo").append(contentHtml);
		 page(data.singerData,"querymyreport");
		},
	error : function() {
		alert("查找失败!");
		}
	})
}   

function queryhandleDetailsQuery(reportId){
	window.location.href="http://localhost:8080/src/page/report_wb/loadHandleReportDetails.do?reportId="+reportId;
}

function search(indexPage){
//	alert(1);
	var reportId = $("#jieanid").val();
	var reportPersonName = $("#jieanname").val();
	var reporPersontPhone = $("#jieannumber").val();
	$("#myreportInfo").empty();
	$.ajax({
		url:'http://localhost:8080/src/page/report_wb/loadHandleReport.do',
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
					rowHtml+="<td >"+data.datas[i].reportPersonName+"</td>";
					rowHtml+="<td >"+data.datas[i].reporPersontPhone+"</td>";
					if(data.datas[i].warranty!=null){
						rowHtml+="<td >"+data.datas[i].warranty.sailId+"</td>";
					}else{
						rowHtml+="<td ></td>"
					}
					rowHtml+="<td >"+data.datas[i].reportTime+"</td>";
					if(data.datas[i].caseStatus==1){
						rowHtml += "<td>未勘察</td>";
						rowHtml+="<td><a onclick='queryhandleDetailsQuery("+data.datas[i].reportId+");'>查看详情</a></td>";
					}else{
						rowHtml +="</tr>";
					}
					contentHtml += rowHtml;
				}
				$("#myreportInfo").append(contentHtml);
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