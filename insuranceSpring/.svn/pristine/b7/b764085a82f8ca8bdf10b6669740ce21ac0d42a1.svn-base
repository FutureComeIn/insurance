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

	<!-- 可选的 Bootstrap 主题文件（一般不用引入） -->
	<link href="css/bootstrap-theme.min.css" rel="stylesheet" type="text/css" />
		<!-- jQuery -->
     <script src="../../../src/js/jquery-1.8.3.js"></script>
	<script type="text/javascript" src="js/jquery-1.11.1.js"></script>
	</head>
 
	<style>

		.form-control{
			width: 230px;
			height: 25px;
		}
		#textcenter{
			text-align: right;
		}
		#spansize{
			font-size: 15px;
		}
		#Exampleheading{
			height: 25px;
		}
	</style>
	<body>
		<div style="width: 100%">

			<form style="width: 100%">
				
				<div style="width: 100%;height: 230px;" >
					<div style="width: 50%;float: left;">
						<table  class="table table-striped" >
							<tr>
								<td><label for="exampleInputEmail1" id="Exampleheading"> <span class="label label-default" id="spansize">投保人信息</span></label></td>
								<td></td>
							</tr>
							<tr>
								<td id="textcenter">投保人姓名</td>
								<td><input type="text" class="form-control" id="inputwidth" name="policyholdersName" value="${papi.policyholdersName }"></td>
							</tr>
							<tr>
								<td id="textcenter"  style="height: 42px;">性别</td>
								<c:if test="${papi.sex=='男' }">
								<td>
									男<input name="sex" type="radio" value="男" checked="checked"/>
									女<input name="sex" type="radio" value="女" />
								</td>
								</c:if>
								<c:if test="${papi.sex=='女' }">
								<td>
									男<input name="sex" type="radio" value="男"/>
									女<input name="sex" type="radio" value="女"  checked="checked"/>
								</td>
								</c:if>
							</tr>	
							<tr style="height: 55px;">
								<td id="textcenter">证件号码</td>
								<td><input type="text" class="form-control" id="inputwidth" value="${papi.cardId }" name="policyholdersCardId"></td>
							</tr>

						</table>
					</div>
				
					<div style="width: 50%;float: right;">
						<table  class="table table-striped" >
							<tr>
								<td style="width: 300px;"><label for="exampleInputEmail1" style="height: 20px;"><span class="label label-default"></span></label></td>
								<td></td>
							</tr>
							<tr>
								<td id="textcenter" >联系地址</td>
								<td style="height: 42px;">
									<select id="PaddressShen"> 
										<option value="1">${papi.addressShen }</option>
									</select>省
									<select id="PaddressShi"> 
										 <option value="2">${papi.addressShi }</option>
									</select> 市
								</td>
							</tr>
							<tr>
								<td id="textcenter">联系电话</td>
								<td><input type="text" class="form-control" id="inputwidth" value="${papi.tel }" name="policyholdersTel"></td>
							</tr>
							<tr>
								<td id="textcenter">邮箱</td>
								<td><input type="text" class="form-control" id="inputwidth" value="${papi.email }" name="policyholdersEmail"></td>
							</tr>
						</table>
					</div>
					
				</div>
				
				<div style="width: 100% ;height: 250px;">
					<div style="width: 50%;float: left;">
						<table  class="table table-striped" >
							<tr>
								<td><label for="exampleInputEmail1" id="Exampleheading"> <span class="label label-default" id="spansize">被保人信息</span></label></td>
								<td></td>
							</tr>
							<tr>
								<td id="textcenter">被保人姓名</td>
								<td><input type="text" class="form-control" id="inputwidth" name="recognizeeName" value="${rapi.recognizeeName }"/></td>
							<tr>
								<td id="textcenter" style="height: 42px;">性别</td>
								<c:if test="${rapi.sex=='男' }">
								<td>
									男<input name="recognizeeSex" type="radio" value="男" checked="checked"/>
									女<input name="recognizeeSex" type="radio" value="女" />
								</td>
								</c:if>
								<c:if test="${rapi.sex=='女' }">
								<td>
									男<input name="recognizeeSex" type="radio" value="男"/>
									女<input name="recognizeeSex" type="radio" value="女"  checked="checked"/>
								</td>
								</c:if>
							</tr>
							<tr>
								<td id="textcenter">证件号码</td>
								<td><input type="text" class="form-control" id="inputwidth" name="recognizeeCardId" value="${rapi.cardId }"></td>
							</tr>
							<tr>
								<td id="textcenter">联系地址</td>
								<td style="height: 42px;">
									<select id="RaddressShen"> 
										<option value="1">${rapi.addressShen }</option>
									</select>省
									<select id="RaddressShi"> 
										 <option value="2">${rapi.addressShi }</option>
									</select> 市
								</td>
							</tr>
							<tr>
								<td id="textcenter">行驶证编号</td>
								<td><input type="text" class="form-control" value="${rapi.vehicleLicenseId }" id="inputwidth" name="vehicleLicenseId"></td>
							</tr>	
						</table>
					</div>
				
					<div style="width: 50%;float: right;">
						<table  class="table table-striped" >
							<tr>
								<td style="width: 300px;"><label for="exampleInputEmail1" style="height: 20px;"><span class="label label-default"></span></label></td>
								<td></td>
							</tr>
							<tr>
								<td id="textcenter">联系电话</td>
								<td><input type="text" class="form-control" id="inputwidth" value="${rapi.tel }" name="recognizeeTel"></td>
							</tr>
							<tr>
								<td id="textcenter">邮箱</td>
								<td><input type="email" class="form-control" id="recognizeeEmail" value="${rapi.email }" name="recognizeeEmail"></td>
							</tr>
							<tr>
								<td id="textcenter">银行账户</td>
								<td><input type="text" class="form-control" id="bankNumber" value="${rapi.bankNumber }" name="bankNumber"></td>
							</tr>
							<tr>
								<td id="textcenter">驾驶证号码</td>
								<td><input type="text" class="form-control" id="driveId" value="${rapi.driveId }" name="driveId"></td>
							</tr>
							<tr>
								<td id="textcenter">发动机编号</td>
								<td><input type="text" class="form-control" id="engineId" value="${rapi.engineId }" name="engineId"></td>
							</tr>
						</table>
					</div>			
				</div>
			
				<div style="width: 100%">
					<div style="width: 50%;float: left;">
						<table  class="table table-striped" >
							<tr>
								<td><label for="exampleInputEmail1" id="Exampleheading"><span class="label label-default" id="spansize">车辆信息</span></label></td>
								<td></td>
							</tr>
							<tr>
								<td id="textcenter">车辆名称</td>
								<td><input type="text" class="form-control" id="carName" value="${capi.carName }" name="carName"></td>
							</tr>
							<tr>
								<td id="textcenter">车辆品牌</td>
								<td><input type="text" class="form-control" id="carBrand" value="${capi.carBrand }" name="carBrand"></td>
							</tr>	
						</table>
					</div>
				
					
					
					<div style="width: 50%;float: right;">
						<table  class="table table-striped" >
							<tr>
								<td style="width: 300px;"><label for="exampleInputEmail1" style="height: 20px;"><span class="label label-default"></span></label></td>
								<td></td>
							</tr>
							<tr>
								<td id="textcenter">车辆类型</td>
								<td><input type="text" class="form-control" id="carSpecificType" value="${capi.carSpecificType }" name="carSpecificType"></td>
							</tr>
							<tr>
								<td id="textcenter">市场价格</td>
								<td><input type="text" class="form-control" id="carValue" value="${capi.carValue }" name="carValue"></td>
							</tr>
						</table>
					</div>
				</div>
				
				<div style="width: 100%">
		
				
					<div style="width: 50%;float: left;">
						<table  class="table table-striped" >
							<tr>
								<td><label for="exampleInputEmail1" id="Exampleheading"><span class="label label-default" id="spansize">保单信息</span></label></td>
								<td></td>
							</tr>
							<tr>
								<td id="textcenter">险种编号</td>
								<td><input type="text" class="form-control" id="inputwidth" value="1111" name="type_id"></td>
							</tr>
							<tr>
								<td id="textcenter">保险起期</td>
								<td><input type="date" class="form-control" id="insuranceBeginTime" value="${wapi.insuranceBeginTime }" name="insuranceBeginTime"></td>
							</tr>	
							<tr>
								<td id="textcenter">投保金额</td>
								<td><input type="text" class="form-control" id="insurancePrice" value="${wapi.insurancePrice }" name="insurancePrice"></td>
							</tr>
							<tr>
								<td id="textcenter">缴费时间</td>
								<td><input type="date" class="form-control" id="paymentDate" value="${wapi.paymentDate }" name="paymentDate"></td>
							</tr>
						</table>
					</div>
				
					
					
					<div style="width: 50%;float: right;">
						<table  class="table table-striped" >
							<tr>
								<td style="width: 300px;"><label for="exampleInputEmail1" style="height: 20px;"><span class="label label-default"></span></label></td>
								<td></td>
							</tr>
							<tr>
								<td id="textcenter">操作人员</td>
								<td><input type="text" class="form-control" id="username" value="${wapi.username }" name="username"></td>
							</tr>
							<tr>
								<td id="textcenter">保险止期</td>
								<td><input type="date" class="form-control" id="insuranceEndTime" value="${wapi.insuranceEndTime }" name="insuranceEndTime"></td>
							</tr>
							<tr>
								<td id="textcenter">保费金额</td>
								<td><input type="text" class="form-control" id="warrantyPrice" value="${wapi.warrantyPrice }" name="warrantyPrice"></td>
							</tr>
							<tr>
								<td id="textcenter">签单日期</td>
								<td><input type="date" class="form-control" id="signingDate" value="${wapi.signingDate }" name="signingDate"></td>
							</tr>
						</table>
					</div>
				</div>
				
			</form>
		</div>
		
		<div style="width: 100%;text-align: center;">
		<a href="src/page/insurance_manage/Insurance_querying.jsp">
			<button style="width: 300px;" class="btn btn-primary">返回</button></a>
		</div>	
	</body>

</html>



