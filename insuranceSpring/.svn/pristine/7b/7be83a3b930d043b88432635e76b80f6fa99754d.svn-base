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

		<!-- iCheck -->

		<!-- bootstrap-progressbar 
    <link href="../../../vendors/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet">
    <!-- JQVMap 
    <link href="../../../vendors/jqvmap/dist/jqvmap.min.css" rel="stylesheet"/>
    <!-- bootstrap-daterangepicker 
    <link href="../../../vendors/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">

    <!-- Custom Theme Style 
    <link href="../../../build/css/custom.min.css" rel="stylesheet">
    -->
		<style type="text/css">
		table td,
			th {
				vertical-align: middle;
				text-align: center;
			}
			
			#top {
				margin-bottom: 10px;
				margin-top: 10px;
			}
			
			#top,#page {
				text-align: center;
			}
		}
		</style>
		<script src="../../js/jquery-1.8.3.js"></script>
		<script type="text/javascript" src="../../js/case/case.js"></script>
	</head>

	<body style="background: #F7F7F7;" onload="loadCase(1)">
		<!-- page content -->
		<div id="top">
			<div class="form-inline" >
				<div class="form-group">
					<p class="form-control-static" style="font-size: 16px;">案件编号</p>
				</div>
				<div class="form-group" style="margin-right:20px;">
					<input type="text" class="form-control img-rounded" id="caseId" placeholder="请输入案件编号">
				</div>
				<div class="form-group" >
					<p class="form-control-static" style="font-size: 16px;">案件发生原因</p>
				</div>
				<div class="form-group" style="margin-right:20px;">
					<input type="text" class="form-control img-rounded" id="reportReason" placeholder="请输入案件发生原因">
				</div>
				<div class="form-group">
					<p class="form-control-static" style="font-size: 16px;">案件发生地址</p>
				</div>
				<div class="form-group"style="margin-right:20px;">
					<input type="text" class="form-control img-rounded" id="address" placeholder="请输入案件发生地址">
				</div>
				<span class="btn btn-default" onclick="search(1);"><span  class="glyphicon glyphicon-search" style="height:18px;width:25px;"></span></span>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			</div>
		</div>

		<table class="table table-bordered " id="table">
			<thead>
				<tr>
					<th>案件编号</th>
					<th>报案人</th>
					<th>案件发生原因</th>
					<th>案件发生地点</th>
					<th>接案员</th>
					<th>勘察员</th>
					<th>定损员</th>
					<th>核损员</th>
					<th>理赔员</th>
					<th>结案员</th>
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