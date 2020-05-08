function Policyholderslonloads(indexpage){
	$("#tbody").empty();
	$.ajax({
		url:'http://localhost:8080/queryPolicyholders.do',
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
				rowHtml+="<td >"+data.datas[i].policyholdersId+"</td>";
				rowHtml+="<td >"+data.datas[i].policyholdersName+"</td>";
				rowHtml+="<td >"+data.datas[i].sex+"</td>";
				rowHtml+="<td >"+data.datas[i].cardId+"</td>";
				rowHtml+="<td >"+data.datas[i].tel+"</td>";
				rowHtml+="<td >"+data.datas[i].addressShen+""+data.datas[i].addressShi+"</td>";
				rowHtml+="<td >"+data.datas[i].email+"</td>";
				rowHtml+="<td><a href='../../../queryPolicyholdersById.do?policyholdersId="+data.datas[i].policyholdersId+"'><button type='button' class='btn btn-warning' style='margin-right:17px'>修改&nbsp;</button></a>"
				rowHtml+="<a href='#' onclick='deletepolicyholders("+data.datas[i].policyholdersId+");'><button type='button' class='btn btn-danger' data-toggle='modal' data-target='.myModal' style='margin-right:17px'>删除&nbsp;</button></a></td></tr>";
				contentHtml += rowHtml;	
			}
			$("#tbody").append(contentHtml);
			page(data.singerData,"Policyholderslonloads");
		},
		error : function() {
			alert("查找失败!");
		}	
	})
}  
function deletepolicyholders(policyholdersId){
	if(window.confirm("您确定要删除吗？")){
		$.ajax({
			url:'http://localhost:8080/deletePolicyholders.do',
			type:'post',
			data:{"policyholdersId":policyholdersId},
			dataType:'json',
			success : function(data){
				alert("删除成功!");
				Policyholderslonloads();
			},
			error : function(){
				alert("删除失败!");
			}
		})
	}else{
		return false;
	}
}
function search(indexpage){
	var policyholdersId = $("#policyholdersId").val();
	var policyholdersName = $("#policyholdersName").val();
	var cardId=$("#cardId").val();
	$("#tbody").empty();
	$.ajax({
		url:'http://localhost:8080/queryPolicyholdersByInfo.do',
		type:'post',
		data:{
			'indexpage':indexpage,
			'policyholdersId':policyholdersId,
			'policyholdersName':policyholdersName,
			'cardId':cardId
		},
		dataType:'json',
		success:function(data){
			//控制输出
			console.log(data);
			var contentHtml = "";
			if(data.result){
			for(var i=0; i < data.datas.length;i++){
				var rowHtml = "<tr>";
				rowHtml+="<td >"+data.datas[i].policyholdersId+"</td>";
				rowHtml+="<td >"+data.datas[i].policyholdersName+"</td>";
				rowHtml+="<td >"+data.datas[i].sex+"</td>";
				rowHtml+="<td >"+data.datas[i].cardId+"</td>";
				rowHtml+="<td >"+data.datas[i].tel+"</td>";
				rowHtml+="<td >"+data.datas[i].addressShen+""+data.datas[i].addressShi+"</td>";
				rowHtml+="<td >"+data.datas[i].email+"</td>";
				rowHtml+="<td><a href='../../../queryPolicyholdersById.do?policyholdersId="+data.datas[i].policyholdersId+"'><button type='button' class='btn btn-warning' style='margin-right:17px'>修改&nbsp;</button></a>"
				rowHtml+="<button type='button' class='btn btn-danger' data-toggle='modal' data-target='.myModal' style='margin-right:17px'>删除&nbsp;</button></td></tr>";
				contentHtml += rowHtml;	
			}
				$("#tbody").append(contentHtml);
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
