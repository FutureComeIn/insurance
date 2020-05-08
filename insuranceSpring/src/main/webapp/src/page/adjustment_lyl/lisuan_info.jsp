<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

		</style>
	</head>

	<body style="background: #F7F7F7;">
		<!--
                	作者：offline
                	时间：2017-10-24
                	描述：内容开始
                -->
		<div id="body">
		
		<!-- 核赔提交管理 -->
		 <input type="hidden" value="<%=request.getParameter("reported_number")%>" id="get_reported_number">
         <input type="hidden" id="case_stateinfo" value="核赔中"/>
        
        <!-- 核赔页面进入详细页面 --> 
		<input type="hidden" id="reported_number_all" value="<%=request.getParameter("reported_number") %>">
		
			<div class="col-md-12 ">
				<div id="title" align="center">
					<h1>理算信息</h1></div>
				<iframe name="frm" style="display:none"></iframe>
			<form method="post" target="frm"  action="http://localhost:8080/getAdjustment/doFileUpload"  enctype="multipart/form-data">
				<table class="table table-bordered" style="width: 100%" id="anjianliebiao1">
					<label>对方车辆损失</label>
					<thead>
					<tr id="tr1">
						<td>物品名称</td>
						<td>物品数量</td>
						<td>物品单价</td>
						<td>维修地点</td>
			
						<td>小计</td>
					</tr>
					<tr>
						<td colspan="3" >
							上传具体清单：
							<center>
							<input type="file" name="file1">
							</center>
						</td>
						<td colspan="3" >
							上传具体发票：
							<center>
							<input type="file" name="file2">
							</center>
						</td>	
					</tr>
					</thead>
		
				</table>
				<table class="table table-bordered" style="width: 100%" id="anjianliebiao2">
					<label>我方车辆损失</label>
					<thead>
					<tr id="tr2">
						<td>物品名称</td>
						<td>物品数量</td>
						<td>物品单价</td>
						<td>维修地点</td>
					
						<td>小计</td>
					</tr>
					<tr>
						<td colspan="3" >
							上传具体清单：
							<center>
							<input type="file" name="file3">
							</center>
						</td>
						<td colspan="3" >
							上传具体发票：
							<center>
							<input type="file" name="file4">
							</center>
						</td>	
					</tr>
					</thead>
					
				</table>

				<table class="table table-bordered" style="width: 100%" id="anjianliebiao3">
					<label>物损单</label>
					<thead>
					<tr id="tr3">
						<td>物品名称</td>
						<td>物品数量</td>
						<td>物品单价</td>
						<td>维修地点</td>
					
						<td>小计</td>
					</tr>
					<tr>
						<td colspan="3" >
							上传具体清单：
							<center>
							<input type="file" name="file5">
							</center>
						</td>
						<td colspan="3" >
							上传具体发票：
							<center>
							<input type="file" name="file6">
							</center>
						</td>	
					</tr>
					</thead>
					
				</table>
				<table class="table table-bordered" style="width: 100%" id="anjianliebiao4">
					<label>人伤单</label>
					<thead>
					<tr id="tr4">
						<td>医疗明细</td>
						<td>医疗费用</td>
						<td>医疗地点</td>
						<td>小计</td>
					</tr>
					<tr>
						<td colspan="2" >
							上传具体清单：
							<center>
							<input type="file" name="file7">
							</center>
						</td>
						<td colspan="2" >
							上传具体发票：
							<center>
							<input type="file" name="file8">
							</center>
						</td>	
					</tr>
					</thead>
				</table>
				<input type="submit" id="fileUpoload" style="display:none">
				</form>
				<div id="footer" align="center">
					<input type="button" class="btn btn-primary" value="理算完成" id="ProspectInfo"/>
					<a href="adjustment.jsp" style="color: white;"><button type="button" class="btn btn-primary">返回</button></a>
				</div>
				
				<!--核赔退回处理 报案编号 -->
				<input type="hidden" id="baoanbianhao" value="<%=request.getParameter("reported_number") %>"/>
			</div>

		</div>
		<!--
                	作者：offline
                	时间：2017-10-24
                	描述：内容结束
                -->
		<!-- jQuery -->
		<script src="../../../vendors/jquery/dist/jquery.min.js"></script>
		<!-- Bootstrap -->
		<script src="../../../vendors/bootstrap/dist/js/bootstrap.min.js"></script>
		<!-- FastClick -->
		<script src="../../../vendors/fastclick/lib/fastclick.js"></script>
		<!-- NProgress -->
		<script src="../../../vendors/nprogress/nprogress.js"></script>
		<!-- Chart.js -->
		<script src="../../../vendors/Chart.js/dist/Chart.min.js"></script>
		<!-- gauge.js -->
		<script src="../../../vendors/gauge.js/dist/gauge.min.js"></script>
		<!-- bootstrap-progressbar -->
		<script src="../../../vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
		<!-- iCheck -->
		<script src="../../../vendors/iCheck/icheck.min.js"></script>
		<!-- Skycons -->
		<script src="../../../vendors/skycons/skycons.js"></script>
		<!-- Flot -->
		<script src="../../../vendors/Flot/jquery.flot.js"></script>
		<script src="../../../vendors/Flot/jquery.flot.pie.js"></script>
		<script src="../../../vendors/Flot/jquery.flot.time.js"></script>
		<script src="../../../vendors/Flot/jquery.flot.stack.js"></script>
		<script src="../../../vendors/Flot/jquery.flot.resize.js"></script>
		<!-- Flot plugins -->
		<script src="../../../vendors/flot.orderbars/js/jquery.flot.orderBars.js"></script>
		<script src="../../../vendors/flot-spline/js/jquery.flot.spline.min.js"></script>
		<script src="../../../vendors/flot.curvedlines/curvedLines.js"></script>
		<!-- DateJS -->
		<script src="../../../vendors/DateJS/build/date.js"></script>
		<!-- JQVMap -->
		<script src="../../../vendors/jqvmap/dist/jquery.vmap.js"></script>
		<script src="../../../vendors/jqvmap/dist/maps/jquery.vmap.world.js"></script>
		<script src="../../../vendors/jqvmap/examples/js/jquery.vmap.sampledata.js"></script>
		<!-- bootstrap-daterangepicker -->
		<script src="../../../vendors/moment/min/moment.min.js"></script>
		<script src="../../../vendors/bootstrap-daterangepicker/daterangepicker.js"></script>

		<!-- Custom Theme Scripts -->
		<script src="../../../build/js/custom.min.js"></script>
		<script src="../../js/jquery-1.8.3.js"></script>
	    <script src="../../js/compensate/adjustmentQuery.js"></script>
	</body>

</html>