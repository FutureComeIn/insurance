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
		<script src="../../../../vendors/jquery/dist/jquery.min.js"></script>
		<script src="../../../vendors/bootstrap/dist/js/bootstrap.min.js"></script>
		<style type="text/css">
		
		</style>
		<!-- jQuery -->
		<script src="../../../src/js/jquery-1.8.3.js"></script>
		<script src="../../js/carloss/dinsun.js"></script>
	</head>
	

	<body style="background: #F7F7F7;" onload="loaduser();">
		<!--
                	作者：王威
                	时间：2018-8-24
                	描述：内容开始
                -->
		<div id="body" >
			<div class="col-md-12 ">
				<div id="title" align="center">
					<h1>定损信息</h1></div>
				<table class="table table-bordered" style="width: 100%">
				<c:if test="${assessmentinfo.myCarDamageInfo.price eq null}">
					<label>我方车辆损失(0)&nbsp;￥</label>
				</c:if>
				<c:if test="${assessmentinfo.myCarDamageInfo.price ne null}">
					<label>我方车辆损失(${assessmentinfo.myCarDamageInfo.price})&nbsp;￥</label>
				</c:if>
					
					<thead>
					<tr>
						<td>车辆部件</td>
						<td>定损单价</td>
						<td>部件数量</td>
						<td>维修地点</td>
						<td>小计</td>
					</tr>
				    </thead>
					<tbody>
					<c:forEach items="${assessmentinfo.myCarDamageInfo.myCarDamageDetailsInfo}" var="mycar">
							<tr>
								<td>
									${mycar.damagePartName}
								</td>
								<td>
									${mycar.price}
								</td>
								<td>
									${mycar.amount}
								</td>
								<td>${mycar.place}</td>
								<td>
									${mycar.price*mycar.amount}
								</td>
							</tr>
					</c:forEach>
					</tbody>
				</table>
				<table class="table table-bordered" style="width: 100%">
				<c:if test="${assessmentinfo.adverseCarDamageInfo.price eq null}">
					<label>对方车辆损失(0)&nbsp;￥</label>
			   </c:if>
			   <c:if test="${assessmentinfo.adverseCarDamageInfo.price ne null}">
					<label>对方车辆损失(${assessmentinfo.adverseCarDamageInfo.price})&nbsp;￥</label>
			   </c:if>
					<thead>
					<tr>
						<td>物品名称</td>
						<td>物品数量</td>
						<td>物品单价</td>
						<td>维修地点</td>
						<td>小计</td>
					</tr>
					</thead>
					<c:forEach items="${assessmentinfo.adverseCarDamageInfo.adverseCarDamageDetailsInfo}" var="adversecar">
							<tr>
								<td>
									${adversecar.damagePartName}
								</td>
								<td>
									${adversecar.price}
								</td>
								<td>
									${adversecar.amount}
								</td>
								<td>${adversecar.place}</td>
								<td>
									${adversecar.price*adversecar.amount}
								</td>
							</tr>
					</c:forEach>
					</tbody>
				</table>
				<div><span style="float:right;font-size:22px;">定损总额:&nbsp;
				<c:if test="${assessmentinfo.totalPrice eq null}">
					<span style="color:red">0</span>
				</c:if>
				<c:if test="${assessmentinfo.totalPrice ne null}">
					<span style="color:red">${assessmentinfo.totalPrice}</span>
				</c:if>
				&nbsp;￥</span>
				</div>
			</div>
			</div>  
				<div id="footer" align="center" >
					<button type="button" id="mytj" class="btn btn-primary" data-toggle="modal" data-target="#myModal" >确认定损</button>
					<button type="button" id="th" class="btn btn-primary" onclick="back();">退回</button>
					<button type="button" id="th" class="btn btn-primary" onclick="exithandle();">下次操作</button>
				</div>
 <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">提交至审核员</h4>
            </div>
            <div class="modal-body">
            <table id="usertable" align="center">
            	<tr>
            	<td><input type="radio" name="options" id="option1" calss="options"> 小胖</td>
            	</tr>
            	<tr>
            	<td><input type="radio" name="options" id="option1">小潘</td>
            	</tr>
            	<tr>
            	<td><input type="radio" name="options" id="option1"> 小旁</td>
            	</tr>
            </table>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal" >关闭</button>
                <button type="button" class="btn btn-primary" onclick="passCarLoss('${assessmentinfo.assessmentId}','${assessmentinfo.caseId}');">提交</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal --> 
</div>			
				
		<script type="text/javascript">
		
		function tjhsd(){
			window.location.href="../dinsun/loss_assessment.jsp";
		}
		
		</script>
		<!--
                	作者：offline
                	时间：2017-10-24
                	描述：内容结束
                -->
</body>
</html>