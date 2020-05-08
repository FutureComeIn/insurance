<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
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
 <script language="javascript">
        
		    function check(carTypeId)
		    {
		    	
		    //	alert(document.formUpdate.carTypeId.value);
		    //	alert(document.getElementByName("carPartName").value);
			if(document.formUpdate.carTypeId.value=="")
			 {	
			     alert("请填写车辆型号");
			     return false;
			 }else if(document.formUpdate.carPartName.value==""){
			    alert("请填写车辆零件名");
			    return false;
			  }else if(document.formUpdate.carPartPrice.value==""){
			    alert("请填写市场价格");
			    return false;
			  }else if(document.formUpdate.carPartRemark.value==""){
			    alert("请填写零件备注");
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
	 <form action="<%=path %>/updatePartInfo.do?carPartId=${api.singerData.carPartId}" name="formUpdate" method="post" >
	
			<div align="center">
				
				<table  border="1" style="border-collapse:collapse;" class="table table-bordered" valign="middle">
					<div id="title" align="center">
					<h1>车辆种类修改</h1>
					</div>
					<tr>
						<td colspan="4">零件修改</td>
					</tr>
					<tr>
						<th>零件编号</th>
						<th>车辆型号</th>
						<th>车辆零件名</th>
						<th>市场价格</th>
						<th>零件备注</th>
					
					</tr>
					
					
					
					<tr class="tr addon">
					  
					  	<td><input name="carPartId" type="text" class='text' value="${api.singerData.carPartId}"/></td>
				
					  
					   <td >
					      
						        <select name="carTypeId">
						         	<option value="">--请选择所属型号--</option>
						         	<c:forEach items="${cList}" var="cList" >
						         		<option value="${cList.carTypeId}" >${cList.carName}</option>
						         	</c:forEach>	
						        </select>
						  
					   </td>   
						  
								
					
						
						<td><input name="carPartName" type="text" class='text' value="${api.singerData.carPartName}"/></td>
						<td><input name="carPartPrice" type="text" class='text' value="${api.singerData.carPartPrice }"/></td>
						<td><input name="carPartRemark" type="text" class='text'  value="${api.singerData.carPartRemark}" /></td>
				
						
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