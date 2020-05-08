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
     <!-- jQuery -->
      <script src="../../../src/js/jquery-1.8.3.js"></script>
       <script src="../../js/InsuranceInfo/search.js"></script> 
     
  </head>
  <body style="background: #F7F7F7;" onload="caronloads(1);">
         <div id="title" align="center"> 
			 <h1>保险表</h1>
		 </div>
      
     	<div class="table">
			<table class="table table-striped"   style="width: 100%" id="table">
			    <tr>
			     
			      <td width="100">险种名称</td>
			      <td width="100">投保年限</td>
			      <td width="100">险种描述</td>
			      <td width="100">投保金额</td>
			      <td width="100">理赔金额</td>
			      <td width="100">操作</td>
				  </tr>
				       <tbody id="carinfo">
				       </tbody>
			  
            </table>
        </div>  
          
          
          
           <div id="page" align="center">
           
		</div>
                   
                   
      		
   
  </body>
</html>