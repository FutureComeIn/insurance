<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>未勘察案件</title>
		<link href="../../../vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
		<!-- Font Awesome -->
		<link href="../../../vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
		<style type="text/css">
			table td,th {
				vertical-align: middle;
				text-align: center;
			}
			#top {
				margin-bottom: 10px;
				margin-top: 10px;
			}
			#top,#page{
				text-align:center;
			}
		</style>
		<script src="../../js/jquery-1.8.3.js"></script>
		<script type="text/javascript" src="../../js/check/uncheck.js"></script>
	</head>

	<body style="background: #F7F7F7;" onload="loadUnCheck(1)">
		<div id="top" >
			<div class="form-inline" >
				<div class="form-group">
					<p class="form-control-static" style="font-size: 16px;">报案编号</p>
				</div>
				<div class="form-group" style="margin-right:20px;">
					<input type="text" class="form-control img-rounded" id="reportId" placeholder="请输入报案编号">
				</div>
				<div class="form-group" >
					<p class="form-control-static" style="font-size: 16px;">报案人姓名</p>
				</div>
				<div class="form-group" style="margin-right:20px;">
					<input type="text" class="form-control img-rounded" id="reportName" placeholder="请输入报案人姓名">
				</div>
				<div class="form-group" >
					<p class="form-control-static" style="font-size: 16px;">报案人电话</p>
				</div>
				<div class="form-group" style="margin-right:20px;">
					<input type="text" class="form-control img-rounded" id="reporPersontPhone" placeholder="请输入报案人电话">
				</div>
				
				<span class="btn btn-default" onclick="search(1);"><span  class="glyphicon glyphicon-search" style="height:18px;width:25px;"></span></span>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			</div>
		</div>
		<table class="table table-bordered"  id="table">
			<thead>
				<tr>
					<th>报案编号</th>
					<th>报案人姓名</th>
					<th>报案人电话</th>
					<th>报案时间</th>
					<th>出险原因</th>
					<th>出险地点所在省</th>
					<th>出险地点所在市</th>
					<th>出险地点所在区县</th>
					<th>出险地点所在路段</th>
					<th>路段方向</th>
					<th>操作用户</th>
					<th>案件状态</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody id="content">
			</tbody>
		</table>
		<div id="page">
			<!--  
				<button class="btn btn-sm btn-primary" style="margin-right:20px">首页</button>
				<button class="btn btn-sm btn-primary" style="margin-right:20px">上一页</button>
					1/1
				<button class="btn btn-sm btn-primary" style="margin-right:20px;margin-left:20px">下一页</button>
				<button class="btn btn-sm btn-primary" style="margin-right:20px">尾页</button>
			-->
		</div>
	
</body>
</html>