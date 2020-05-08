<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		
		<link href="../../../vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
		<!-- Font Awesome -->
		<link href="../../../vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
		<style type="text/css">
			table td,th {
				vertical-align: middle;
				text-align: center;
			}
			form {
				margin-bottom: 10px;
				margin-top: 10px;
			}
			#top,#page{
				text-align:center;
			}
		</style>
		<script src="../../js/jquery-1.8.3.js"></script>
	    <script src="../../js/SettleClaim/querySettleClaim.js"></script>
	     <script src="../../js/SettleClaim/querySettleClaimById.js"></script>
	  

	</head>

	<body style="background: #F7F7F7;" onload="querySettleclaim()">
		<div id="top" >
			<form class="form-inline" role="form">
				<div class="form-group">
					<p class="form-control-static" style="font-size: 16px;">理赔编号</p>
				</div>
				<div class="form-group">
					<input type="text" class="form-control img-rounded" id="settleClaimId" placeholder="请输入理赔编号">
				</div>
				<span class="btn btn-default" onclick="lipei_anjian()" ><span  class="glyphicon glyphicon-search" style="height:18px;width:25px;"></span></span>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			</form>
		</div>
		<table class="table table-bordered"  id="table">
			<tr>
				<th>理赔编号</th>
				<th>理赔金额</th>
				<th>理赔时间</th>
				<th>理赔状态</th>
				<th>理赔人</th>
			</tr>
			<tbody id="all_lipei">
			</tbody>
			
			
			
		</table>
		<div id="page">
			<button class="btn btn-sm btn-primary" style="margin-right:20px">首页</button>
			<button class="btn btn-sm btn-primary" style="margin-right:20px">上一页</button>
			1/1
			<button class="btn btn-sm btn-primary" style="margin-right:20px;margin-left:20px">下一页</button>
			<button class="btn btn-sm btn-primary" style="margin-right:20px">尾页</button>
		</div>
	
</body>
</html>