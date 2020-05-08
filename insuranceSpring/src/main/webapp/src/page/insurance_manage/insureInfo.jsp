<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>

	<head>
		<meta charset="UTF-8">
		<title>保单详情</title>
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
	        	  <div id="tab">
	        	    <table id="pro_bg" class="table table-bordered" align="center">
							<tr>
								<td>投保人姓名:<br><input type="text" class="form-control" id="policyholdersName" name="policyholdersName" value="${papi.policyholdersName }"></td>
								<td>身份证:<br><input type="text" class="form-control" id="policyholdersCardId" name="policyholdersCardId" value="${papi.cardId }"></td>
								<c:if test="${papi.sex=='男' }">
        			   			 <td>性别：<br><label class="radio-inline">
  										<input type="radio" name="sex" id="sex" value="男" checked="checked"> 男
								</label>
								<label class="radio-inline">
  										<input type="radio" name="sex" id="sex" value="女"> 女
								</label>
								</td>
			        			</c:if>
			        			<c:if test="${papi.sex=='女' }">
			        		    <td>性别：<br><label class="radio-inline">
			  										<input type="radio" name="sex" id="sex" value="男"> 男
											</label>
											<label class="radio-inline">
			  										<input type="radio" name="sex" id="sex" value="女"  checked="checked"> 女
											</label>
							    </td>
			        			</c:if>			
							
							</tr>
							<tr>
								<td>联系地址/省：<br><select id="PaddressShen" class="form-control">
        													<option id="bb" >${papi.addressShen }</option>			</select>
			        			</td>
			        			<td>联系地址/市：<br><select id="PaddressShi" class="form-control">
			        										<option id="aa" >${papi.addressShi }</option>			</select>
			        			</td>
			        			<td>联系电话：<br><input type="text" class="form-control" name="policyholdersTel" id="policyholdersTel" value="${papi.tel }"/></td>
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
								<td>被保人姓名:<br><input type="text" class="form-control" id="recognizeeName" name="recognizeeName" value="${rapi.recognizeeName }"></td>
								<td>身份证:<br><input type="text" class="form-control" id="recognizeeCardId" name="recognizeeCardId" value="${rapi.cardId }"></td>
								<c:if test="${rapi.sex=='男' }">
        			   			 <td>性别：<br><label class="radio-inline">
  										<input type="radio" name="sex" id="sex" value="男" checked="checked"> 男
								</label>
								<label class="radio-inline">
  										<input type="radio" name="sex" id="sex" value="女"> 女
								</label>
								</td>
			        			</c:if>
			        			<c:if test="${rapi.sex=='女' }">
			        		    <td>性别：<br><label class="radio-inline">
			  										<input type="radio" name="recognizeeSex" id="recognizeeSex" value="男"> 男
											</label>
											<label class="radio-inline">
			  										<input type="radio" name="recognizeeSex" id="recognizeeSex" value="女"  checked="checked"> 女
											</label>
							    </td>
			        			</c:if>			
								
							</tr>
							<tr>
								<td>联系地址/省：<br><select id="RaddressShen" class="form-control">
        													<option id="bb" >${rapi.addressShen }</option>			</select>
			        			</td>
			        			<td>联系地址/市：<br><select id="RaddressShi" class="form-control">
			        										<option id="aa" >${rapi.addressShi }</option>			</select>
			        			</td>
			        			<td>联系电话：<br><input type="text" class="form-control" name="recognizeeTel" id="recognizeeTel" value="${rapi.tel }"/></td>
								<td>邮箱:<br><input type="text" class="form-control" id="recognizeeEmail" name="recognizeeEmail" value="${rapi.email }"></td>
							</tr>
							<tr>
								<td>银行账户:<br><input type="text" class="form-control" id="bankNumber" name="bankNumber" value="${rapi.bankNumber }"></td>
								<td>行驶证编号:<br><input type="text" class="form-control" id="vehicleLicenseId" name="vehicleLicenseId" value="${rapi.vehicleLicenseId }"></td>
								<td>驾驶证号码:<br><input type="text" class="form-control" id="driveId" name="driveId" value="${rapi.driveId }"></td>
								<td>发动机编号:<br><input type="text" class="form-control" id="engineId" name="engineId" value="${rapi.engineId }"></td>
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
								<td>车辆名称:<br><input type="text" class="form-control" id="carName" name="carName" value="${capi.carName }"></td>
								<td>车辆品牌:<br><input type="text" class="form-control" id="carBrand" name="carBrand" value="${capi.carBrand }"></td>
								<td>车辆类型:<br><input type="text" class="form-control" id="carSpecificType" name="carSpecificType" value="${capi.carSpecificType }"></td>
								<td>市场价格:<br><input type="text" class="form-control" id="carValue" name="carValue" value="${capi.carValue }"></td>
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
								<td>险种编号:<br><input type="text" class="form-control" id="inputwidth" value="1111" name="type_id"></td>
								<td>保险起期:<br><input type="text" class="form-control" id="insuranceBeginTime" name="insuranceBeginTime" value="${wapi.insuranceBeginTime }"></td>
								<td>投保金额:<br><input type="text" class="form-control" id="insurancePrice" name="insurancePrice" value="${wapi.insurancePrice }"></td>
								<td>缴费时间:<br><input type="text" class="form-control" id="paymentDate" value="${wapi.paymentDate }" name="paymentDate"></td>
							</tr>
							<tr>
								<td>操作人员:<br><input type="text" class="form-control" id="username" value="${wapi.username }" name="username"></td>
								<td>保险止期:<br><input type="text" class="form-control" id="insuranceEndTime" value="${wapi.insuranceEndTime }" name="insuranceEndTime"></td>
								<td>保费金额:<br><input type="text" class="form-control" id="warrantyPrice" value="${wapi.warrantyPrice }" name="warrantyPrice"></td>
								<td>签单日期:<br><input type="text" class="form-control" id="signingDate" value="${wapi.signingDate }" name="signingDate"></td>
							</tr>
					</table>
				</div>
			</form>	
		
		<div style="width: 100%;text-align: center;">
		<a href="src/page/insurance_manage/Insurance_querying.jsp">
			<button style="width: 300px;" class="btn btn-primary">返回</button></a>
		</div>	
	</body>

</html>



