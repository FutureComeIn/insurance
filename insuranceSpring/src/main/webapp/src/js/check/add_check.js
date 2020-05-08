$(function loadUnCheckById() {
	var reportId = $("#reportId").val();
	$("#content").empty();
	$
			.ajax({
				url : 'http://localhost:8080/src/page/check/queryByUnCheckById.do',
				type : 'post',
				data : {
					'reportId' : reportId
				},
				dataType : 'json',
				success : function(data) {
					// data = $.parseJSON(data);
					// 控制输出
					// console.log(data);
					var contentHtml = "";
					for (var i = 0; i < data.datas.length; i++) {
						var rowHtml = "<tr><td>" + data.datas[i].reportId
								+ "</td>";
						rowHtml += "<td>" + data.datas[i].reportPersonName
								+ "</td>";
						rowHtml += "<td>" + data.datas[i].reporPersontPhone
								+ "</td>";
						rowHtml += "<td>" + data.datas[i].reportTime + "</td>";
						rowHtml += "<td id='reportReason'>"
								+ data.datas[i].reportReason + "</td>";
						rowHtml += "<td>" + data.datas[i].province + "</td>";
						rowHtml += "<td>" + data.datas[i].city + "</td>";
						rowHtml += "<td>" + data.datas[i].area + "</td>";
						rowHtml += "<td>" + data.datas[i].road + "</td>";
						rowHtml += "<td>" + data.datas[i].road_direction
								+ "</td>";
						rowHtml += "<td>" + data.datas[i].userName + "</td>";
						rowHtml += "<td>勘察中</td>";
						rowHtml += "<td><a class='btn btn-sm btn-primary' disabled='disabled'>勘察中</a></td></tr>";
						// 追加数据
						contentHtml += rowHtml;
					}
					$("#content").append(contentHtml);
				},
				error : function() {
					alert("查询失败");
				}
			})
});
function addCheck() {

	// alert(1);
	var reportId = $("#reportId").val();
	var checkAddress = $("#checkAddress").val();
	var checkTime = $("#checkTime").val();
	var mydriverName = $("#mydriverName").val();
	var oppositeDriverName = $("#oppositeDriverName").val();
	var mydriverTel = $("#mydriverTel").val();
	var oppositeDriverTel = $("#oppositeDriverTel").val();
	var myVehicleLicense = $("#myVehicleLicense").val();
	var oppositeVehicleLicense = $("#oppositeVehicleLicense").val();
	var myLicense = $("#myLicense").val();
	var oppositeLicense = $("#oppositeLicense").val();
	// alert(reportId);
	// alert(checkAddress);
	// alert(checkTime);
	// alert(mydriverName);
	// alert(oppositeDriverName);
	// alert(mydriverTel);
	// alert(oppositeDriverTel);
	// alert(myVehicleLicense);
	// alert(oppositeVehicleLicense);
	// alert(myLicense);
	// alert(oppositeLicense);
	$.ajax({
		url : 'http://localhost:8080/src/page/check/addCheck.do',
		type : 'post',
		data : {
			'reportId' : reportId,
			'checkAddress' : checkAddress,
			'checkTime' : checkTime,
			'mydriverName' : mydriverName,
			'oppositeDriverName' : oppositeDriverName,
			'mydriverTel' : mydriverTel,
			'oppositeDriverTel' : oppositeDriverTel,
			'myVehicleLicense' : myVehicleLicense,
			'oppositeVehicleLicense' : oppositeVehicleLicense,
			'myLicense' : myLicense,
			'oppositeLicense' : oppositeLicense
		},
		dataType : 'json',
		success : function(data) {
			console.log(data);
			if (data.result) {
				alert("添加成功");
				window.location.href = "checked_query.jsp";
			}
		},
		error : function() {
		}
	});
}
function save() {
	var assessmentId = $("input[type='radio']:checked").val();// 定损员Id
	// 这是勘察信息
	var reportId = $("#reportId").val();
	var checkPersonId = $("#checkPersonId").val();
	var checkName = $("#checkName").val();
	var checkAddress = $("#checkAddress").val();
	var checkTime = $("#checkTime").val();
	var mydriverName = $("#mydriverName").val();
	var oppositeDriverName = $("#oppositeDriverName").val();
	var mydriverTel = $("#mydriverTel").val();
	var oppositeDriverTel = $("#oppositeDriverTel").val();
	var myVehicleLicense = $("#myVehicleLicense").val();
	var oppositeVehicleLicense = $("#oppositeVehicleLicense").val();
	var myLicense = $("#myLicense").val();
	var oppositeLicense = $("#oppositeLicense").val();

	// 这是案件信息
	var reportReason = $("#reportReason").text();
	// alert(reportReason);
	var address = $("#checkAddress").val();
	var jieanId = $("#checkPersonId").val();
	var checkId = $("#checkPersonId").val();
	var caseStatus = 0;// 0表示未定损 //1定损中 //2未核损 3 未理赔 4 未结案 5 已结案
	
	// 勘察信息ajax
	$.ajax({
		url : 'http://localhost:8080/src/page/check/addCheck.do',
		type : 'post',
		data : {
			'checkPersonId' : checkPersonId,
			'checkName' : checkName,
			'reportId' : reportId,
			'checkAddress' : checkAddress,
			'checkTime' : checkTime,
			'mydriverName' : mydriverName,
			'oppositeDriverName' : oppositeDriverName,
			'mydriverTel' : mydriverTel,
			'oppositeDriverTel' : oppositeDriverTel,
			'myVehicleLicense' : myVehicleLicense,
			'oppositeVehicleLicense' : oppositeVehicleLicense,
			'myLicense' : myLicense,
			'oppositeLicense' : oppositeLicense
		},
		dataType : 'json',
		success : function(data) {
			console.log(data);
			if (data.result) {
				$("#uploadForm").ajaxSubmit(options); //生成勘察明细信息ajax
				alert("添加成功");
				window.location.href = "checked_query.jsp";
			}
		},
		error : function() {
		}
	});
	// 这是勘察明细信息 文件的上传
	var options = {
		url : 'http://localhost:8080/src/page/check/addCheckDetails.do',
		dataType : 'json',
		success : function(data) {
			console.log(data);
			if (data.result) {
				 //alert("上传成功");
				 //生成案件信息
				$.ajax({
					url : 'http://localhost:8080/src/page/case/addCase.do',
					type : 'post',
					data : {
						'reportId' : reportId,
						'reportReason' : reportReason,
						'address' : address,
						'jieanId' : jieanId,
						'checkId' : checkId,
						'assessmentId' : assessmentId,
						'caseStatus' : caseStatus
					},
					dataType : 'json',
					succes : function(data) {
						console.log(data);
					},
					error : function() {
						// alert("error");
					}
				});
			} else {
				alert(data.message);
			}
		},
		error : function() {
			// alert("error");
		},
		clearForm : false,
		timeout : 100000
	};
}