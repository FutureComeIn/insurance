<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib  uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
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
    <style type="text/css">
    
    form{
    	margin-left: 30%;
    }
    
    table{
    	margin-top:20px ;
    }
    #fanhui{
    	margin-left:90% ;
    	}

    	</style>
		
		<title></title>
	</head>
	<body style="background: #F7F7F7;">
		
		<form class="form-inline">
		  <a href="../report_wb/report_allquery.jsp" id="fanhui">返回</a>
</form>
		
		
		<table class="table table-bordered" id="table">
                    <tr>
                     <th>报案编号</th>
                	 <th>投保人</th>
                	 <th>被保人</th>
                	 <th>车牌号</th>
                	 <th>报案人</th>
                	 <th>报案人电话</th>
                	 <th>出险原因</th>
                	 <th>出险地点所在省</th>
					 <th>出险地点所在市</th>
					 <th>出险地点所在区县</th>
					 <th>出险地点所在路段</th>
					  <th>出险地点所在方向</th>
                	 <th>出险日期</th>
                    </tr>
                    <tr>
                     <td>${api.singerData.reportId }</td>
                	 <td>${api.singerData.warranty.policyholdersName }</td>
                	 <td>${api.singerData.warranty.recognizeeName }</td>
                	 <td>${api.singerData.warranty.sailId }</td>
                	 <td>${api.singerData.reportPersonName }</td>
                	 <td>${api.singerData.reporPersontPhone }</td>
                	 <td>${api.singerData.reportReason }</td>
                	 <td>${api.singerData.province }</td>
					 <td>${api.singerData.city }</td>
					 <td>${api.singerData.area }</td>
					 <td>${api.singerData.road }</td>
					 <td>${api.singerData.road_direction }</td>
                	 <td>${api.singerData.reportTime }</td>
                    </tr>
					
        </table>
	</body>
	<script src="../../js/jquery-1.8.3.js"></script>
</html>