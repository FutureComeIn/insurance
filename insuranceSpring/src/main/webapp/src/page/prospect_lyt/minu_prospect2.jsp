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

    <!-- Custom Theme Style -->
    <link href="../../../build/css/custom.min.css" rel="stylesheet">
    <style type="text/css">
    		.img{width: 250px;height:200px;float: left;margin-left:72px ;}
    		.pand{text-align: center;}
    		textarea{width: 100%;}
    	</style>
  </head>

  <body style="background: #F7F7F7;">
        <!-- /top navigation -->
        <!-- 右边内容 
        			所有东西全写在下边这个div里
        -->
        <!-- page content -->
					<div>
        		查勘任务<input type="hidden" id="police">
        	</div>
        	<input type="hidden" value="<%=request.getParameter("number2") %>" id="parmeId2">
        	<table class="table table-bordered" id="one">
        		<tr class="pand">
        			<td>案件编号</td>
        			<td>报案人</td>
        			<td>报案人电话</td>
        			<td>报案时间</td>
        			<td>出险详细地点</td>
        			<td>出险原因</td>
        			<td>案件状态</td>
        		</tr>
        	</table>
        	<div>
        		查勘报告
        	</div>
        	<table class="table table-bordered">
        		<tr class="pand">
        			<td class="col-md-2">勘察编号</td>
        			<td class="col-md-2">报案人</td>
        			<td class="col-md-2">报案时间</td>
        			<td class="col-md-2">勘察时间</td>
        			<td class="col-md-2">勘察地点</td>
        			<td class="col-md-2">事故类型</td>
        		</tr>
        		<tr class="pand">
        			<td id="prospect_number"></td>
        			<td id="informants"></td>
        			<td id="reported_time"></td>
        			<td id="prospect_time"></td>
        			<td id="prospect_address"></td>
        			<td id="accident_type"></td>
        		</tr>
        		
        		<tr class="pand">
        			<td>责任判断</td>
        		  	<td>出险原因</td>
        			<td>司机姓名</td>
        			<td>司机电话</td>
        			<td>行驶证号</td>
        			<td>驾驶证号</td>
        		</tr>
        		<tr class="pand">
        			<td id="duty"></td>
        		  	<td id="danger_cause"></td>
        			<td id="driver_name"></td>
        			<td id="driver_tel"></td>
        			<td id="driving_licence"></td>
        			<td id="driving_license"></td>
        		</tr>
        		<tr>
        			<td colspan="6">出险经过<input type="hidden" id="prospect"></td>
        		</tr>
        		<tr>
        			<td colspan="6">
        				<textarea cols="3" id="prospect_pass" readonly="readonly"></textarea>
        			</td>
        		</tr>
        		<tr>
        			<td colspan="6">损失情况</td>
        		</tr>
        		<tr>
        			<td colspan="6" >
        				<textarea cols="3" id="loss_info" readonly="readonly"></textarea>
        			</td>
        		</tr>
        		<tr>
        			<td colspan="6">交警责任判断书：<input type="button" value="下载" id="downFile"></td>
        		</tr>
        	</table>
        		<div id="chakan_img">事故图片</div>
        <!-- footer content -->
       
        <!-- /footer content -->


    <!-- jQuery -->
    <script src="../../../vendors/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="../../../vendors/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- FastClick -->
    <script src="../../../vendors/fastclick/lib/fastclick.js"></script>
    <!-- NProgress -->
    <script src="../../../vendors/nprogress/nprogress.js"></script>
    <!-- Chart.js -->
    <script src="../../../vendors/Chart.js/dist/Chart.min.js"></script>
    <!-- gauge.js -->
    <script src="../../../vendors/gauge.js/dist/gauge.min.js"></script>
    <!-- bootstrap-progressbar -->
    <script src="../../../vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
    <!-- iCheck -->
    <script src="../../../vendors/iCheck/icheck.min.js"></script>
    <!-- Skycons -->
    <script src="../../../vendors/skycons/skycons.js"></script>
    <!-- Flot -->
    <script src="../../../vendors/Flot/jquery.flot.js"></script>
    <script src="../../../vendors/Flot/jquery.flot.pie.js"></script>
    <script src="../../../vendors/Flot/jquery.flot.time.js"></script>
    <script src="../../../vendors/Flot/jquery.flot.stack.js"></script>
    <script src="../../../vendors/Flot/jquery.flot.resize.js"></script>
    <!-- Flot plugins -->
    <script src="../../../vendors/flot.orderbars/js/jquery.flot.orderBars.js"></script>
    <script src="../../../vendors/flot-spline/js/jquery.flot.spline.min.js"></script>
    <script src="../../../vendors/flot.curvedlines/curvedLines.js"></script>
    <!-- DateJS -->
    <script src="../../../vendors/DateJS/build/date.js"></script>
    <!-- JQVMap -->
    <script src="../../../vendors/jqvmap/dist/jquery.vmap.js"></script>
    <script src="../../../vendors/jqvmap/dist/maps/jquery.vmap.world.js"></script>
    <script src="../../../vendors/jqvmap/examples/js/jquery.vmap.sampledata.js"></script>
    <!-- bootstrap-daterangepicker -->
    <script src="../../../vendors/moment/min/moment.min.js"></script>
    <script src="../../../vendors/bootstrap-daterangepicker/daterangepicker.js"></script>

    <!-- Custom Theme Scripts -->
    <script src="../../../build/js/custom.min.js"></script>
    <script src="../../js/employees.js"></script>
    <script src="../../../src/js/jquery-1.8.3.js"></script>
    <script src="../../../src/js/reconnaissance/minu_prospect2.js"></script>
  </body>
</html>