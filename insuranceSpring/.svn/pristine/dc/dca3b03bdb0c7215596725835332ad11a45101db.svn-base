<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- Bootstrap -->
		<link href="../../../vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
		<!-- Font Awesome -->
		<link href="../../../vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
		<!-- NProgress -->
		<link href="../../../vendors/nprogress/nprogress.css" rel="stylesheet">
		<!-- iCheck -->
		<link href="../../../vendors/iCheck/skins/flat/green.css" rel="stylesheet">

		<!-- bootstrap-progressbar -->
		<link href="../../../vendors/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet">
		<!-- JQVMap -->
		<link href="../../../vendors/jqvmap/dist/jqvmap.min.css" rel="stylesheet" />
		<!-- bootstrap-daterangepicker -->
		<link href="../../../vendors/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">

		<!-- Custom Theme Style -->
		<link href="../../../build/css/custom.min.css" rel="stylesheet">
		<style type="text/css">
			table td,
			th {
				vertical-align: middle;
				text-align: center;
			}
		</style>
		<script src="../../../src/js/jquery-1.8.3.js"></script>
	    <script src="../../js/carloss/carlossdetails.js"></script>
	    <script src="../../js/carloss/dinsun.js"></script>
	</head>
	

	<body style="background: #F7F7F7;">
		<!--
                	作者：offline
                	时间：2017-10-24
                	描述：内容开始
                -->
		<div id="body">
		<div class="table" id="count">
						<table class="table table-bordered" align="center" style="width: 100%" id="myprospect">
							<tr>
								<th>报案编号</th>
								<th>报案人</th>
								<th>车牌号</th>
								<th>联系电话</th>
								<th>报案时间</th>
								<th>出事地点 </th>
								<th>出险原因</th>
								<th>事故类型</th>
								<th>案件状态</th>
							</tr>
							<tr>
								<td>${caseinfo.caseId}</td>
								<td>${caseinfo.reportCase.reportPersonName}</td>
								<td>${assessmentinfo.myCarDamageInfo.carNumber}</td>
								<td>${caseinfo.reportCase.reporPersontPhone}</td>
								<td>${caseinfo.reportCase.reportTime}</td>
								<td>${caseinfo.address}</td>
								<td>${caseinfo.reportReason}</td>
								<td></td>
								<c:if test="${caseinfo.caseStatus eq 0}">
								<td>未定损</td>
								</c:if>
								<c:if test="${caseinfo.caseStatus eq 1}">
								<td>定损中</td>
								</c:if>
								<c:if test="${caseinfo.caseStatus eq 2}">
								<td>已定损</td>
								</c:if>
							</tr>
						</table>
						</div>
			<div class="table" id="count">
						<table class="table table-bordered" align="center" style="width: 100%" id="mycar">
				     	  	<thead>我方车损信息</thead>
				     	  	<tr>
								<th>案件编号</th>
								<th>车主姓名</th>
								<th>车主电话</th>
								<th>车辆类型</th>
								<th>出事地点 </th>
								<th>受损金额</th>
							</tr>
							<tr>
								<td>${assessmentinfo.caseId}</td>
								<td>${assessmentinfo.myCarDamageInfo.name}</td>
								<td>${assessmentinfo.myCarDamageInfo.tel}</td>
								<td>${assessmentinfo.myCarDamageInfo.carType}</td>
								<td>${caseinfo.address}</td>
								<td>
									<span>${assessmentinfo.myCarDamageInfo.price}</span>
								</td>
							</tr>
							
						</table>
					</div>
			  <div class="table" id="count">
						<table class="table table-bordered" align="center" style="width: 100%" id="prospect_table">
							<tr>
								<th>部件编号</th>
								<th>部件名称</th>
								<th>单价</th>
								<th>数量</th>
								<th>维修地点</th>
								<th>小计</th>
							</tr>
							<c:forEach items="${assessmentinfo.myCarDamageInfo.myCarDamageDetailsInfo}" var="mycar">
							<tr>
								<td>${mycar.damagePartId}</td>
								<td>${mycar.damagePartName}</td>
								<td>
									${mycar.price}
								</td>
								<td>
									${mycar.amount}
								</td>
								<td>${mycar.place}</td>
								<td>
								<span>${mycar.price*mycar.amount}</span>
								${mycar.price*mycar.amount}
							</tr>
							</c:forEach>
						</table>
					</div>
			 <div class="table" id="count">
						<table class="table table-bordered" align="center" style="width: 100%" id="adversecar">
				     	  	<thead>对方车损信息</thead>
							<tr>
								<th>案件编号</th>
								<th>车主姓名</th>
								<th>车主电话</th>
								<th>车辆类型</th>
								<th>出事地点 </th>
								<th>受损金额</th>
							</tr>
							<tr>
								<td>${assessmentinfo.caseId}</td>
								<td>${assessmentinfo.adverseCarDamageInfo.name}</td>
								<td>${assessmentinfo.adverseCarDamageInfo.tel}</td>
								<td>${assessmentinfo.adverseCarDamageInfo.carType}</td>
								<td>${caseinfo.address}</td>
								<td>
									<span>${assessmentinfo.adverseCarDamageInfo.price}</span>
								</td>
							</tr>
						</table>
					</div>
		  <div class="table" id="count">
		  	
						<table class="table table-bordered" align="center" style="width: 100%" id="prospect_table">
								<tr>
								<th>部件编号</th>
								<th>部件名称</th>
								<th>单价</th>
								<th>数量</th>
								<th>维修地点</th>
								<th>小计</th>
								
							</tr>
							<c:forEach items="${assessmentinfo.adverseCarDamageInfo.adverseCarDamageDetailsInfo}" var="adversecar">
							<tr>
								<td>${adversecar.damagePartId}</td>
								<td>${adversecar.damagePartName}</td>
								<td>
									${adversecar.price}
								</td>
								<td>
									${adversecar.amount}
								</td>
								
								<td>${adversecar.place}</td>
								<td>
									<span>${adversecar.price*adversecar.amount}</span>
									${adversecar.price*adversecar.amount} 
								</td>
							</tr>
							</c:forEach>
						</table>
					</div>
			<div id="" align="center">
        			<button type="button" class="btn btn-primary btn-small" id="reset_but" onclick="back();">
										 返回
									</button>
			</div>
				
		</div>
		<script type="text/javascript">
			function update(){
				if(window.confirm("你确定要修改吗？")){
					
				}
			}
			function del(){
				if(window.confirm("你确定要删除吗？")){
					
				}
			}
		</script>
		<!--
                	作者：offline
                	时间：2017-10-24
                	描述：内容结束
                -->
</body>
</html>