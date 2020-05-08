//按条件查询加载数据
function warrantyonloads(indexPage){
			//清空表格里内容
			$("#reportInfo").empty();
			$.ajax({
				url:'http://localhost:8080/src/page/report_wb/loadWarranty.do',
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
						rowHtml+="<td >"+data.datas[i].warrantyId+"</td>";
						rowHtml+="<td >"+data.datas[i].policyholdersName+"</td>";
						rowHtml+="<td >"+data.datas[i].recognizeeIdCard+"</td>";
						rowHtml+="<td >"+data.datas[i].recognizeeName+"</td>";
						rowHtml+="<td >"+data.datas[i].policyholderPhone+"</td>";
						rowHtml+="<td >"+data.datas[i].insuranceBeginTime+"</td>";
						rowHtml+="<td >"+data.datas[i].insuranceEndTime+"</td>";
						rowHtml+="<td >"+data.datas[i].driverId+"</td>";
						rowHtml+="<td >"+data.datas[i].sailId+"</td>";
						rowHtml+="<td >"+data.datas[i].engineId+"</td>";
						var reserveTm = data.datas[i].insuranceEndTime;  
						var myDate= new Date(Date.parse(reserveTm.replace(/-/g, "/")));  
						var now = new Date();  
						if(myDate < now){
							rowHtml+="<td><button class='btn btn-sm btn-primary' disabled='disabled'>已过期</button></td>";
						}else{
							rowHtml+="<td><button class='btn btn-sm btn-primary' onclick='queryWarrantyDetails("+data.datas[i].warrantyId+");'>报&nbsp;&nbsp;&nbsp;&nbsp;案</button></td>";
						}
						rowHtml+="</tr>";
						contentHtml += rowHtml;
						}
				//alert(contentHtml);
				$("#reportInfo").append(contentHtml);
				page(data.singerData,"warrantyonloads");
		},
			error : function() {
				alert("查找失败!");
				}
			});
		} 
function queryWarrantyDetails(warrantyId){
	window.location.href="http://localhost:8080/src/page/report_wb/loadWarrantyDetial.do?warrantyId="+warrantyId;
}

//搜索
function search(indexPage){
//	alert(indexPage);
	var warrantyId=$("#warranty_number").val();
//	alert(warranty_number);
	var recognizeeIdCard = $("#license_number").val();
	var driverId = $("#credentials_number").val();
	var engineId = $("#engines_number").val();
	$("#reportInfo").empty();
	$.ajax({
		url:'http://localhost:8080/src/page/report_wb/loadWarranty.do',
		type:'post',
		dataType:'json',
		data:{
			'indexPage':indexPage,
			'warrantyId':warrantyId,
			'recognizeeIdCard':recognizeeIdCard,
			'driverId':driverId,
			'engineId':engineId
		},
		success:function(data){
			//data = $.parseJSON(data);
			//控制输出
			console.log(data);
    		var contentHtml = "";
			if(data.result){
				for (var i = 0; i<data.datas.length; i++) {
					var rowHtml ="<tr>";
					rowHtml+="<td >"+data.datas[i].warrantyId+"</td>";
					rowHtml+="<td >"+data.datas[i].policyholdersName+"</td>";
					rowHtml+="<td >"+data.datas[i].recognizeeIdCard+"</td>";
					rowHtml+="<td >"+data.datas[i].recognizeeName+"</td>";
					rowHtml+="<td >"+data.datas[i].policyholderPhone+"</td>";
					rowHtml+="<td >"+data.datas[i].insuranceBeginTime+"</td>";
					rowHtml+="<td >"+data.datas[i].insuranceEndTime+"</td>";
					rowHtml+="<td >"+data.datas[i].driverId+"</td>";
					rowHtml+="<td >"+data.datas[i].sailId+"</td>";
					rowHtml+="<td >"+data.datas[i].engineId+"</td>";
//					rowHtml+="<td><a href='../../page/report_wb/report_insert.jsp?'>";
					rowHtml+="<td><button class='btn btn-sm btn-primary' onclick='queryWarrantyDetails("+data.datas[i].warrantyId+");'>报案</button></td></tr>";
					contentHtml += rowHtml;
					}
					$("#reportInfo").append(contentHtml);
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