<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<html>

	<head>
		<meta charset="UTF-8">
		<title>继续投保</title>
			<!-- Bootstrap -->
	<!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
	<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />

	<!-- 可选的 Bootstrap 主题文件（一般不用引入） -->
	<link href="css/bootstrap-theme.min.css" rel="stylesheet" type="text/css" />

	<script type="text/javascript" src="js/jquery-1.11.1.js"></script>
<!--	<script src="../../js/autolnsurance/continue_insure.js"></script>  -->
	</head>
	<style>

		#inputwidth{
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
	<!-- 获取保单编号warranty_number -->
	<input type="hidden" name="baodanid" value="${param.warranty_number}">
	<!-- 保单id -->
		<input name="warranty_number" type="hidden"/>
	<!-- 投保人id -->
		<input name="policyholders.policyholders_number" type="hidden"/>
	<!-- 被保人id -->
		<input name="recognizee.recognizee_number" type="hidden"/>
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
								<td><input type="text" class="form-control" id="inputwidth" name="policyholders.policyholders_name"></td>
							</tr>
							<tr>
								<td id="textcenter"  style="height: 42px;">性别</td>
								<td>
									男<input name="policyholderssex" type="radio" value="男" />
									女<input name="policyholderssex" type="radio" value="女" />
								</td>
							</tr>	
							<tr style="height: 55px;">
								<td id="textcenter">证件号码</td>
								<td><input type="text" class="form-control" id="inputwidth"name="policyholders.credentials_number"></td>
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
									<select id="policyholdersaddress_shen"> 
										<option value="湖南">湖南</option> 
										<option value="DIVCSS5">DIVCSS5</option> 
										<option value="DIVCSS5">DIVCSS5</option> 
										<option value="DIVCSS5">DIVCSS5</option>
									</select>省
									<select id="policyholdersaddress_shi"> 
										<option value="长沙">长沙</option> 
										<option value="DIVCSS5">DIVCSS5</option> 
										<option value="DIVCSS5">DIVCSS5</option> 
										<option value="DIVCSS5">DIVCSS5</option> 
									</select> 市
								</td>
							</tr>
							<tr>
								<td id="textcenter">联系电话</td>
								<td><input type="text" class="form-control" id="inputwidth" name="policyholders.tel"></td>
							</tr>
							<tr>
								<td></td>
								<td>
									
								</td>
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
								<td><input type="text" class="form-control" id="inputwidth" name="recognizee.recognizee_name"></td>
							<tr>
								<td id="textcenter" style="height: 42px;">性别</td>
								<td>
									男<input name="recognizeesex" type="radio" value="男" />
									女<input name="recognizeesex" type="radio" value="女" />
								</td>
							</tr>
							<tr>
								<td id="textcenter">证件号码</td>
								<td><input type="text" class="form-control" id="inputwidth" name="recognizee.credentials_number"></td>
							</tr>
							<tr>
								<td id="textcenter">联系地址</td>
								<td style="height: 42px;">
									<select id="recognizeeaddress_shen"> 
										<option value="湖南">湖南</option> 
										<option value="DIVCSS5">DIVCSS5</option> 
										<option value="DIVCSS5">DIVCSS5</option> 
										<option value="DIVCSS5">DIVCSS5</option>
									</select>省
									<select id="recognizeeaddress_shi"> 
										<option value="长沙">长沙</option> 
										<option value="DIVCSS5">DIVCSS5</option> 
										<option value="DIVCSS5">DIVCSS5</option> 
										<option value="DIVCSS5">DIVCSS5</option> 
									</select> 市
								</td>
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
								<td><input type="text" class="form-control" id="inputwidth" name="recognizee.tel"></td>
							</tr>
							<tr>
								<td id="textcenter">邮箱</td>
								<td><input type="email" class="form-control" id="inputwidth" name="recognizee.email"></td>
							</tr>
							<tr>
								<td id="textcenter">银行账户</td>
								<td><input type="text" class="form-control" id="inputwidth" name="recognizee.bank_number"></td>
							</tr>
							<tr>
								<td id="textcenter">驾驶证号码</td>
								<td><input type="text" class="form-control" id="inputwidth" name="recognizee.drive_number"></td>
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
								<td id="textcenter">车牌号</td>
								<td><input type="text" class="form-control" id="inputwidth" name="license_number"></td>
							</tr>
							<tr>
								<td id="textcenter">车辆品牌</td>
								<td><input type="text" class="form-control" id="inputwidth" name="engine_number"></td>
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
								<td><input type="text" class="form-control" id="inputwidth" name="make_number"></td>
							</tr>
							<tr>
								<td id="textcenter">市场价格</td>
								<td><input type="text" class="form-control" id="inputwidth" name="sail_number"></td>
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
								<td><input type="text" class="form-control" id="inputwidth" name="type_id"></td>
							</tr>
							<tr>
								<td id="textcenter">保险起期</td>
								<td><input type="date" class="form-control" id="inputwidth" name="insurance_begin_date"></td>
							</tr>	
							<tr>
								<td id="textcenter">投保金额</td>
								<td><input type="text" class="form-control" id="inputwidth" name="policyholders_sum"></td>
							</tr>
							<tr>
								<td id="textcenter">缴费时间</td>
								<td><input type="date" class="form-control" id="inputwidth" name="payment_date"></td>
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
								<td><input type="text" class="form-control" id="inputwidth" name="policy_people"></td>
							</tr>
							<tr>
								<td id="textcenter">保险止期</td>
								<td><input type="date" class="form-control" id="inputwidth" name="insurance_end_date"></td>
							</tr>
							<tr>
								<td id="textcenter">保费金额</td>
								<td><input type="text" class="form-control" id="inputwidth" name="premium_sum"></td>
							</tr>
							<tr>
								<td id="textcenter">签单日期</td>
								<td><input type="date" class="form-control" id="inputwidth" name="permission_date"></td>
							</tr>
						</table>
					</div>
				</div>
				
			</form>
		</div>
		
		<div style="width: 100%;text-align: center;">
			<button type="button" onclick="addinsuranceinfo()" style="width: 300px;" class="btn btn-primary" data-toggle="button" aria-pressed="false" autocomplete="off">
 					 提交
			</button>
		</div>	
	</body>

</html>



