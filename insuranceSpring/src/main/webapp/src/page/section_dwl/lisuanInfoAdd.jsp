<%@page import="org.apache.shiro.authz.annotation.RequiresUser"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%String path=request.getContextPath(); %>
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
		<script src="../../../src/js/jquery-1.8.3.js"></script>
   		<script src="../../../src/js/form/jquery-form.js"></script>
   		<script src="../../../src/js/lisuanInfo/add_lisuanInfo.js"></script>
   		<script src="../../../src/js/lisuanInfo/louadlisuanImg.js"></script>
		
		   
		   <style type="text/css">
		   .left{
		   float:left;
		   width:500px;
		   height:300px;
		  
		   }
		    .right{
		   float:right;
		   width:500px;
		   height:300px;
		  
		   }
		   
		 
		   
		   </style>
	</head>

	<body style="background: #F7F7F7;" onload="louadlisuanImg()">
		<div id="body">
			<div class="col-md-12 ">
				<div id="title" align="center">
					<h1>理赔信息资料表</h1></div>
					
			<form  id="uploadForm"  method="post" enctype="multipart/form-data">
				<table class="table table-bordered" style="width: 100%" id="anjianliebiao">
					<tr id="tr1" >
						<td  >
							上传具体清单：
							<center>
							<input type="file" name="specificList" id="file1">
							</center>
						</td>
						<td >
							上传具体发票：
							<center>
						  <input type="file" name="specificInvoice" id="file2">
							</center>
						</td>	
						
						
						     
						   
							<td >备注</td>    <td>  <textarea rows="1" cols="2" name="remark"></textarea></td>
					</tr>
		  	        </table>
		  	                           
		  	     <div id="main">
		  	    
		  	         <div class="left"> <img  id="img1" width="500"  hight="1000" alt="" src=""/> </div>
		  	         <div  class="right">     <img  id="img2"  width="500"  hight="1000" alt="" src=""/> </div> 
		  	      
		  	      </div>
		  	          
				 <div  class ="center" align="center">        
					<input type="button" class="btn btn-primary" onclick="save()" value="提交" id="111"/>      
					 <a href="lisuanInfo.jsp" style="color: white;">        
					 <button type="button" class="btn btn-primary">返回</button></a>    
				</div>             
		</form>
	   </div>
	   </div>
	</body>

</html>