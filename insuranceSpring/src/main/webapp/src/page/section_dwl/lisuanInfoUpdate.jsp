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
		<script src="../../../src/js/jquery-1.8.3.js"></script>
     	<script src="../../../src/js/lisuanInfo/updateLisuanInfo.js"></script> 
     	
     	<script src="../../../src/js/jquery-form.js"></script>
   
	</head>

	<body style="background: #F7F7F7;">
		<!--
                	作者：offline
                	时间：2017-10-24
                	描述：内容开始
                -->
		<div id="body">
		
		
     
				<div id="title" align="center">
					<h1>理赔信息修改</h1></div>
					
					<form  id="uploadForm"  method="post" enctype="multipart/form-data">
				<table class="table table-bordered" style="width: 100%" id="anjianliebiao">
					
					<!-- 加载原来图片 -->
					 
					<div >
                      <img  width="500"  hight="1000" alt="" src="../../../${api.singerData.specificList }"/>
		  	          <img  width="500"  hight="1000" alt="" src="../../../${api.singerData.specificInvoice }"/>
			        </div>
					     
					
					<tr id="tr1" >
					
						<td  >
						<input type="hidden" name="dataId" value="${api.singerData.dataId}">
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
						
							<td >备注</td>    <td><input name="remark" type="text" class='text' value="${api.singerData.remark }"  /></td>
					</tr>
		  	        </table>
		  	                           
		  	    
		  	     
				 <div  align="center">
					<input type="button" class="btn btn-primary" onclick="save()" value="提交" id="111"/>
					 <a href="adjustment.jsp" style="color: white;">
					 <button type="button" class="btn btn-primary">返回</button></a>
				</div>
		</form>
		
		
	</body>

</html>