<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path = request.getContextPath();
%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>勘察明细</title>
<!-- Bootstrap -->
<link href="../../../vendors/bootstrap/dist/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Font Awesome -->
<link href="../../../vendors/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<!-- jQuery -->
<script src="../../../src/js/jquery-1.8.3.js"></script>
<script src="../../../src/js/form/jquery-form.js"></script>
<script src="../../../src/js/check/updateCheck.js"></script>
<script src="../../../src/js/bigImg/okzoom.js"></script>
<style type="text/css">
			table td,th {
				vertical-align: middle;
				text-align: center;
			}
			form {
				margin-bottom: 10px;
				margin-top: 10px;
			}
			#top,#page{
				text-align:center;
			}
			#example {
		      box-shadow: 0 3px 5px #888;
		    }
</style>
<script type="text/javascript">
	$(document).ready(function () {
		$('.example').okzoom({
	          width: 150,
			  height: 150,
			  round: true,
			  background: "#fff",
			  backgroundRepeat: "repeat",
			  shadow: "0 0 5px #000",
			  border: "1px solid blue"
	      });
	})
</script>
</head>

<body style="background: #F7F7F7;" >

	<!-- 右边内容 
        			所有东西全写在下边这个div里
        -->
	<!-- page content -->
	    <input type="hidden" value="<%=request.getParameter("checkId") %>" id="checkId"/>
	    <input type="hidden" value="<%=request.getParameter("reportId") %>" id="reportId"/>
       <form id="updateform" method="post" enctype="multipart/form-data">
        <div class="row" style="margin:10px auto;width: 96%;" >
        	<div class="col-lg-6" >
        		<h4 id="add_pros">
        		报案信息
        		</h4>
		        <div class="col-lg-4">
				    <label for="level">报案编号</label>
				    <input type="text" class="form-control" value="${report.reportId }" readonly="readonly">
				</div>
				<div class="col-lg-4">
				    <label for="level">报案人姓名</label>
				    <input type="text" class="form-control" value="${report.reportPersonName} "  readonly="readonly">
				</div>
				<div class="col-lg-4" >
				    <label for="level">报案人电话</label>
				    <input type="text" class="form-control" value="${report.reporPersontPhone }"  readonly="readonly">
				</div>
				<div class="col-lg-4" style="margin:15px 0">
				    <label for="level">报案时间</label>
				    <input type="text" class="form-control" value="${report.reportTime }"  readonly="readonly">
				</div>
				<div class="col-lg-4" style="margin:15px 0">
				    <label for="level">出险原因</label>
				    <input type="text" class="form-control" value="${report.reportReason }"  readonly="readonly">
				</div>
				<div class="col-lg-4" style="margin:15px 0">
				    <label for="level">出险地点所在省</label>
				    <input type="text" class="form-control" value="${report.province }"  readonly="readonly">
				</div>
				<div class="col-lg-4" style="margin:15px 0">
				    <label for="level">出险地点所在市</label>
				    <input type="text" class="form-control" value="${report.city}"  readonly="readonly">
				</div>
				<div class="col-lg-4" style="margin:15px 0">
				    <label for="level">出险地点所在区</label>
				    <input type="text" class="form-control" value="${report.area }"  readonly="readonly">
				</div>
				<div class="col-lg-4" style="margin:15px 0">
				    <label for="level">出险地点所在路段</label>
				    <input type="text" class="form-control" value="${report.road }"  readonly="readonly">
				</div>
				<div class="col-lg-4" style="margin:15px 0">
				    <label for="level">路段方向</label>
				    <input type="text" class="form-control" value="${report.road_direction }"  readonly="readonly">
				</div>
				<div class="col-lg-4" style="margin:15px 0">
				    <label for="level">操作用户</label>
				    <input type="text" class="form-control" value="${report.userName }"  readonly="readonly">
				</div>
				<div class="col-lg-4" style="margin:15px 0">
				    <label for="level">案件状态</label>
				    <input type="text" class="form-control" value="已勘察"  readonly="readonly">
				</div>
			</div>
			
			<div class="col-lg-6" >
				<h4 id="add_pros">
        		勘察信息
        		</h4>
		        <div class="col-lg-4">
				    <label for="level">勘察编号</label>
				    <input type="text" class="form-control" name="checkId" id="checkId" value="${check.checkId }"  readonly="readonly">
				</div>
				<div class="col-lg-4">
				    <label for="level">勘察员</label>
				    <input type="text" class="form-control" name="checkName" id="checkId" value="${check.checkName }"  readonly="readonly">
				</div>
				<div class="col-lg-4" >
				    <label for="level">勘察地点</label>
				    <input type="text" class="form-control" name="checkAddress" id="checkId"  value="${check.checkAddress }">
				</div>
				<div class="col-lg-4" style="margin:15px 0">
				    <label for="level" >勘察时间</label>
				    <input type="date" class="form-control" name="checkTime" id="checkId" value="${check.checkTime }"  >
				</div>
				<div class="col-lg-4" style="margin:15px 0">
				    <label for="level">我方车主姓名</label>
				    <input type="text" class="form-control" name="mydriverName" id="checkId" value="${check.mydriverName }" >
				</div>
				<div class="col-lg-4" style="margin:15px 0">
				    <label for="level">对方车主姓名</label>
				    <input type="text" class="form-control" name="oppositeDriverName" id="checkId" value="${check.oppositeDriverName }">
				</div>
				<div class="col-lg-4" style="margin:15px 0">
				    <label for="level">我方车主电话</label>
				    <input type="text" class="form-control" name="mydriverTel" id="checkId" value="${check.mydriverTel }">
				</div>
				<div class="col-lg-4" style="margin:15px 0">
				    <label for="level">对方车主电话</label>
				    <input type="text" class="form-control" name="oppositeDriverTel" id="checkId" value="${check.oppositeDriverTel }">
				</div>
				<div class="col-lg-4" style="margin:15px 0">
				    <label for="level">我方车主行驶证</label>
				    <input type="text" class="form-control" name="myVehicleLicense" id="checkId" value="${check.myVehicleLicense }">
				</div>
				<div class="col-lg-4" style="margin:15px 0">
				    <label for="level">对方车主行驶证</label>
				    <input type="text" class="form-control" name="oppositeVehicleLicense" id="checkId" value="${check.oppositeVehicleLicense }">
				</div>
				<div class="col-lg-4" style="margin:15px 0">
				    <label for="level">我方车主驾驶证</label>
				    <input type="text" class="form-control" name="myLicense" id="checkId" value="${check.myLicense }">
				</div>
				<div class="col-lg-4" style="margin:15px 0">
				    <label for="level">对方车主驾驶证</label>
				    <input type="text" class="form-control" name="oppositeLicense" id="checkId" value="${check.oppositeLicense }">
				</div>
			</div>
		
		</div>
		<div class="row" style="margin:0px auto;width: 92%;">
		<c:forEach items="${cdList}" var="cdlist">
			<div class="col-lg-4" style="margin:10px 0">
					<img alt="" src="../../../${cdlist.checkImg}" class="example" name="checkImg"  style="width:230px;height:250px">
					<span style="vertical-align: bottom;font-size: 16px;">勘察备注：</span>
					<input type="hidden"  name="checkDetailsId" value="${cdlist.checkDetailsId }"/>
					<input type="text"  name="checkRemark" style="vertical-align: bottom;width:120px" class="img-rounded" value="${cdlist.checkRemark}"/>
			</div>
			<!--  
				<div class="col-lg-4" style="margin:10px 0">
						<img alt="" src="<%=path %>/src/img/2.jpg" style="width:200px;height:250px">
						<span style="vertical-align: bottom;font-size: 16px;">勘察备注：</span>
						<input type="text" style="vertical-align: bottom;width:120px" class="img-rounded"/>
				</div>
				<div class="col-lg-4" style="margin:10px 0">
						<img alt="" src="<%=path %>/src/img/2.jpg" style="width:200px;height:250px">
						<span style="vertical-align: bottom;font-size: 16px;">勘察备注：</span>
						<input type="text" style="vertical-align: bottom;width:120px" class="img-rounded"/>
				</div>
				<div class="col-lg-4" style="margin:10px 0">
						<img alt="" src="<%=path %>/src/img/1.jpg" style="width:200px;height:250px">
						<span style="vertical-align: bottom;font-size: 16px;">勘察备注：</span>
						<input type="text" style="vertical-align: bottom;width:120px" class="img-rounded"/>
				</div>
				<div class="col-lg-4" style="margin:10px 0">
						<img alt="" src="<%=path %>/src/img/2.jpg" style="width:200px;height:250px">
						<span style="vertical-align: bottom;font-size: 16px;">勘察备注：</span>
						<input type="text" style="vertical-align: bottom;width:120px" class="img-rounded"/>
				</div>
				<div class="col-lg-4" style="margin:10px 0">
						<img alt="" src="<%=path %>/src/img/2.jpg" style="width:200px;height:250px">
						<span style="vertical-align: bottom;font-size: 16px;">勘察备注：</span>
						<input type="text" style="vertical-align: bottom;width:120px " class="img-rounded"/>
				</div>
			-->
			</c:forEach>
		</div>
		<div id="page">
			<input class="btn btn-sm btn-primary" type="button" style="margin-right:20px" id="updateCheck" value="保存修改"/>
			<a href="checked_query.jsp"  class="btn btn-primary btn-sm"  >返回</a>
		</div>
		</form>
	
</body>
</html>