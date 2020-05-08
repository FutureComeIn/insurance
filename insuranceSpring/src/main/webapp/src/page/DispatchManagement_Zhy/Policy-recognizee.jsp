<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>被保人信息管理</title>
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
	<script type="text/javascript" src="../../js/WarrantyInfo/queryRecognizee.js"></script>
    
    <style type="text/css">
			form{
				margin-left: 10%;
			}
			
			table{
				margin-top: 20px;
			}
			#top,#page {
				text-align: center;
			}
    </style>
  </head>

  <body style="background: #F7F7F7;" onload="Recognizeeonloads(1)">
       		<form class="form-inline" role="form">
       				<div class="form-group">
    					<p class="form-control-static">被保人编号</p>
  					</div>
  					
  					<div class="form-group">
   						 <input type="text" class="form-control" id="recognizeeId"  placeholder="输入编号..">
 					</div>
       		
  					<div class="form-group">
    					<p class="form-control-static">被保人姓名</p>
  					</div>
  					
  					<div class="form-group">
   						 <input type="text" class="form-control" id="recognizeeName"  placeholder="输入姓名...">
 					</div>
 					
 					<div class="form-group">
    					<p class="form-control-static">身份证号码</p>
  					</div>
  					
  					<div class="form-group">
   						 <input type="text" class="form-control" id="cardId" placeholder="请输入16位身份证...">
 					</div>
 								 <span  class="btn btn-default"  onclick="search(1);"><span  class="glyphicon glyphicon-search"></span></span>
 								 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 								 <a href="AddRecognizee.jsp">
 								 <button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#upd-UserInfo">
									           新增</button></a>
						</form>
       	
				<div>
						<table class="table table-bordered"  id="table">
					 		<tr class="">
					 			<td class="active">编号</td>
					 			<td class="active">被保人姓名</td>
								<td class="active">性别</td>
								<td class="active">身份证号</td>
					 			<td class="active">联系方式</td>
					 			<td class="active">地址</td>
					 			<td class="active">操作</td>
					 		</tr>
							<tbody id="tbody">
						
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
				</div>
	</div>
                   
  						
   <!-- jQuery -->
    <script  src="../../../vendors/jquery/dist/jquery.min.js"></script>
	    
  </body>
</html>