function queryAllByCar(indexPage){
	$.ajax({
		url:'http://localhost:8080/loadCarInfo.do',
		type:'post',
		data:{
			'indexPage':indexPage
		},
		dataType : 'json',
		success : function(data) {
			for (var i = 0; i < data.datas.length; i++) {
				$("#carName").append("<option>"+data.datas[i].carName+"</option>");
			}
		 },
		 error : function(){
			 alert("查询失败!");
		 }
	});
}
function aboutyanzheng(){

	var pname=$("#policyholdersName").val();
	var pcardId=$("#policyholdersCardId").val();
	var phone=$("#policyholdersTel").val();
	var psex=$("#Psex").val();
	var pemail=$("#policyholdersEmail").val();
	var psheng=$("#PaddressShen").val();
	var pshi=$("#PaddressShi").val();
	
	var idcardreg= /(^\d{15}$)|(^\d{17}([0-9]|X|x)$)/;
	var phonereg=/^((13[0-9])|(14[0-9])|(15[0-9])|(17[0-9])|(18[0-9]))\d{8}$/;
	var emailreg=/^[a-zA-Z0-9][\w\.-]*[a-zA-Z0-9]@[a-zA-Z0-9][\w\.-]*[a-zA-Z0-9]\.[a-zA-Z][a-zA-Z\.]*[a-zA-Z]$/;
	
	
	
	if(pname==""){
		alert("姓名不能为空！");
		return false;
	}else if(cardid==""){
		alert("身份证不能为空！");
		return false;
	}else if(phone==""){
		alert("电话号码不能为空");
		return false;
	}else if(pemail==""){
		alert("邮箱不能为空！");
		return false;
	}else if(!idcardreg.test(cardid)){
		alert("身份证格式不对");
		return false;
	}else if(!phonereg.test(phone)){
		alert("电话号码格式不对");
		return false;
	}else if(!emailreg.test(pemail)){
		alert("邮箱格式不对");
		return false;
	}
	
	//被保人
	else if($("#recognizeeName").val()==""){//姓名
		alert("被保人姓名不能为空啊！");
		return false;
	}else if(!phonereg.test($("#recognizeeTel").val())){//电话
		alert("被保人人电话号码格式不对");
		return false;
	}else if(!idcardreg.test($("#recognizeeCardId").val())){//身份证
		alert("被保人身份证格式不对");
		return false;
	}else if($("#driveId").val()==""){//驾驶证
		alert("请输入被保人的驾驶证");
		return false;
	}else if(!emailreg.test($("#recognizeeEmail").val())){//邮箱
		alert("被保人邮箱格式不对");
		return false;
	}else if($("#bankNumber").val()==""){//详
		alert("请填写被保人银行卡号");
		return false;
	}
}

function queryAllInsureType(){
	$("#itypeall").empty();
	$.ajax({
		url:'http://localhost:8080/queryInsuranceType.do',
		type:'post',
		dataType : 'json',
		success : function(data) {
			for (var i = 0; i < data.datas.length; i++) {
				$("#itypeall").append("<li style='float:left'><input id='"+data.datas[i].insuranceTypeSize+"' name='ck' class='"+data.datas[i].insuranceTypePrice+"' value='"+data.datas[i].insuranceTypeId+"' onclick='tianjia(this)' type='checkbox' />"+data.datas[i].insuranceTypeName+"</li>");
			}
			$("#typeNum").val(data.datas.length);
		 },
		 error : function(){
			 alert("查询失败!");
		 }
	});
}
function tianjia(obj){
	var input=$(obj);
	var value=parseInt(input.attr("id"));
	var value1=parseInt(input.attr("class"));
//	var tr=input.parent().parent().parent().parent().prev().prev();
//	var td=tr.children().eq(2).children().eq(0);
//	alert(td.html());
	var price=parseInt($("#insurancePrice").val());
	var val=parseInt($("#warrantyPrice").val());
	if(input.is(":checked")){
		price+=value;
		val+=value1;
	}else{
		price-=value;
		val-=value1;
	}
	$("#insurancePrice").val(price);
	$("#warrantyPrice").val(val);
}

function query(){
	var policyholdersCardId=$("#policyholdersCardId").val();
	$.ajax({
		url:'http://localhost:8080/queryPoByCardId.do',
		type:'post',
		data:{
			'policyholdersCardId':policyholdersCardId
		},
		dataType:'json',
		success:function(data){
			$("#policyholdersName").val(data.datas[0].policyholdersName);
			$("#Psex").val(data.datas[0].sex);
			$("#aa").text(data.datas[0].addressShen);
			$("#bb").text(data.datas[0].addressShi);
			$("#policyholdersTel").val(data.datas[0].tel);
			$("#policyholdersEmail").val(data.datas[0].email);
		},
	});
	
	var recognizeeCardId=$("#recognizeeCardId").val();
	$.ajax({
		url:'http://localhost:8080/queryReByCardId.do',
		type:'post',
		data:{
			'recognizeeCardId':recognizeeCardId
		},
		dataType:'json',
		success:function(data){
			$("#recognizeeName").val(data.datas[0].recognizeeName);
			$("#Rsex").val(data.datas[0].sex);
			$("#cc").text(data.datas[0].addressShen);
			$("#dd").text(data.datas[0].addressShi);
			$("#recognizeeTel").val(data.datas[0].tel);
			$("#recognizeeEmail").val(data.datas[0].email);
			$("#bankNumber").val(data.datas[0].bankNumber);
			$("#driveId").val(data.datas[0].driveId);
			$("#vehicleLicenseId").val(data.datas[0].vehicleLicenseId);
			$("#engineId").val(data.datas[0].engineId);
		},
	});
}
function queryCarId(){
	var carName=$("#carName").val();
	$.ajax({
		url:'http://localhost:8080/queryCarByCarName.do',
		type:'post',
		data:{
			'carTypeName':carName
		},
		dataType:'json',
		success:function(data){
	
			$("#carTypeId").val(data.datas[0].carTypeId);
			$("#carBrand").val(data.datas[0].carBrand);
			$("#carSpecificType").val(data.datas[0].carSpecificType);
			$("#carValue").val(data.datas[0].carValue);
		},
	});
}
function addWarranty(){
	// 获取投保人
	var policyholdersName=$("#policyholdersName").val();
	var policyholdersCardId=$("#policyholdersCardId").val();
	var Psex=$("#Psex").val();
	var PaddressShen=$("#PaddressShen").val();
	var PaddressShi=$("#PaddressShi").val();
	var policyholdersTel=$("#policyholdersTel").val();
	var policyholdersEmail=$("#policyholdersEmail").val();
	//添加投保人
	$.ajax({
		url:'http://localhost:8080/queryPoByCardId.do',
		type:'post',
		data:{
			'policyholdersCardId':policyholdersCardId
		},
		dataType:'json',
		success:function(data){
			if(data.result==false){
				$.ajax({
					url:'http://localhost:8080/addPolicyholders.do',
					type:'post',
					data:{
						'policyholdersName':policyholdersName,
						'cardId':policyholdersCardId,
						'sex':Psex,
						'addressShen':PaddressShen,
						'addressShi':PaddressShi,
						'tel':policyholdersTel,
						'email':policyholdersEmail
					},
					dataType : 'json',
					success : function(data) {
						$.ajax({
							url:'http://localhost:8080/queryPoByCardId.do',
							type:'post',
							data:{
								'policyholdersCardId':policyholdersCardId
							},
							dataType:'json',
							success:function(data){
								$("#policyholdersId").val(data.datas[0].policyholdersId);
								var policyholdersId=$("#policyholdersId").val();
								// 获取被保人
								var recognizeeName=$("#recognizeeName").val();
								var recognizeeCardId=$("#recognizeeCardId").val();
								var Rsex=$("#Rsex").val();
								var RaddressShen=$("#RaddressShen").val();
								var RaddressShi=$("#RaddressShi").val();
								var recognizeeTel=$("#recognizeeTel").val();
								var recognizeeEmail=$("#recognizeeEmail").val();
								var bankNumber=$("#bankNumber").val();
								var driveId=$("#driveId").val();
								var vehicleLicenseId=$("#vehicleLicenseId").val();
								var engineId=$("#engineId").val();
								//添加被保人
								$.ajax({
									url:'http://localhost:8080/queryReByCardId.do',
									type:'post',
									data:{
										'recognizeeCardId':recognizeeCardId
									},
									dataType:'json',
									success:function(data){
										if(data.result==false){
											$.ajax({
												url:'http://localhost:8080/addRecognizee.do',
												type:'post',
												data:{
													'recognizeeName':recognizeeName,
													'cardId':recognizeeCardId,
													'sex':Rsex,
													'addressShen':RaddressShen,
													'addressShi':RaddressShi,
													'tel':recognizeeTel,
													'email':recognizeeEmail,
													'bankNumber':bankNumber,
													'driveId':driveId,
													'vehicleLicenseId':vehicleLicenseId,
													'engineId':engineId
												},
												dataType : 'json',
												success : function(data) {
													$.ajax({
														url:'http://localhost:8080/queryReByCardId.do',
														type:'post',
														data:{
															'recognizeeCardId':recognizeeCardId
														},
														dataType:'json',
														success:function(data){
															$("#recognizeeId").val(data.datas[0].recognizeeId);
															var recognizeeId=$("#recognizeeId").val();
															// 获取保单信息
															var insuranceBeginTime=$("#insuranceBeginTime").val();
															var insuranceEndTime=$("#insuranceEndTime").val();
															var insurancePrice=$("#insurancePrice").val();
															var warrantyPrice=$("#warrantyPrice").val();
															var paymentDate=$("#paymentDate").val();
															var signingDate=$("#signingDate").val();
															var carName=$("#carName").val();
															var userName=$("#userName").val();
															var userId=$("#userId").val();
															var carTypeId=$("#carTypeId").val();
															
															//添加保单
															$.ajax({
																url:'http://localhost:8080/addWarranty.do',
																type:'post',
																data:{
																	'policyholdersId':policyholdersId,
																	'policyholdersName':policyholdersName,
																	'policyholderPhone':policyholdersTel,
																	'recognizeeId':recognizeeId,
																	'recognizeeName':recognizeeName,
																	'recognizeeIdCard':recognizeeCardId,
																	'insuranceBeginTime':insuranceBeginTime,
																	'insuranceEndTime':insuranceEndTime,
																	'insurancePrice':insurancePrice,
																	'warrantyPrice':warrantyPrice,
																	'paymentDate':paymentDate,
																	'signingDate':signingDate,
																	'username':userName,
																	'userId':userId,
																	'carTypeId':carTypeId,
																	'carTypeName':carName,
																	'driverId':driveId,
																	'sailId':vehicleLicenseId,
																	'engineId':engineId
																},
																dataType : 'json',
																success : function(data) {
																	if(data.result){
																		alert("添加成功！");
																		window.location.href="Insurance_querying.jsp";
																	}
																},
																error : function() {
																	alert("添加失败!");
																}
															});
														}
													});
													
												}
											});
										}else{
											$.ajax({
												url:'http://localhost:8080/queryReByCardId.do',
												type:'post',
												data:{
													'recognizeeCardId':recognizeeCardId
												},
												dataType:'json',
												success:function(data){
													$("#recognizeeId").val(data.datas[0].recognizeeId);
													var recognizeeId=$("#recognizeeId").val();
													// 获取保单信息
													var insuranceBeginTime=$("#insuranceBeginTime").val();
													var insuranceEndTime=$("#insuranceEndTime").val();
													var insurancePrice=$("#insurancePrice").val();
													var warrantyPrice=$("#warrantyPrice").val();
													var paymentDate=$("#paymentDate").val();
													var signingDate=$("#signingDate").val();
													var carName=$("#carName").val();
													var userName=$("#userName").val();
													var userId=$("#userId").val();
													var carTypeId=$("#carTypeId").val();
													
													//添加保单
													$.ajax({
														url:'http://localhost:8080/addWarranty.do',
														type:'post',
														data:{
															'policyholdersId':policyholdersId,
															'policyholdersName':policyholdersName,
															'policyholderPhone':policyholdersTel,
															'recognizeeId':recognizeeId,
															'recognizeeName':recognizeeName,
															'recognizeeIdCard':recognizeeCardId,
															'insuranceBeginTime':insuranceBeginTime,
															'insuranceEndTime':insuranceEndTime,
															'insurancePrice':insurancePrice,
															'warrantyPrice':warrantyPrice,
															'paymentDate':paymentDate,
															'signingDate':signingDate,
															'username':userName,
															'userId':userId,
															'carTypeId':carTypeId,
															'carTypeName':carName,
															'driverId':driveId,
															'sailId':vehicleLicenseId,
															'engineId':engineId
														},
														dataType : 'json',
														success : function(data) {
															if(data.result){
																alert("添加成功！");
																window.location.href="Insurance_querying.jsp";
															}
														},
														error : function() {
															alert("添加失败!");
														}
													});
												}
											});
										}
									},
								});
							}
						});
					}
				});
			}else{
				$.ajax({
					url:'http://localhost:8080/queryPoByCardId.do',
					type:'post',
					data:{
						'policyholdersCardId':policyholdersCardId
					},
					dataType:'json',
					success:function(data){
						$("#policyholdersId").val(data.datas[0].policyholdersId);
						var policyholdersId=$("#policyholdersId").val();
						// 获取被保人
						var recognizeeName=$("#recognizeeName").val();
						var recognizeeCardId=$("#recognizeeCardId").val();
						var Rsex=$("#Rsex").val();
						var RaddressShen=$("#RaddressShen").val();
						var RaddressShi=$("#RaddressShi").val();
						var recognizeeTel=$("#recognizeeTel").val();
						var recognizeeEmail=$("#recognizeeEmail").val();
						var bankNumber=$("#bankNumber").val();
						var driveId=$("#driveId").val();
						var vehicleLicenseId=$("#vehicleLicenseId").val();
						var engineId=$("#engineId").val();
						//添加被保人
						$.ajax({
							url:'http://localhost:8080/queryReByCardId.do',
							type:'post',
							data:{
								'recognizeeCardId':recognizeeCardId
							},
							dataType:'json',
							success:function(data){
								if(data.result==false){
									$.ajax({
										url:'http://localhost:8080/addRecognizee.do',
										type:'post',
										data:{
											'recognizeeName':recognizeeName,
											'cardId':recognizeeCardId,
											'sex':Rsex,
											'addressShen':RaddressShen,
											'addressShi':RaddressShi,
											'tel':recognizeeTel,
											'email':recognizeeEmail,
											'bankNumber':bankNumber,
											'driveId':driveId,
											'vehicleLicenseId':vehicleLicenseId,
											'engineId':engineId
										},
										dataType : 'json',
										success : function(data) {
											$.ajax({
												url:'http://localhost:8080/queryReByCardId.do',
												type:'post',
												data:{
													'recognizeeCardId':recognizeeCardId
												},
												dataType:'json',
												success:function(data){
													$("#recognizeeId").val(data.datas[0].recognizeeId);
													var recognizeeId=$("#recognizeeId").val();
													// 获取保单信息
													var insuranceBeginTime=$("#insuranceBeginTime").val();
													var insuranceEndTime=$("#insuranceEndTime").val();
													var insurancePrice=$("#insurancePrice").val();
													var warrantyPrice=$("#warrantyPrice").val();
													var paymentDate=$("#paymentDate").val();
													var signingDate=$("#signingDate").val();
													var carName=$("#carName").val();
													var userName=$("#userName").val();
													var userId=$("#userId").val();
													var carTypeId=$("#carTypeId").val();
													
													//添加保单
													$.ajax({
														url:'http://localhost:8080/addWarranty.do',
														type:'post',
														data:{
															'policyholdersId':policyholdersId,
															'policyholdersName':policyholdersName,
															'policyholderPhone':policyholdersTel,
															'recognizeeId':recognizeeId,
															'recognizeeName':recognizeeName,
															'recognizeeIdCard':recognizeeCardId,
															'insuranceBeginTime':insuranceBeginTime,
															'insuranceEndTime':insuranceEndTime,
															'insurancePrice':insurancePrice,
															'warrantyPrice':warrantyPrice,
															'paymentDate':paymentDate,
															'signingDate':signingDate,
															'username':userName,
															'userId':userId,
															'carTypeId':carTypeId,
															'carTypeName':carName,
															'driverId':driveId,
															'sailId':vehicleLicenseId,
															'engineId':engineId
														},
														dataType : 'json',
														success : function(data) {
															if(data.result){
																alert("添加成功！");
																window.location.href="Insurance_querying.jsp";
															}
														},
														error : function() {
															alert("添加失败!");
														}
													});
												}
											});
											
										}
									});
								}else{
									$.ajax({
										url:'http://localhost:8080/queryReByCardId.do',
										type:'post',
										data:{
											'recognizeeCardId':recognizeeCardId
										},
										dataType:'json',
										success:function(data){
											$("#recognizeeId").val(data.datas[0].recognizeeId);
											var recognizeeId=$("#recognizeeId").val();
											// 获取保单信息
											var insuranceBeginTime=$("#insuranceBeginTime").val();
											var insuranceEndTime=$("#insuranceEndTime").val();
											var insurancePrice=$("#insurancePrice").val();
											var warrantyPrice=$("#warrantyPrice").val();
											var paymentDate=$("#paymentDate").val();
											var signingDate=$("#signingDate").val();
											var carName=$("#carName").val();
											var userName=$("#userName").val();
											var userId=$("#userId").val();
											var carTypeId=$("#carTypeId").val();
											
											//添加保单
											$.ajax({
												url:'http://localhost:8080/addWarranty.do',
												type:'post',
												data:{
													'policyholdersId':policyholdersId,
													'policyholdersName':policyholdersName,
													'policyholderPhone':policyholdersTel,
													'recognizeeId':recognizeeId,
													'recognizeeName':recognizeeName,
													'recognizeeIdCard':recognizeeCardId,
													'insuranceBeginTime':insuranceBeginTime,
													'insuranceEndTime':insuranceEndTime,
													'insurancePrice':insurancePrice,
													'warrantyPrice':warrantyPrice,
													'paymentDate':paymentDate,
													'signingDate':signingDate,
													'username':userName,
													'userId':userId,
													'carTypeId':carTypeId,
													'carTypeName':carName,
													'driverId':driveId,
													'sailId':vehicleLicenseId,
													'engineId':engineId
												},
												dataType : 'json',
												success : function(data) {
													if(data.result){
														alert("添加成功！");
														window.location.href="Insurance_querying.jsp";
													}
												},
												error : function() {
													alert("添加失败!");
												}
											});
										}
									});
								}
							},
						});
					}
				});
			}
		},
	});	
}  
