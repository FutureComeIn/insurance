function loadCase(indexPage){
	$("#content").empty();
	$.ajax({
		url:'http://localhost:8080/src/page/case/queryByList.do',
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
				var rowHtml = "<tr><td>"+data.datas[i].caseId+"</td>";
				rowHtml += "<td>"+data.datas[i].reportCase.reportPersonName+"</td>";
				rowHtml += "<td>"+data.datas[i].reportReason+"</td>";
				rowHtml += "<td>"+data.datas[i].address+"</td>";
				if(data.datas[i].jieanUser!=null){
					rowHtml += "<td>"+data.datas[i].jieanUser.userName+"</td>";
				}else{
					rowHtml += "<td></td>";
				}
				if(data.datas[i].checkUser!=null){
					rowHtml += "<td>"+data.datas[i].checkUser.userName+"</td>";
				}else{
					rowHtml += "<td></td>";
				}
				if(data.datas[i].assessmentUser!=null){
					rowHtml += "<td>"+data.datas[i].assessmentUser.userName+"</td>";
				}else{
					rowHtml += "<td></td>";
				}
				if(data.datas[i].nuclearDamageUser!=null){
					rowHtml += "<td>"+data.datas[i].nuclearDamageUser.userName+"</td>";
				}else{
					rowHtml += "<td></td>";
				}
				if(data.datas[i].settlementUser!=null){
					rowHtml += "<td>"+data.datas[i].settlementUser.userName+"</td>";
				}else{
					rowHtml += "<td></td>";
				}
				if(data.datas[i].settleUser!=null){
					rowHtml += "<td>"+data.datas[i].settleUser.userName+"</td>";
				}else{
					rowHtml += "<td></td>";
				}
				if(data.datas[i].caseStatus==0){
					rowHtml += "<td>未定损</td>";
					rowHtml += "<td><a class='btn btn-sm btn-primary' href='../dinsun/loss_info.jsp?caseId="+data.datas[i].caseId+"'>定损</a></td></tr>";
				}
				else if(data.datas[i].caseStatus==1){
					rowHtml += "<td>定损中</td>";
					rowHtml += "<td><a class='btn btn-sm btn-primary' href='../dinsun/loss_assessment.jsp?caseId="+data.datas[i].caseId+"'>定损中</a></td></tr>";
				}
				else if(data.datas[i].caseStatus==2){
					rowHtml += "<td>未核损</td>";
					rowHtml += "<td><a class='btn btn-sm btn-primary' href='../dinsun/hesun_info.jsp?caseId="+data.datas[i].caseId+"'>核损</a></td></tr>";
				}
				else if(data.datas[i].caseStatus==3){
					rowHtml += "<td>未理赔</td>";
					rowHtml += "<td><a class='btn btn-sm btn-primary' href='../settle_lh/settle.jsp?caseId="+data.datas[i].caseId+"'>理赔</a></td></tr>";
				}
				else if(data.datas[i].caseStatus==4){
					rowHtml += "<td>未结案</td>";
					rowHtml += "<td><a class='btn btn-sm btn-primary'  onclick='settleCase(this)'>结案</a></td></tr>";
				}
				else {
					rowHtml += "<td>已结案</td>";
					rowHtml += "<td><a class='btn btn-sm btn-primary' disabled='disabled'>已结案</a></td></tr>";
				}
				//追加数据
				contentHtml += rowHtml;
			}
			$("#content").append(contentHtml);
			page(data.singerData,"loadCase");
			}else{
				alert(data.message);
			}
		},
		error:function(){
			alert("查询失败");
		}
	})
}
function settleCase(obj)
{
	var caseId = $(obj).parent().parent().children("td").eq(0).text();
	var caseStatus = 5;
	if(confirm("您确定要结案吗?")){
		$.ajax({
			url:'http://localhost:8080/src/page/case/updateCase.do',
			type:'post',
			data:{
				'caseId':caseId,
				'caseStatus':caseStatus
			},
			dataType:'json',
			success:function(data){
				console.log(data);
				if(data.result){
					alert(data.message);
					window.location.href="case_query.jsp";
				}else{
					alert(data.message);
				}
			},
			error:function(){
				alert("更新失败");
			}
		});
	}
}
function search(indexPage){
	var caseId = $("#caseId").val();
	var reportReason = $("#reportReason").val();
	var address = $("#address").val();
	$("#content").empty();
	$.ajax({
		url:'http://localhost:8080/src/page/case/queryByList.do',
		type:'post',
		data:{
			'indexPage':indexPage,
			'caseId':caseId,
			'reportReason':reportReason,
			'address':address
		},
		dataType:'json',
		success:function(data){
			//data = $.parseJSON(data);
			//控制输出
			console.log(data);
			var contentHtml = "";
			if(data.result){
				for(var i=0; i < data.datas.length;i++){
					var rowHtml = "<tr><td>"+data.datas[i].caseId+"</td>";
					rowHtml += "<td>"+data.datas[i].reportCase.reportPersonName+"</td>";
					rowHtml += "<td>"+data.datas[i].reportReason+"</td>";
					rowHtml += "<td>"+data.datas[i].address+"</td>";
					rowHtml += "<td>"+data.datas[i].reportCase.userName+"</td>";
					rowHtml += "<td>"+data.datas[i].reportCase.userName+"</td>";
					rowHtml += "<td>"+data.datas[i].reportCase.userName+"</td>";
					rowHtml += "<td>"+data.datas[i].reportCase.userName+"</td>";
					rowHtml += "<td>"+data.datas[i].reportCase.userName+"</td>";
					rowHtml += "<td>"+data.datas[i].reportCase.userName+"</td>";
					if(data.datas[i].caseStatus==0){
						rowHtml += "<td>未定损</td>";
						rowHtml += "<td><a class='btn btn-sm btn-danger' style='margin-right:10px;'>删除</a>";
						rowHtml += "<a class='btn btn-sm btn-primary'>定损</a></td></tr>";
					}
					else if(data.datas[i].caseStatus==1){
						rowHtml += "<td>定损中</td>";
						rowHtml += "<td><button class='btn btn-sm btn-danger' style='margin-right:10px;'>删除</a>";
						rowHtml += "<button class='btn btn-sm btn-primary'>定损中</button></td></tr>";
					}
					else if(data.datas[i].caseStatus==2){
						rowHtml += "<td>未核损</td>";
						rowHtml += "<td><button class='btn btn-sm btn-danger' style='margin-right:10px;'>删除</a>";
						rowHtml += "<button class='btn btn-sm btn-primary'>核损</button></td></tr>";
					}
					else if(data.datas[i].caseStatus==3){
						rowHtml += "<td>未理赔</td>";
						rowHtml += "<td><a class='btn btn-sm btn-danger' style='margin-right:10px;'>删除</a>";
						rowHtml += "<a class='btn btn-sm btn-primary'>理赔</button></td></tr>";
					}
					else if(data.datas[i].caseStatus==4){
						rowHtml += "<td>未结案</td>";
						rowHtml += "<td><a class='btn btn-sm btn-danger' style='margin-right:10px;'>删除</a>";
						rowHtml += "<a class='btn btn-sm btn-primary'>结案</button></td></tr>";
					}
					else {
						rowHtml += "<td>已结案</td>";
						rowHtml += "<td><a class='btn btn-sm btn-danger' style='margin-right:10px;'>删除</a>";
						rowHtml += "<a class='btn btn-sm btn-primary'>已结案</a></td></tr>";
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