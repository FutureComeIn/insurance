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
      <script type="text/javascript" src="../../js/jquery-1.8.3.js" ></script>
     <!-- jQuery -->
    <script src="../../../src/js/jquery-1.8.3.js"></script>
       <script src="../../js/part/search.js"></script> 
  </head>

 <body style="background: #F7F7F7;" onload="caronloads(1);">
   
				
				
				<!--
                	作者：offline
                	时间：2017-10-24
                	描述：内容开始
                -->

         <div align="center">
    <div id="title" align="center">
					<h1>零件表</h1></div>
     	<div class="table">
			<table style="width:100%" class="table tableTwo table-bordered" >
			    <thead>
			    <tr>
			      <td width="100">车辆型号</td>
			      <td width="100">车辆零件名</td>
			      <td width="100">市场价格</td>
			      <td width="100">零件备注</td>
			      <td width="100">操作</td> 
			       
			          </tr>
				    
			     <thead>
                           <tbody id="carinfo">
                
			    </tbody>
            </table>
          </div>  
         <div id="page"  align="center">
			<button class="btn btn-sm btn-primary" style="margin-right:20px">首页</button>
			<button class="btn btn-sm btn-primary" style="margin-right:20px">上一页</button>
			1/1
			<button class="btn btn-sm btn-primary" style="margin-right:20px;margin-left:20px">下一页</button>
			<button class="btn btn-sm btn-primary" style="margin-right:20px">尾页</button>
		</div>
                   
                   
      </tr>
      </table>
      </div>             
               <input type="hidden" id="dapartment" value="<%=request.getParameter("dapartment")%>"/>    
			
  </body>
</html>