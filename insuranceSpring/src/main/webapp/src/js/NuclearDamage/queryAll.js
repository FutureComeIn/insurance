

//报案
function baoan(caseId){
	//alert("用户id："+caseId);
	$("#baoan").empty();
	var indexPage = 1;
	
	$.ajax({
		url:'http://localhost:8080/src/page/case/queryByCaseByTerm.do',
		type:'post',
		data:{'caseId':caseId,
			  'indexPage':indexPage
		},
		dataType : 'json',
		success : function(data) {
			//data=$.parseJSON(data);
			//console.log(data);
			var contentHtml ="";
			for (var i = 0; i < data.datas.length; i++) {
				var rowHtml = "<tr>";
				rowHtml+="<td >"+data.datas[i].caseId+"</td>";
				rowHtml+="<td >"+data.datas[i].reportId+"</td>";
				rowHtml+="<td >"+data.datas[i].reportReason+"</td>";
				rowHtml+="<td >"+data.datas[i].address+"</td>";
				rowHtml+="<td >"+data.datas[i].jieanId+"</td>";
				rowHtml+="<td >"+data.datas[i].checkId+"</td>";
				rowHtml+="<td >"+data.datas[i].assessmentId+"</td></tr>";
				contentHtml += rowHtml;	
			}
			$("#baoan").append(contentHtml);
			
			//initPageBar(data.singerData,"loadRole");
		},
		error : function() {
			alert("查找失败!");
		}
	})
}   




//勘察情况
function kancha(reportId){
	//alert("勘察id："+reportId);
	$("#kancha").empty();
	$.ajax({
		url:'http://localhost:8080/src/page/check/queryCheckByReportId.do',
		type:'post',
		data:{"reportId":reportId},
		dataType : 'json',
		success : function(data) {
			//data=$.parseJSON(data);
			//console.log(data);
			var contentHtml ="";
				var rowHtml = "<tr>";
				rowHtml+="<td >"+data.singerData.checkId+"</td>";
				rowHtml+="<td >"+data.singerData.checkName+"</td>";
				rowHtml+="<td >"+data.singerData.checkAddress+"</td>";
				rowHtml+="<td >"+data.singerData.checkTime+"</td>";
				rowHtml+="<td >"+data.singerData.mydriverName+"</td>";
				rowHtml+="<td >"+data.singerData.oppositeDriverName+"</td>";
				rowHtml+="<td >"+data.singerData.mydriverTel+"</td>";
				rowHtml+="<td >"+data.singerData.oppositeDriverTel+"</td>";
				rowHtml+="<td >"+data.singerData.myVehicleLicense+"</td>";
				rowHtml+="<td >"+data.singerData.oppositeVehicleLicense+"</td>";
				rowHtml+="<td >"+data.singerData.myLicense+"</td>";
				rowHtml+="<td >"+data.singerData.oppositeLicense+"</td></tr>";
				contentHtml += rowHtml;	
			$("#kancha").append(contentHtml);
			//initPageBar(data.singerData,"loadRole");
		},
		error : function() {
			alert("查找失败!");
		}
	})
}   
//我方定损
function dinsun(assessmentId){
	//alert(assessmentId);
	
	$("#dinsun").empty();
	$("#dinsun_duifang").empty();
	$("#dinsuninfo").empty();
	$("#dinsun_duifang_info").empty();
	
	$.ajax({
		url:'http://localhost:8080/src/page/hesun/queryAll.do',
		type:'post',
		data:{"assessmentId":assessmentId},
		dataType : 'json',
		success : function(data) {
			//alert(data.datas[0].adverseCarDamageInfo.adverseCarDamageDetailsInfo[0].damagePartName);
			//data=$.parseJSON(data);
			console.log(data);
			//我方车损信息
			var contentHtml ="";
			if(data.datas.length>0){
				if(data.datas[0].myCarDamageInfo!=null){
					var rowHtml = "<tr>";
					rowHtml+="<td >"+data.datas[0].myCarDamageInfo.name+"</td>";
					rowHtml+="<td >"+data.datas[0].myCarDamageInfo.tel+"</td>";
					rowHtml+="<td >"+data.datas[0].myCarDamageInfo.carType+"</td>";
					rowHtml+="<td >"+data.datas[0].myCarDamageInfo.carNumber+"</td>";
					rowHtml+="<td >"+data.datas[0].myCarDamageInfo.price+"</td></tr>";
					contentHtml += rowHtml;
				}
			}
			$("#dinsuninfo").append(contentHtml);
			//我方车损详情
			var contentHtml ="";
			if(data.datas.length>0){
				if(data.datas[0].myCarDamageInfo!=null){
					if(data.datas[0].myCarDamageInfo.myCarDamageDetailsInfo.length>0){
						for(var i=0;i<data.datas[0].myCarDamageInfo.myCarDamageDetailsInfo.length;i++){
							var rowHtml = "<tr>";
							rowHtml+="<td >"+data.datas[0].myCarDamageInfo.myCarDamageDetailsInfo[i].damagePartName+"</td>";
							rowHtml+="<td >"+data.datas[0].myCarDamageInfo.myCarDamageDetailsInfo[i].amount+"</td>";
							rowHtml+="<td >"+data.datas[0].myCarDamageInfo.myCarDamageDetailsInfo[i].price+"</td>";
							rowHtml+="<td >"+data.datas[0].myCarDamageInfo.myCarDamageDetailsInfo[i].place+"</td>";
							rowHtml+="<td >"+data.datas[0].myCarDamageInfo.myCarDamageDetailsInfo[i].remark+"</td>";
							rowHtml+="<td ><img style='width:100px;height:100px;' src='../../../"+data.datas[0].myCarDamageInfo.myCarDamageDetailsInfo[i].damageImg+"'/></td></tr>";
							contentHtml += rowHtml;
						}
					}
				}
			}

			$("#dinsun").append(contentHtml);
			
			
			//对方车损信息
			var contentHtml ="";
			if(data.datas.length>0){
				if(data.datas[0].myCarDamageInfo!=null){
					var rowHtml = "<tr>";
					rowHtml+="<td >"+data.datas[0].myCarDamageInfo.name+"</td>";
					rowHtml+="<td >"+data.datas[0].myCarDamageInfo.tel+"</td>";
					rowHtml+="<td >"+data.datas[0].myCarDamageInfo.carType+"</td>";
					rowHtml+="<td >"+data.datas[0].myCarDamageInfo.carNumber+"</td>";
					rowHtml+="<td >"+data.datas[0].myCarDamageInfo.price+"</td></tr>";
					contentHtml += rowHtml;
				}
			}
			$("#dinsun_duifang_info").append(contentHtml);
			
			
			//对方车损详情
			var contentHtml ="";
			if(data.datas.length>0){
				if(data.datas[0].adverseCarDamageInfo!=null){
					if(data.datas[0].adverseCarDamageInfo.adverseCarDamageDetailsInfo.length>0){
						for(var i=0;i<data.datas[0].adverseCarDamageInfo.adverseCarDamageDetailsInfo.length;i++){
							var rowHtml = "<tr>";
							rowHtml+="<td >"+data.datas[0].adverseCarDamageInfo.adverseCarDamageDetailsInfo[i].damagePartName+"</td>";
							rowHtml+="<td >"+data.datas[0].adverseCarDamageInfo.adverseCarDamageDetailsInfo[i].amount+"</td>";
							rowHtml+="<td >"+data.datas[0].adverseCarDamageInfo.adverseCarDamageDetailsInfo[i].price+"</td>";
							rowHtml+="<td >"+data.datas[0].adverseCarDamageInfo.adverseCarDamageDetailsInfo[i].place+"</td>";
							rowHtml+="<td >"+data.datas[0].adverseCarDamageInfo.adverseCarDamageDetailsInfo[i].remark+"</td>";
							rowHtml+="<td ><img style='width:100px;height:100px;' src='../../../"+data.datas[0].adverseCarDamageInfo.adverseCarDamageDetailsInfo[i].damageImg+"'/></td></tr>";
							contentHtml += rowHtml;
						}
					}
				}
			}
			$("#dinsun_duifang").append(contentHtml);
		},
		error : function() {
			alert("查找失败!");
		}
	})
}   



//险种表表
function biaozhun(caseID){
	
	//alert("用户id："+caseID);
	$("#biaozhun").empty();
	
	
	$.ajax({
		url:'http://localhost:8080/src/page/hesun/queryinsuranceType.do',
		type:'post',
		data:{"caseId":caseID},
		dataType : 'json',
		success : function(data) {
			//data=$.parseJSON(data);
			//console.log(data);
			var contentHtml ="";
			for (var i = 0; i < data.datas.length; i++) {
				var rowHtml = "<tr>";
				rowHtml+="<td >"+data.datas[i].insuranceTypeId+"</td>";
				rowHtml+="<td >"+data.datas[i].insuranceTypeName+"</td>";
				rowHtml+="<td >"+data.datas[i].insuranceTerm+"</td>";
				rowHtml+="<td >"+data.datas[i].insuranceTypeRemark+"</td>";
				rowHtml+="<td >"+data.datas[i].insuranceTypeSize+"</td>";
				rowHtml+="<td >"+data.datas[i].insuranceTypePrice+"</td></tr>";
				contentHtml += rowHtml;	
			}
			$("#biaozhun").append(contentHtml);
			
			//initPageBar(data.singerData,"loadRole");
		},
		error : function() {
			alert("查找失败!");
		}
	})
}   

//保单
function baodan(warrantyId){
	
	$("#baodan").empty();
	
	$.ajax({
		url:'http://localhost:8080/src/page/hesun/queryWarrantyById.do',
		type:'post',
		data:{"warrantyId":warrantyId},
		dataType : 'json',
		success : function(data) {
			//data=$.parseJSON(data);
			console.log(data);
			var contentHtml ="";
		//	for (var i = 0; i < data.datas.length; i++) {
			if(data.datas.singerData!=null){}
				var rowHtml = "<tr>";
				rowHtml+="<td >"+data.singerData.policyholdersName+"</td>";
				rowHtml+="<td >"+data.singerData.policyholderPhone+"</td>";
				rowHtml+="<td >"+data.singerData.recognizeeName+"</td>";
				rowHtml+="<td >"+data.singerData.recognizeeIdCard+"</td>";
				rowHtml+="<td >"+data.singerData.insuranceBeginTime+"</td>";
				rowHtml+="<td >"+data.singerData.insuranceEndTime+"</td>";
				rowHtml+="<td >"+data.singerData.username+"</td>";
				rowHtml+="<td >"+data.singerData.carTypeName+"</td>";
				rowHtml+="<td >"+data.singerData.insurancePrice+"</td>";
				rowHtml+="<td >"+data.singerData.warrantyPrice+"</td>";
				rowHtml+="<td >"+data.singerData.signingDate+"</td>";
				rowHtml+="<td >"+data.singerData.paymentDate+"</td>";
				rowHtml+="<td >"+data.singerData.sailId+"</td>";
				rowHtml+="<td >"+data.singerData.driverId+"</td>";
				rowHtml+="<td >"+data.singerData.engineId+"</td></tr>";
				contentHtml += rowHtml;	
		//	}
			$("#baodan").append(contentHtml);
			
			//initPageBar(data.singerData,"loadRole");
		},
		error : function() {
			alert("查找失败!");
		}
	})
}   
