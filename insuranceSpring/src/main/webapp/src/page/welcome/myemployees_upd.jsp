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
    <style type="text/css">
    	
    #form-user{
    		margin:0px auto;
    	}
    	body{
    		
    	}
    	</style>
  </head>

  <body style="background: #F7F7F7;">
    

				
				
					<!--
                    	作者：offline
                    	时间：2017-10-24
                    	描述：搜索用户信息
                    -->

					
					
					
					 <div id="form-user" class="add_info">
						
								<div class="form-group col-md-12" style="font: '微软雅黑;">
							 	 	<h4>修改我的信息：</h4>	
							 	 </div>
							
								
								<div class="form-group col-md-4">
								 <label>联系方式</label>
								  <input type="text" name="name" class="form-control employeesTel" id="form-user" placeholder="请输入联系方式">
								 </div>
								 
								 	<div class="col-md-4">
										<label>联系地址</label></br>
										  <select class="form-control" id="province" onchange="changeCity();">
											  <option>请选择省/城市</option>
											</select>
										</div>
										 
										<div class="col-md-4">
										<label>地区</label></br>
										  <select class="form-control city" id="city">
											  <option>请选择城市/地区</option>
											</select>
									</div>
									
								
								
							 	
									
									<div class="col-md-12" style="text-align: center;">
										<button type="button"  id="upd" class="btn btn-primary">提交</button>
									</div>
						
					 </div>
					 
					<!--
                    	作者：offline
                    	时间：2017-11-17
                    	描述：表单
                    -->
                    
                   
                   
												
</div>
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
    <script src="../../../src/js/personal/myInfo_upd.js"></script>
  </body>
</html>