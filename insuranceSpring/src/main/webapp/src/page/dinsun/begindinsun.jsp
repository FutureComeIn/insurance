﻿<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<html>

	<head>
		<meta charset="UTF-8">
		<title>添加保单</title>
			<!-- Bootstrap -->
	<!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
	<link href="../insurance_manage/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
 	<!--  <link href="../../../vendors/bootstrap/dist/css/bootstrap.css" rel="stylesheet">-->
	<!-- 可选的 Bootstrap 主题文件（一般不用引入） -->
	<link href="../insurance_manage/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css" />

	<script src="../../js/jquery-1.8.3.js"></script>
	<script src="../../js/form/jquery-form.js"></script>
	<script src="../../js/jquery-form.js"></script>
	 <!-- 表单验证插件 -->
    <script type="text/javascript" src="../../../src/js/form/jquery.validate.js"></script>
    <script type="text/javascript" src="../../../src/js/form/messages_cn.js"></script>
	<script src="../../js/form/jquery-form.js"></script>
	<script src="../../js/carloss/beginloss.js"></script>
	<script src="../../js/carloss/carloss.js"></script>
	<script src="../../js/carloss/bootstrap3-typeahead.js"></script>
	<script src="../../js/carloss/jquery.validate.min.js"></script>
	<script src="../../js/carloss/messages_zh.js"></script>
	<script src="../../js/carloss/autoadd.js"></script>
		<script type="text/javascript">
		/*$(document).ready(function($) {
		   // Workaround for bug in mouse item selection
		   $.fn.typeahead.Constructor.prototype.blur = function() {
		      var that = this;
		      setTimeout(function () { that.hide() }, 250);
		   };
		  
		   $('#typeahead').typeahead({
			   alert(2);
		      source: function(query, process) {
		         return ["Deluxe Bicycle", "Super Deluxe Trampoline", "Super Duper Scooter"];
		      }
		   });
		})*/
			
			function addinsurance(){
				window.history.go(-1);
			}
		$(function(){
			$("#carType").keyup(function(){
				var input=$(this);
				var value=input.val();
				var nextinput=input.next();
				nextinput.empty();
				$.ajax({
					url:'http://localhost:8080/src/page/dinsun/queryCarTypeByCarName.do',
					type:'post',
					dataType:'json',
					data:{
						'carName':value
					},
					success:function(data){
						//alert(data.singerData);
					var opt="";
						for(var i=0;i<data.datas.length;i++){
							opt+="<option value='"+data.datas[i].carName+"' id='"+data.datas[i].carTypeId+"'/>";
						}
						nextinput.append(opt);
					},
					error:function(){
						alert("添加失败");
					}
				})
			})
			$("#carType").change(function(){
				var input=$(this);
				var value=input.val();
				var id=input.next().next().val();
				//alert(id);
				var opt=input.next().children();
				var option_length=opt.length;
				for(var i=0;i<option_length;i++){
					var option_value=opt.eq(i).attr("id");
					if(value==option_value){
						alert(option_value);
						break;
					}
				}
			})
		})
			
		</script>

	</head>
	<style>

		.inputwidth{
			width: 230px;
			height: 25px;
		}
		.textcenter{
			text-align: right;
		}
		#spansize{
			font-size: 15px;
		}
		#Exampleheading{
			height: 25px;
		}
		#mycarloss label.error{ 
			color:red; 
			font-size:13px; 
		}
		#mycarlossdetails label.error{ 
			color:red; 
			font-size:13px; 
		}
	</style>
	
	
	<body>
	<table class="table table-bordered" align="center" style="width: 100%" id="myprospect">
						<tr>
								<td colspan="9"><label for="exampleInputEmail1" id="Exampleheading"> <span class="label label-default" id="spansize">案件信息</span></label></td>
								
						</tr>		
							<tr>
								<th>报案编号</th>
								<th>报案人</th>
								<th>联系电话</th>
								<th>报案时间</th>
								<th>出事地点 </th>
								<th>出险原因</th>
								<th>案件状态</th>
							</tr>
								<tr>
								<td>${api.singerData.caseId }</td>
								<td>${api.singerData.reportCase.reportPersonName }</td>
								<td>${api.singerData.reportCase.reporPersontPhone }</td>
								<td>${api.singerData.reportCase.reportTime }</td>
								<td>${api.singerData.address } </td>
								<td>${api.singerData.reportReason }</td>
								<td>${api.singerData.caseStatus }</td>
							</tr>
						</table>
					<input type="hidden" id="userIds" value="${loginUser.userId}"/>
					<input type="hidden" id="userNames" value="${loginUser.userName}"/>
					<input type="hidden" id="caseIds" value="${api.singerData.caseId}"/>	
			<table class="table table-bordered" align="center" style="width: 100%" id="myprospect">
						<tr>
								<td colspan="9"><label for="exampleInputEmail1" id="Exampleheading"> <span class="label label-default" id="spansize">险种信息</span></label></td>
								
						</tr>		
							<tr>
								<th>险种编号</th>
								<th>险种名称</th>
								<th>险种年限</th>
								<th>险种描述</th>
								<th>险种系数</th>
							</tr>
							<c:forEach items="${api.datas}" var="InsuranceType">
							<tr>
								<td>${InsuranceType.insuranceTypeId }</td>
								<td>${InsuranceType.insuranceTypeName }</td>
								<td>${InsuranceType.insuranceTerm }</td>
								<td>${InsuranceType.insuranceTypeRemark}</td>
								<td>${InsuranceType.insuranceTypeSize}</td>
							</tr>
							</c:forEach>
						</table>
		<div style="width: 100%">

		
				<div style="width: 100%;height: 230px;" >
					<form style="width: 100%" method="post" id="mycarloss" enctype="multipart/form-data">
					<div style="width: 50%;float: left;">
						<table  class="table table-striped" >
							<tr>
								<td><label for="exampleInputEmail1" id="Exampleheading"> <span class="label label-default" id="spansize">我方车损信息</span></label></td>
								<td></td>
							</tr>
							<tr>
								<td class="textcenter">车主姓名</td>
								<td><input type="text" class="required form-control inputwidth "  id="name" name="name"></td>
							</tr>
							<tr>
								<td class="textcenter"  style="height: 42px;" validate="required:true">联系方式</td>
								<td><input type="text" class="required form-control inputwidth "  id="tel" name="tel"></td>
							</tr>	
							<tr style="height: 55px;">
								<td class="textcenter">车牌号码</td>
								<td>
								<input type="text" class="required form-control inputwidth "  id="carNumber" name="carNumber">
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
								<td class="textcenter"  >车辆类型</td>
								<td style="height: 42px;">
								<!-- 自动补全 -->
									<input type="text" class="form-control inputwidth carType required" id="carType" name="carType" placeholder="请输入损坏零件名" list="ide"/>
									<datalist id="ide"> 
							        <option value="暂无" /> 
    								</datalist>		
									<input type="hidden" id="carTypeId" name="carTypeId" value="1">
								</td>
							</tr>
							<tr>
								<td class="textcenter">我方车损金额</td>
								<td>
									<span id="mycarlossprice">0</span>
									<input type="hidden" id="mycarprice" name="price" value="0">
								</td>
							</tr>
							<tr>
								<td class="textcenter"></td>
								<td></td>
							</tr>
						</table>
					</div>
					</form>
					</div>
					<form method="post" id="mycarlossdetails" enctype="multipart/form-data">
					<div style="width: 100%;height: 190px;" >
						<table  class="table table-striped" id="ours">
							<tr>
								<td colspan="8"><label for="exampleInputEmail1" id="Exampleheading"> <span class="label label-default" id="spansize">我方车损明细</span></label></td>
							</tr>
							<tr class="one">
								<td class="textcenter">受损部件</td>
								<!-- 自动补全 -->
								<td>
									<input type="text" class="required form-control inputwidth" id="damagePartName" name="damagePartName" >
									<input type="hidden" value="1" id="damagePartId" name="damagePartId" >
								</td>
								<td class="textcenter">受损数量</td>
								<td><input type="text" class="required number form-control inputwidth" id="amount" name="amount" onkeyup="lossmenber(this);"></td>
								<td class="textcenter">单价</td>
								<td><input type="text" class="required number form-control inputwidth" id="price" name="price" onkeyup="lossprice(this);"></td>
								<td class="textcenter">小计金额</td>
								<td>0</td>
							</tr>
							<tr>
								<td class="textcenter">维修地点</td>
								<td><input type="text" class="required form-control inputwidth " id="place" name="place"></td>
								<td class="textcenter">受损图片</td>
								<td><input type="file" id="inputwidth" name="damageImg" class="required"/></td>
								<td class="textcenter"  style="height: 42px;">备注</td>
								<td><input type="text" class="required form-control inputwidth " id="remark" name="remark"></td>
								<td><img src="../../img/sign_add.png" onclick="ouradd();"/></td>
								<td><img src="../../img/sign_remove.png" onclick="oursub(this);"/></td>
							</tr>	
						</table>
					</div>
				</form>
					
				<div style="width: 100%;height: 230px;" >
				<form method="post" id="adversecarloss" enctype="multipart/form-data">
					<div style="width: 50%;float: left;">
						<table  class="table table-striped" >
							<tr>
								<td><label for="exampleInputEmail1" id="Exampleheading"> <span class="label label-default" id="spansize">对方车损信息</span></label></td>
								<td></td>
							</tr>
							<tr>
								<td class="textcenter">车主姓名</td>
								<td><input type="text" class="form-control inputwidth required" id="name" name="name"></td>
							</tr>
							<tr>
								<td class="textcenter"  style="height: 42px;">联系方式</td>
								<td><input type="text" class="form-control inputwidth " id="tel" name="tel"></td>
							</tr>	
							<tr style="height: 55px;">
								<td class="textcenter">车牌号码</td>
								<td><input type="text" class="form-control inputwidth required" id="carNumber"name="carNumber"></td>
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
								<td class="textcenter" >车辆类型</td>
								<td style="height: 42px;">
									<input type="text" class="form-control inputwidth required" id="carType" name="carType" list="ide"/>
									<datalist id="ide"> 
							        <option value="暂无" /> 
    								</datalist>	
									<input type="hidden" id="adversecarTypeId" name="carTypeId">
								</td>
							</tr>
							<tr>
								<td class="textcenter">我方车损金额</td>
								<td>
									<span id="adversecarlossprice">0</span>
									<input type="hidden" id="adversecarprice" name="price" value="0">
								</td>
							</tr>
							<tr>
								<td class="textcenter"></td>
								<td></td>
							</tr>
						</table>
						
					</div>
					</form>
				</div>
			<form method="post" id="adversecarlossdetails" enctype="multipart/form-data">
				<div style="width: 100%;height: 230px;" >
						<table  class="table table-striped" id="other" >
							<tr>
								<td colspan="8"><label for="exampleInputEmail1" id="Exampleheading"> <span class="label label-default" id="spansize">对方车损明细</span></label></td>
							</tr>
							<tr class="one">
								<td class="textcenter" onclick="a()">受损部件</td>
								<!-- 自动补全 -->
								<td>
								<input type="text" class="form-control inputwidth required" id="damagePartName" name="damagePartName" >
								<input type="hidden" class="form-control inputwidth" id="damagePartId" name="damagePartId" value="0">
								</td>
								<td class="textcenter">受损数量</td>
								<td><input type="text" class="form-control inputwidth required number" id="amount" name="amount" onkeyup="lossmenber(this);"></td>
								<td class="textcenter">单价</td>
								<td><input type="text" class="form-control inputwidth required number" id="price" name="price" onkeyup="lossprice(this);"></td>
								<td class="textcenter">小计金额</td>
								<td><font>0</font></td>
							</tr>
							<tr>
								<td class="textcenter">维修地点</td>
								<td><input type="text" class="form-control inputwidth required" id="place" name="place"></td>
								<td class="textcenter">受损图片</td>
								<td><input type="file" id="damageImg" name="damageImg" class="required"/></td>
								<td class="textcenter"  style="height: 42px;">备注</td>
								<td><input type="text" class="form-control inputwidth required" id="remark" name="remark"></td>
								<td><img src="../../img/sign_add.png" onclick="otheradd();"/></td>
								<td><img src="../../img/sign_remove.png" onclick="oursub(this);"/></td>
							</tr>	
						</table>
					</div>
				</form>
		</div>
		
		<div style="width: 100%;text-align: center;">
			 <button  class="btn btn-primary" onclick="adddinsun()" id="adddinsun">
 					 提交
			</button>
			<button onclick="addinsurance()"  class="btn btn-primary">
 					 取消
			</button>
		</div>	
	</body>

</html>



