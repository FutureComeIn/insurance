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
             #zg{float: right;}
             #xg{float: right;}
             tr td .text{
             	width: 100px;
             }
		</style>
	</head>

<script type="text/javascript" src="../../js/jquery-1.8.3.js" ></script>
	<script src="../../js/CarInfo/chesun2.js"></script> 

	<body style="background: #F7F7F7;" >
		<!--
                	作者：offline
                	时间：2017-10-24
                	描述：内容开始
               -->
	
			<div align="center">
				
				<table  border="1" style="border-collapse:collapse;" class="table table-bordered" valign="middle">
					
					<tr>
						<td colspan="7">车辆种类添加</td>
					</tr>
					 <tr>
			      <td >车辆名称</td>
			      <td >车辆品牌</td>
			      <td >车辆具体类型</td>
			      <td >市场价格</td>
			    
			    </tr>
						<tr class="tr addon">
						<td><input id="loss_number_on" type="text" class="text"   /></td>
						<td><input id="loss_assessment_price_on" type="text" class='text'  /></td>
						<td><input id="maintenance_point_on" type="text" class='text' /></td>
						<td><input id="loss_assessment_sum_on" type="text" class='text' /></td>
						
					
					</tr>
					<tr id="butt">
					
						<td colspan="4" align="center">
							<input id="bc" type="button" value="保存" >
							<input type="reset" value="重置"> 
						</td>
				</tr>
				</table>
			</div>
		
			
	</body>
	
</html>