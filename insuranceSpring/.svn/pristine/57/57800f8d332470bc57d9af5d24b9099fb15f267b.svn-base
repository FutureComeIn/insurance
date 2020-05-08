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
                    	描述：搜索案件信息
                    -->
	        <div class="col-md-4 input_find" id="user_name">
		           
				</div>
				
				<div class="col-md-4 input_find" id="user_id">
		           <div class="input-group">
		               <input type="text" name="q" class="form-control find_name2" placeholder="请输入案件编号....." id="reportedID"/>
		               <span class="input-group-btn">
		                   <button type='button' name='seach' id='select-btn' class="btn btn-flat"><i class="fa fa-search"></i></button>
		               </span>
		           </div>
				</div>
				
				
			
			
				<div class="col-md-4" id="add_employees">
        	
				</div>
	

<div class="col-md-12" style="height:500px;margin-top: 10px;">
					<!--
                    	作者：offline
                    	时间：2017-10-24
                    	描述：列表开始
                    -->

        	<div id="table">
						<table class="table table-bordered" align="center" style="width: 100%"
								id="tab_info">
									<tr>
										<td>报案编号</td>
										<td>报案人</td>
										<td>联系电话</td>
										<td>报案时间</td>
										<td>出事地点</td>
										<td>路段方向</td>
										<td>出险原因</td>
										<td>事故类型</td>
										<td>案件状态</td>
									
									</tr>
							</table>	
					 		<!-- <tr class="">
					 			<td class="info">001</td>
					 			<td class="info">张三</td>
					 			<td class="info">张三</td>
					 			<td class="info">4000</td>
					 			<td class="info">张三</td>
					 			<td class="info">49841615</td>
					 			<td class="info">结案</td>
					 			<td class="info">
					 				<a href="#" onclick="del_employeesInfo()">
									删除案件信息
									</a>
									<a href="#" onclick="del_employeesInfo()">
									勘察信息
									</a>
									<a href="#" onclick="del_employeesInfo()">
									定损信息
									</a>
									<a href="#" onclick="del_employeesInfo()">
									理算信息
									</a>
								</td>
							
						</table> -->
						
						<div id="">
							<ul class="pagination">
								<li><a href="#" id="jian">&laquo;</a></li>
								<li><a href="#" id="">当前页</a></li>
								<li><a href="#" id="firstpage"></a></li>
								<li><a href="#" id="">总页数</a></li>
								<li><a href="#" id="lastpage"></a></li>
								<li><a href="#" id="jia">&raquo;</a></li>
							</ul>
						</div>
					</div>
					
					
				
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
    <script src="../../../src/js/jquery-1.8.3.js"></script>
    <script src="massage_case.js"></script>
  </body>
</html>