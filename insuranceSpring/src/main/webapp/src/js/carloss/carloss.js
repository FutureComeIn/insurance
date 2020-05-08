//function loadUnCheck(indexPage){
//	
//	$("#content").empty();
//	$.ajax({
//		url:'http://localhost:8080/src/page/check/queryByUnCheck.do',
//		type:'post',
//		data:{
//			'indexPage':indexPage
//		},
//		dataType:'json',
//		success:function(data){
//			//data = $.parseJSON(data);
//			//控制输出
//			//console.log(data);
//			var contentHtml = "";
//			for(var i=0; i < data.datas.length;i++){
//				var rowHtml = "<tr><td>"+data.datas[i].reportId+"</td>";
//				rowHtml += "<td>"+data.datas[i].reportPersonName+"</td>";
//				rowHtml += "<td>"+data.datas[i].reportPersonPhone+"</td>";
//				rowHtml += "<td>"+data.datas[i].reportTime+"</td>";
//				rowHtml += "<td>"+data.datas[i].reportReason+"</td>";
//				rowHtml += "<td>"+data.datas[i].province+"</td>";
//				rowHtml += "<td>"+data.datas[i].city+"</td>";
//				rowHtml += "<td>"+data.datas[i].area+"</td>";
//				rowHtml += "<td>"+data.datas[i].road+"</td>";
//				rowHtml += "<td>"+data.datas[i].road_direction+"</td>";
//				rowHtml += "<td>"+data.datas[i].userName+"</td>";
//				rowHtml += "<td>"+data.datas[i].caseStatus+"</td>";
//				rowHtml += "<td><a href='add_check.jsp' class='btn btn-sm btn-primary'>我要勘察</a></td></tr>";
//				//追加数据
//				contentHtml += rowHtml;
//			}
//			$("#content").append(contentHtml);
//		},
//		error:function(){
//			alert("查询失败");
//		}
//	})
//}
function ouradd(){
				var tab=$("#ours");
				var div=tab.parent();
				var heig=div.css("height");
				value=parseInt(heig.substr(0,heig.lastIndexOf("px")))+100;
				heig=value+"px";
				var tr="<tr class='other'><td id='textcenter' onclick='a()'>受损部件</td>"+
				"<td><input type='text' class='form-control inputwidth' id='damagePartName' name='damagePartName'><input type='hidden' value='1' id='inputwidth' name='damagePartId' ></td>"+
				"<td id='textcenter'>受损数量</td><td><input type='text' class='form-control inputwidth' id='inpuamounttwidth' name='amount' onkeyup='lossmenber(this);'></td>"
				+"<td id='textcenter'>单价</td><td><input type='text' class='form-control inputwidth' id='price' name='price' onkeyup='lossprice(this);'></td>"
				+"<td id='textcenter'>小计金额</td><td>0</td></tr><tr><td id='textcenter'>维修地点</td>"
				+"<td><input type='text' class='form-control inputwidth' id='place' name='place'></td>"
				+"<td id='textcenter'>受损图片</td><td><input type='file' name='damageImg'/></td><td id='textcenter'  style='height: 42px;'>备注</td>"
				+"<td><input type='text' class='form-control inputwidth' id='remark' name='remark'></td>"
				+"<td><img src='../../img/sign_add.png' onclick='ouradd();'/></td>"
				+"<td><img src='../../img/sign_remove.png' onclick='oursub(this);'/></td></tr>";
				tab.append($(tr));
				div.css({"height":heig})
}

function otheradd(){
	var tab=$("#other");
	var div=tab.parent();
	var heig=div.css("height");
	value=parseInt(heig.substr(0,heig.lastIndexOf("px")))+100;	
	heig=value+"px";
	//alert(heig);
	var tr="<tr class='other'><td id='textcenter' onclick='a()'>受损部件</td>"+
	"<td><input type='text' class='form-control inputwidth' id='damagePartName' name='damagePartName'><input type='hidden' value='1' id='damagePartId' name='damagePartId' ></td>"+
	"<td id='textcenter'>受损数量</td><td><input type='text' class='form-control inputwidth' id='amount' name='amount' onkeyup='lossmenber(this);'></td>"
	+"<td id='textcenter'>单价</td><td><input type='text' class='form-control inputwidth' id='price' name='price' onkeyup='lossprice(this);'></td>"
	+"<td id='textcenter'>小计金额</td><td>0</td></tr><tr><td id='textcenter'>维修地点</td>"
	+"<td><input type='text' class='form-control inputwidth' id='place' name='place'></td>"
	+"<td id='textcenter'>受损图片</td><td><input type='file' name='damageImg'/></td><td id='textcenter'  style='height: 42px;'>备注</td>"
	+"<td><input type='text' class='form-control inputwidth' id='remark' name='remark'></td>"
	+"<td><img src='../../img/sign_add.png' onclick='otheradd();'/></td>"
	+"<td><img src='../../img/sign_remove.png' onclick='oursub(this);'/></td></tr>";
	tab.append($(tr));
	div.css({"height":heig})
}

function oursub(obj){
	var td=$(obj).parent();
	var tr2=td.parent();
	var tr1=tr2.prev();
	var cla=tr1.attr("class");
	var carname=tr1.children().eq(1).children().val();
	var div=td.parent().parent().parent().parent()
	var value=div.css("height");
	var heig=parseInt(value.substr(0,value.lastIndexOf("px")))-100;
	//alert(heig);
	if(cla=="one"){
		return false;
	}
	if(carname!=""){
			if(window.confirm("你确定要删除已编辑的信息吗？")){
				tr1.remove();
				tr2.remove();
			}else{
				return false;
			}
		}
	tr1.remove();
	tr2.remove();
	div.css({"height":heig})
}


function onloadCarLossCase(assessmentId,indexPage){
	$("#caseinfo").empty();
	//alert($("#searchcaseId").val);
	var search=parseInt($("#searchcaseId").val);
	if(isNaN(search)){
		search=null;
	}
	//alert(search);
	$.ajax({
		url:'http://localhost:8080/src/page/dinsun/queryCaseInfoByHandleAndCurrentPage.do',
		type:'post',
		data:{
			'assessmentId':assessmentId,
			'indexPage':indexPage,
			'caseId':search
		},
		dataType:'json',
		success:function(data){
			//控制输出
			console.log(data);
			var contentHtml = "";
			for(var i=0; i < data.datas.length;i++){
				var rowHtml = "<tr><td>"+data.datas[i].caseId+"</td>";
				if(data.datas[i].reportCase==null){
					rowHtml += "<td>无</td>";
					rowHtml += "<td>无</td>";
					rowHtml += "<td>无</td>";
				}else{
					rowHtml += "<td>"+data.datas[i].reportCase.reportPersonName+"</td>";
					rowHtml += "<td>"+data.datas[i].reportCase.reporPersontPhone+"</td>";
					rowHtml += "<td>"+data.datas[i].reportCase.reportTime+"</td>";
				}
				rowHtml += "<td>"+data.datas[i].address+"</td>";
				rowHtml += "<td>"+data.datas[i].reportReason+"</td>";
				
				 if(data.datas[i].caseStatus==1){
					rowHtml += "<td>定损中</td>";
					rowHtml += "<td><a onclick='updatedinsun("+data.datas[i].caseId+","+assessmentId+")' class='btn btn-sm btn-primary'>定损</a>&nbsp;<a class='btn btn-sm btn-primary' onclick='seedetails("+data.datas[i].caseId+","+data.datas[i].assessmentId+")'>详情</a></td></tr>";
				}else if(data.datas[i].caseStatus==0){
					rowHtml += "<td>未定损</td>";
					rowHtml += "<td><a onclick='tobeginlosspage("+data.datas[i].caseId+")' class='btn btn-sm btn-primary'>定损</a>&nbsp;<a class='btn btn-sm btn-primary' disabled='disabled'>详情</a></td></tr>";
				}else if(data.datas[i].caseStatus==2){
					rowHtml += "<td>已定损</td>";	
					rowHtml += "<td><a class='btn btn-sm btn-primary' disabled='disabled'>定损</a>&nbsp;<a class='btn btn-sm btn-primary' onclick='seedetails("+data.datas[i].caseId+","+data.datas[i].assessmentId+")'>详情</a></td></tr>";
				}
				//追加数据
				contentHtml += rowHtml;
			}
			$("#caseinfo").append(contentHtml);
			page(data.singerData,"onloadCarLossCase",assessmentId);
		},
		error:function(){
			alert("查询失败");
		}
	})
}

function loadassessment(UserId,indexpage){
	//var userId=1;
	$("#assessment").empty();
	$.ajax({
		url:'http://localhost:8080/src/page/dinsun/queryAssessmentByTerm.do',
		type:'post',
		data:{
			'UserId':UserId,
			'indexPage':indexpage
		},
		dataType:'json',
		success:function(data){
//			//控制输出
			console.log(data);
			var contentHtml = "";
			for(var i=0; i < data.datas.length;i++){
				var rowHtml = "<tr><td>"+data.datas[i].caseId+"</td>";
				if(data.datas[i].myCarDamageInfo!=null ){
					rowHtml += "<td>"+data.datas[i].myCarDamageInfo.name+"</td>";
					rowHtml += "<td>"+data.datas[i].myCarDamageInfo.price+"</td>";	
				}else{
					rowHtml += "<td>无</td>";
					rowHtml += "<td>无</td>";
				}
				if(data.datas[i].adverseCarDamageInfo!=null){
					rowHtml += "<td>"+data.datas[i].adverseCarDamageInfo.name+"</td>";
					rowHtml += "<td>"+data.datas[i].adverseCarDamageInfo.price+"</td>";
				}else{ 
					rowHtml += "<td>无</td>";
					rowHtml += "<td>无</td>";
				}
					rowHtml += "<td>"+"</td>";
				rowHtml += "<td>"+data.datas[i].assessmentTime+"</td>";
				rowHtml += "<td>"+data.datas[i].totalPrice+"</td>";
				if(data.datas[i].status==0){
					//rowHtml += "<td>未定损</td>";
				}else if(data.datas[i].status==1){
					rowHtml += "<td>定损中</td>";
					rowHtml += "<td><button type='button' class='btn btn-primary btn-xs' data-toggle='modal' data-target='#upd-UserInfo' onclick='updatedinsun("+data.datas[i].caseId+","+data.datas[i].assessmentId+");'> 修改</button>";
					rowHtml +="<button type='button' onclick='deldinsun("+data.datas[i].caseId+","+data.datas[i].assessmentId+","+UserId+","+indexpage+")' class='btn btn-danger btn-xs'>删除</button>";
					rowHtml +="&nbsp;<a class='btn btn-xs btn-primary' onclick='seedetails("+data.datas[i].caseId+","+data.datas[i].assessmentId+")'>详情</a></td></tr>";
				}else{
					rowHtml += "<td>已定损</td>";
					rowHtml += "<td><button type='button' class='btn btn-primary btn-xs' data-toggle='modal' data-target='#upd-UserInfo' disabled='disabled'> 修改</button>";
					rowHtml +="<button type='button'  class='btn btn-danger btn-xs' disabled='disabled'>删除</button>";
					rowHtml +="&nbsp;<a class='btn btn-xs btn-primary' onclick='seedetails("+data.datas[i].caseId+","+data.datas[i].assessmentId+")'>详情</a></td></tr>";
				}
				
				//追加数据
				contentHtml += rowHtml;
			}
			$("#assessment").append(contentHtml);
			page(data.singerData,"loadassessment",UserId);
		},
		error:function(){
			alert("查询失败");
		}
	})
}
function updatedinsun(caseId,assessmentId){
	window.location.href="http://localhost:8080/src/page/dinsun/queryAssessmentAllInfo.do?assessmentId="+assessmentId+"&caseId="+caseId;
}

function deldinsun(caseId,assessmentId,userId,indexpage){
	if(window.confrim("你确定要删除定损信息吗？")){
	}else{
		return false;
	}
	$.ajax({
		url:'http://localhost:8080/src/page/dinsun/DeleteAssessment.do',
		type:'post',
		data:{
			'assessmentId':assessmentId,
			'caseId':caseId
		},
		dataType:'json',
		success:function(data){
			alert(data.message);
			loadassessment(userId,indexpage);
		},
		error:function(){
			alert("查询失败");
		}
	})
}


function seedetails(caseId,assessmentId){
	window.location.href="http://localhost:8080/src/page/dinsun/seeLossDetails.do?assessmentId="+assessmentId+"&caseId="+caseId;
}


//分页函数
function page(page,method,param){
	$("#page").empty();
	var pagehtml = "<button class='btn btn-sm btn-primary' style='margin-right:20px' onclick='"+method+"("+param+",\"1\")'>首页</button>";
	if(page.indexPage == 1){
		pagehtml += "<button class='btn btn-sm btn-primary' style='margin-right:20px'>上一页</button>";
	}else{
		pagehtml += "<button class='btn btn-sm btn-primary' style='margin-right:20px' onclick='"+method+"("+param+",\""+(page.indexPage - 1)+"\")'>上一页</button>";
	}
	
	pagehtml += page.indexPage + "/" + page.pageCount;
	
	if(page.indexPage == page.pageCount){
		pagehtml += "<button class='btn btn-sm btn-primary' style='margin-right:20px;margin-left:20px'>下一页</button>";
	}else{
		pagehtml += "<button class='btn btn-sm btn-primary' style='margin-right:20px;margin-left:20px' onclick='"+method+"("+param+",\""+(page.indexPage + 1)+"\")'>下一页</button>";
	}
	pagehtml += "<button class='btn btn-sm btn-primary' style='margin-right:20px' onclick='"+method+"("+param+",\""+page.pageCount+"\")'>尾页</button>";
	$("#page").append(pagehtml);
}