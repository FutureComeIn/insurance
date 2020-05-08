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
    <link href="../../../vendors/jqvmap/dist/jqvmap.min.css" rel="stylesheet"/>
    <!-- bootstrap-daterangepicker -->
    <link href="../../../vendors/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">
	<script src="../../js/jquery-1.8.3.js"></script>
	<script src="../../js/report/QueryWarranty.js"></script>
<!-- Custom Theme Style -->
    
    <style type="text/css">
    #fom1{
    	margin-left:180px ;
    }
    	
    	nav{
    		margin-left:100px ;
    		margin-left:500px ;
    	}
    	#page {
				text-align: center;
			}
    	</style>
    	
	    <script type="text/javascript">
	    
	    
	    </script>
	</head>
	<body style="background: #F7F7F7;" onload="warrantyonloads()">
	  <form class="form-inline" id="fom1">
	  	
  <div class="form-group">
    <label for="exampleInputName2">保单号</label>
    <input type="text" class="form-control" id="warranty_number" placeholder="请输入保单编号">
  </div>
  
  <div class="form-group">
    <label for="exampleInputEmail2">车牌号</label>
    <input type="text" class="form-control" id="license_number" placeholder="请输入车牌号">
  </div>
  
  <div class="form-group">
    <label for="exampleInputEmail2">身份证号</label>
    <input type="text" class="form-control" id="credentials_number" placeholder="请输入身份证号">
  </div>
  
  <div class="form-group">
    <label for="exampleInputEmail2">发动机号</label>
    <input type="text" class="form-control" id="engines_number" placeholder="请输入发动机号">
  </div>
  
  <span class="btn btn-default" onclick="search(1);"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></span>
</form><br /><br />

<table class="table table-striped" id="table">
        <tr>
        	<th>保单号</th>
        	<th>投保人</th>
        	<th>身份证号</th>
        	<th>被保人</th>
        	<th>被保人电话</th>
        	<th>投保日期</th>
        	<th>到期日期</th>
        	<th>驾驶证号</th>
        	<th>车牌号</th>
        	<th>发动机号</th>  
        	<th>操作</th>
        	
        	<tbody id="reportInfo"></tbody>
</table>

<div id="page">
			<button id="firstpage" class="btn btn-sm btn-primary" style="margin-right:20px">首页</button>
			<button id="jian" class="btn btn-sm btn-primary" style="margin-right:20px">上一页</button>
			1/1
			<button id="jia" class="btn btn-sm btn-primary" style="margin-right:20px;margin-left:20px">下一页</button>
			<button id="lastpage" class="btn btn-sm btn-primary" style="margin-right:20px">尾页</button>
		</div>
	</body>
</html>