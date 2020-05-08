<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
String path = request.getContextPath();
%>
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
<!-- jQuery -->
<script type="text/javascript" src="../../js/jquery-1.8.3.js" ></script>
<

<script type="text/javascript" ></script>
        
        <script language="javascript">
        
		    function check()
		    {
			if(document.formUpdate.carName.value=="")
			 {	
			  alert("请填写车辆名称");
			  return false;
			  }else if(document.formUpdate.carBrand.value==""){
			    alert("请填写车辆品牌");
			    return false;
			  }else if(document.formUpdate.carSpecificType.value==""){
			    alert("请填写车辆具体类型");
			    return false;
			  }else if(document.formUpdate.carValue.value==""){
			    alert("请填写价格");
			    return false;
			  }
			 else
			 {  
		        	document.formUpdate.submit();
		      }
		    } 

        </script>
	</head>


      
	<body style="background: #F7F7F7;" >
         <form action="<%=path %>/updateCarInfo.do?carTypeId=${api.singerData.carTypeId}" name="formUpdate" method="post" >
	
			<div align="center">
				
				<table  border="1" style="border-collapse:collapse;" class="table table-bordered" valign="middle">
					<div id="title" align="center">
					<h1>车辆种类修改</h1>
					</div>
					<tr>
						<td colspan="4">车辆种类修改</td>
					</tr>
					 <tr>
				      <td >车辆名称</td>
				      <td >车辆品牌</td>
				      <td >车辆具体类型</td>
				      <td >市场价格</td>
			   		 </tr>
					<tr class="tr addon">
						<td><input name="carName" type="text" class='text'  value=" ${api.singerData.carName }" /> </td>
						<td><input name="carBrand" type="text" class='text'  value="${api.singerData.carBrand }"/></td>
						<td><input name="carSpecificType" type="text" class='text' value="${api.singerData.carSpecificType }"/></td>
						<td><input name="carValue" type="text" class='text' value="${api.singerData.carValue }"/></td>
					</tr>
					<tr id="butt">
						
						
					
					    <td colspan="4" align="center">
							<input id="bc" type="button" value="保存" onclick="check()">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="reset" value="重置"> 
						</td>
					
					</tr>
				</table>
			</div>
		</form>
	
	</body>
</html>