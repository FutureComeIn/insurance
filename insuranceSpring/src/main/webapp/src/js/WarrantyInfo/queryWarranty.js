function warrantyonloads(indexpage){
	$("#tbody").empty();
	$.ajax({
		url:'http://localhost:8080/queryWarranty.do',
		type:'post',
		data:{
			'indexpage':indexpage
		},
		dataType : 'json',
		success : function(data) {
			//data=$.parseJSON(data);
			console.log(data);
			var contentHtml ="";
			for (var i = 0; i < data.datas.length; i++) {
				var rowHtml = "<tr>";
				rowHtml+="<td >"+data.datas[i].warrantyId+"</td>";
				rowHtml+="<td >"+data.datas[i].policyholdersName+"</td>";
				rowHtml+="<td >"+data.datas[i].recognizeeName+"</td>";
				rowHtml+="<td >"+data.datas[i].recognizeeIdCard+"</td>";
				rowHtml+="<td >"+data.datas[i].carTypeName+"</td>";
				rowHtml+="<td >"+data.datas[i].insuranceBeginTime+"</td>";
				rowHtml+="<td >"+data.datas[i].insuranceEndTime+"</td>";
				rowHtml+="<td><a href='../../../queryByList.do?recognizeeId="+data.datas[i].recognizeeId+"&policyholdersId="+data.datas[i].policyholdersId+"&warrantyId="+data.datas[i].warrantyId+"&carTypeId="+data.datas[i].carTypeId+"'><button  type='button' class='btn btn-info' style='margin-right:17px'>详情&nbsp;&nbsp;&nbsp;</button></a>"
				rowHtml+="<a href='../../../queryToUpdate.do?recognizeeId="+data.datas[i].recognizeeId+"&policyholdersId="+data.datas[i].policyholdersId+"&warrantyId="+data.datas[i].warrantyId+"&carTypeId="+data.datas[i].carTypeId+"'><button type='button' class='btn btn-primary' style='margin-right:17px'>修改&nbsp;&nbsp;&nbsp;</button></a>"
				rowHtml+="<button type='button' class='btn btn-warning' data-toggle='modal' data-target='.myModal' style='margin-right:17px' onclick='xubao("+data.datas[i].warrantyId+");'>续保&nbsp;</button>";
				rowHtml+="</td></tr>";
				contentHtml += rowHtml;	
			}
			$("#tbody").append(contentHtml);
			page(data.singerData,"warrantyonloads");
		},
		error : function() {
			alert("查找失败!");
		}
	})
} 

//续保
function xubao(warrantyId){
	$.ajax({
	url:'http://localhost:8080/queryWarrantyDetilsById.do',
	type:'post',
	data:{
		'warrantyId':warrantyId
	},
	dataType:'json',
	success:function(data) {
		console.log(data);
//		alert("保险止期："+data.datas[0].insuranceEndTime);
//		$(this).val(""); //清空上次input框里的数据
		$("#warrantyId").val(data.datas[0].warrantyId);
		$("#insuranceEndTime").val(data.datas[0].insuranceEndTime);
		$("#insuranceEndTime1").val(data.datas[0].insuranceEndTime);
	},
	 error:function(){
 		alert("查询失败！");
 	}
})
}
//分页
function search(indexpage){
	var warrantyId = $("#warrantyId").val();
	var policyholdersName = $("#policyholdersName").val();
	var recognizeeName = $("#recognizeeName").val();
	var recognizeeIdCard=$("#recognizeeIdCard").val();
	$("#tbody").empty();
	$.ajax({
		url:'http://localhost:8080/queryWarrantyByInfo.do',
		type:'post',
		data:{
			'indexpage':indexpage,
			'warrantyId':warrantyId,
			'policyholdersName':policyholdersName,
			'recognizeeName':recognizeeName,
			'recognizeeIdCard':recognizeeIdCard
		},
		dataType:'json',
		success:function(data) {
			//控制输出
			console.log(data);
			var contentHtml = "";
			if(data.result){
				for(var i=0; i < data.datas.length;i++){
					var rowHtml = "<tr>";
					rowHtml+="<td >"+data.datas[i].warrantyId+"</td>";
					rowHtml+="<td >"+data.datas[i].policyholdersName+"</td>";
					rowHtml+="<td >"+data.datas[i].recognizeeName+"</td>";
					rowHtml+="<td >"+data.datas[i].recognizeeIdCard+"</td>";
					rowHtml+="<td >"+data.datas[i].carTypeName+"</td>";
					rowHtml+="<td >"+data.datas[i].insuranceBeginTime+"</td>";
					rowHtml+="<td >"+data.datas[i].insuranceEndTime+"</td>";
					rowHtml+="<td><a href='insureInfo.jsp'><button  type='button' class='btn btn-info' style='margin-right:17px'>详情&nbsp;</button></a>"
					rowHtml+="<a href='updateInsure.jsp'><button type='button' class='btn btn-primary' style='margin-right:17px'>修改&nbsp;</button></a>"
					rowHtml+="<button type='button' class='btn btn-warning' data-toggle='modal' data-target='.myModal' style='margin-right:17px'>续保&nbsp;</button>";
					rowHtml+="</td></tr>";
					contentHtml += rowHtml;	
				}
				$("#tbody").append(contentHtml);
				page(data.singerData,"search");
			}else{
				$("#page").empty();
			}
		},
		error:function(){
			alert("查询失败");
		}
	})
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