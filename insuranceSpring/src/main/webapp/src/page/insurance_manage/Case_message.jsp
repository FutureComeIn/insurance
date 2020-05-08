<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <% %>
<html>
	<head>
		<meta charset="UTF-8">
		<title>案件管理</title>
			<!-- Bootstrap -->
	<!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
	<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />

	<!-- 可选的 Bootstrap 主题文件（一般不用引入） -->
	<link href="css/bootstrap-theme.min.css" rel="stylesheet" type="text/css" />

	<script type="text/javascript" src="js/jquery-1.11.1.js"></script>

	<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script src="../../js/autolnsurance/Case_message.js"></script>
	</head>
	<body>
		<div style="width: 100%;height:200px;">
			<table class="table table-condensed" style="text-align: center;width: 100%;" id="append">
				<tr style="background-color: #F2F2F2;font-family: '黑体';">
					<td><h5>案件编号</h5></td>
					<td><h5>报案人</h5></td>
					<td><h5>报案时间</h5></td>
					<td><h5>出事地点</h5></td>
					<td><h5>状态</h5></td>
				</tr>
			</table>
		</div>
		<div style="margin-left: 500px;">
				<nav aria-label="Page navigation">
		  			<ul class="pagination">
		    			<li id="shangyiye">	
			        			<span aria-hidden="true">上一页</span>
		    			</li>
					    <li><a href="#">当前页</a></li>
					    <li><a href="#" id="pagenum"></a></li>
					    <li id="xiayiye">
					     	   <span aria-hidden="true">下一页</span>
				   		</li>
				  </ul>
				</nav>
		</div>
	<!-- 获取保单编号warranty_number -->
	<input type="hidden" name="warranty_number" value="${param.warranty_number}">
	</body>
</html>
