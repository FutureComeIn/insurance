<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>

	<head>
		<meta charset="UTF-8">
		<title>保单修改</title>
			<!-- Bootstrap -->
	<!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
	<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
	
	<link href="../../../vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="../../../vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    
	<!-- 可选的 Bootstrap 主题文件（一般不用引入） -->
	<link href="css/bootstrap-theme.min.css" rel="stylesheet" type="text/css" />
		<!-- jQuery -->
     <script src="../../../src/js/jquery-1.8.3.js"></script>
	<script type="text/javascript" src="js/jquery-1.11.1.js"></script>
	<script>
	function updateWarranty(){
		var warrantyId=$("#warrantyId").val();
		var policyholdersTel=$("#policyholdersTel").val();
		
		var recognizeeId=$("#recognizeeId").val();
		var tel=$("#recognizeeTel").val();
		var email=$("#recognizeeEmail").val();
		var bankNumber=$("#bankNumber").val();
		
		var policyholdersId=$("#policyholdersId").val();
		var policyholdersTel=$("#policyholdersTel").val();
		var policyholdersEmail=$("#policyholdersEmail").val();
		if(window.confirm("确认修改么？")){
			$.ajax({
				url:'http://localhost:8080/updateWarranty2.do',
				type:'post',
				data:{
					'policyholdersId':policyholdersId,
					'tel':policyholdersTel,
					'email':policyholdersEmail
				},
				dataType : 'json',
				success : function(data) {
					if(data.result){
						
					}
				}
			});	
			
			$.ajax({
				url:'http://localhost:8080/updateWarranty1.do',
				type:'post',
				data:{
					'recognizeeId':recognizeeId,
					'tel':tel,
					'email':email,
					'bankNumber':bankNumber
				},
				dataType : 'json',
				success : function(data) {
					if(data.result){
					}
				}
			});
			
			$.ajax({
				url:'http://localhost:8080/updateWarranty.do',
				type:'post',
				data:{
					'warrantyId':warrantyId,
					'policyholderPhone':policyholdersTel
				},
				dataType : 'json',
				success : function(data) {
					var result = "result";
					if(data.result){
						alert("修改成功！");
						window.location.href="src/page/insurance_manage/Insurance_querying.jsp";
					}else{
						alert("修改失败！");
					}
				},
				error : function() {
					alert("修改失败!");
				}
			});
	}
}  

	</script>
	</head>
	
 	 <style type="text/css">
					#add_pros{
						font-size: 25px;
						text-align: center;
					}
					#tab{width: 100%;}
					#pro_bg{width: 80%;}	
	</style>
	<body style="background: #F7F7F7;">
			 <form>
				  <div id="add_pros">
	        		投保人详细信息
	        	  </div>
	        	  <input type="hidden" class="form-control" id="policyholdersId" name="policyholdersId" value="${papi.policyholdersId }">
	        	  <input type="hidden" class="form-control" id="recognizeeId" name="recognizeeId" value="${rapi.recognizeeId }">
	        	  <input type="hidden" class="form-control" id="warrantyId" name="warrantyId" value="${wapi.warrantyId }">
	        	  <input type="hidden" class="form-control" id="carTypeId" name="carTypeId" value="${capi.carTypeId }">
	        	  <div id="tab">
	        	    <table id="pro_bg" class="table table-bordered" align="center">
							<tr>
								<td>投保人姓名:<br><input type="text" class="form-control" id="policyholdersName" name="policyholdersName" value="${papi.policyholdersName }" disabled="disabled"></td>
								<td>身份证:<br><input type="text" class="form-control" id="policyholdersCardId" name="policyholdersCardId" value="${papi.cardId }" disabled="disabled"></td>
								<c:if test="${papi.sex=='男' }">
        			   			 <td>性别：<br><label class="radio-inline">
  										<input type="radio" name="sex" id="sex" value="男" checked="checked" disabled="disabled"> 男
								</label>
								<label class="radio-inline">
  										<input type="radio" name="sex" id="sex" value="女" disabled="disabled"> 女
								</label>
								</td>
			        			</c:if>
			        			<c:if test="${papi.sex=='女' }">
			        		    <td>性别：<br><label class="radio-inline">
			  										<input type="radio" name="sex" id="sex" value="男" disabled="disabled"> 男
											</label>
											<label class="radio-inline">
			  										<input type="radio" name="sex" id="sex" value="女" checked="checked" disabled="disabled"> 女
											</label>
							    </td>
			        			</c:if>			
							
							</tr>
							<tr>
								<td>联系地址/省：<br><select id="PaddressShen" class="form-control" disabled="disabled">
        													<option id="bb" >${papi.addressShen }</option>			</select>
			        			</td>
			        			<td>联系地址/市：<br><select id="PaddressShi" class="form-control" disabled="disabled">
			        										<option id="aa" >${papi.addressShi }</option>			</select>
			        			</td>
			        			<td>联系电话：<br><input type="text" class="form-control" name="policyholdersTel" id="policyholdersTel" value="${papi.tel }"></td>
								<td>邮箱:<input type="text" class="form-control" id="policyholdersEmail" name="policyholdersEmail" value="${papi.email }"></td>
							</tr>
					</table>
				</div>
			</form>
			
			<form>
				  <div id="add_pros">
	        		被保人详细信息
	        	  </div>
	        	  <div id="tab">
	        	    <table id="pro_bg" class="table table-bordered" align="center">
							<tr>
								<td>被保人姓名:<br><input type="text" class="form-control" id="recognizeeName" name="recognizeeName" value="${rapi.recognizeeName }" disabled="disabled"></td>
								<td>身份证:<br><input type="text" class="form-control" id="recognizeeCardId" name="recognizeeCardId" value="${rapi.cardId }" disabled="disabled"></td>
								<c:if test="${rapi.sex=='男' }">
        			   			 <td>性别：<br><label class="radio-inline">
  										<input type="radio" name="sex" id="sex" value="男" checked="checked" disabled="disabled"> 男
								</label>
								<label class="radio-inline">
  										<input type="radio" name="sex" id="sex" value="女" disabled="disabled"> 女
								</label>
								</td>
			        			</c:if>
			        			<c:if test="${rapi.sex=='女' }">
			        		    <td>性别：<br><label class="radio-inline">
			  										<input type="radio" name="recognizeeSex" id="recognizeeSex" value="男" disabled="disabled"> 男
											</label>
											<label class="radio-inline">
			  										<input type="radio" name="recognizeeSex" id="recognizeeSex" value="女"  checked="checked" disabled="disabled"> 女
											</label>
							    </td>
			        			</c:if>			
								
							</tr>
							<tr>
								<td>联系地址/省：<br><select id="RaddressShen" class="form-control" disabled="disabled">
        													<option id="bb" >${rapi.addressShen }</option>			</select>
			        			</td>
			        			<td>联系地址/市：<br><select id="RaddressShi" class="form-control" disabled="disabled">
			        										<option id="aa" >${rapi.addressShi }</option>			</select>
			        			</td>
			        			<td>联系电话：<br><input type="text" class="form-control" name="recognizeeTel" id="recognizeeTel" value="${rapi.tel }"/></td>
								<td>邮箱:<br><input type="text" class="form-control" id="recognizeeEmail" name="recognizeeEmail" value="${rapi.email }"></td>
							</tr>
							<tr>
								<td>银行账户:<br><input type="text" class="form-control" id="bankNumber" name="bankNumber" value="${rapi.bankNumber }"></td>
								<td>行驶证编号:<br><input type="text" class="form-control" id="vehicleLicenseId" name="vehicleLicenseId" value="${rapi.vehicleLicenseId }" disabled="disabled"></td>
								<td>驾驶证号码:<br><input type="text" class="form-control" id="driveId" name="driveId" value="${rapi.driveId }" disabled="disabled"></td>
								<td>发动机编号:<br><input type="text" class="form-control" id="engineId" name="engineId" value="${rapi.engineId }" disabled="disabled"></td>
							</tr>
					</table>
				</div>
			</form>

			<form>
				  <div id="add_pros">
	        		车辆详细信息
	        	  </div>
	        	  <div id="tab">
	        	    <table id="pro_bg" class="table table-bordered" align="center">
							<tr>
								<td>车辆名称:<br><input type="text" class="form-control" id="carName" name="carName" value="${capi.carName }" disabled="disabled"></td>
								<td>车辆品牌:<br><input type="text" class="form-control" id="carBrand" name="carBrand" value="${capi.carBrand }" disabled="disabled"></td>
								<td>车辆类型:<br><input type="text" class="form-control" id="carSpecificType" name="carSpecificType" value="${capi.carSpecificType }" disabled="disabled"></td>
								<td>市场价格:<br><input type="text" class="form-control" id="carValue" name="carValue" value="${capi.carValue }" disabled="disabled"></td>
							</tr>
					</table>
				</div>
			</form>
			
			<form>
				  <div id="add_pros">
	        		保单详细信息
	        	  </div>
	        	  <div id="tab">
	        	    <table id="pro_bg" class="table table-bordered" align="center">
							<tr>
								<td>险种编号:<br><input type="text" class="form-control" id="inputwidth" value="1111" name="type_id" disabled="disabled"></td>
								<td>保险起期:<br><input type="text" class="form-control" id="insuranceBeginTime" name="insuranceBeginTime" value="${wapi.insuranceBeginTime }" disabled="disabled"></td>
								<td>投保金额:<br><input type="text" class="form-control" id="insurancePrice" name="insurancePrice" value="${wapi.insurancePrice }" disabled="disabled"></td>
								<td>缴费时间:<br><input type="date" class="form-control" id="paymentDate" value="${wapi.paymentDate }" name="paymentDate" disabled="disabled"></td>
							</tr>
							<tr>
								<td>操作人员:<br><input type="text" class="form-control" id="username" value="${wapi.username }" name="username" disabled="disabled"></td>
								<td>保险止期:<br><input type="text" class="form-control" id="insuranceEndTime" value="${wapi.insuranceEndTime }" name="insuranceEndTime" disabled="disabled"></td>
								<td>保费金额:<br><input type="text" class="form-control" id="warrantyPrice" value="${wapi.warrantyPrice }" name="warrantyPrice" disabled="disabled"></td>
								<td>签单日期:<br><input type="text" class="form-control" id="signingDate" value="${wapi.signingDate }" name="signingDate" disabled="disabled"></td>
							</tr>
					</table>
				</div>
			</form>	
		
		<div style="width: 100%;text-align: center;">
			<button type="button" style="width: 300px;" onclick="updateWarranty()" class="btn btn-primary">提交</button>
		</div>	
	</body>

</html>