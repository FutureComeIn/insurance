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

    	</style>
  </head>

  <body style="background: #F7F7F7;">
    
				
				<!--
                	作者：offline
                	时间：2017-10-24
                	描述：内容开始
                -->
				
                   
              
        	<form action="../lzw/carlossdetail_info.html">
        	<div id="add_pros">
        		新增定损明细
        	</div>
        	<table id="pro_bg" class="table table-bordered">
        		<!--
                	作者：offline
                	时间：2017-11-20
                	描述：车损明细开始
                -->
        		<tr>
        			<td colspan="3">我方车损明细：</td>
        		</tr>
        		<tr>
        			<td>报案编号：<input type="text"/></td>
        			<td>车辆类型：<input type="text"/></td>
        			<td>事故车部件：<input type="text"/></td>
        		</tr>
        		<tr class="tr">
        			<td>定损数量：<input type="text"/></td>
        			<td>定损单价：<input type="text"/>
        			<input type="button" value="+" id="btn_tr_3">
   					<input type="button" value="-" id="btn_re_4">
        			</td>
        			<td>
        				受损图片：<input type="file" />					
        			</td>
        		</tr>
        		<tr id="tab">
        			<td>定损地点：<input type="text"/></td>
        			<td>定损时间：<input type="date"/></td>
        			<td>定损小计：<input type="text"/></td>	
        		</tr>
        		
        		
        		<tr>
        			<td colspan="3">对方车损明细：</td>
        		</tr>
        		<tr>
        			<td>报案编号：<input type="text"/></td>
        			<td>车辆类型：<input type="text"/></td>
        			<td>事故车部件：<input type="text"/></td>
        		</tr>
        		<tr class="tr">
        			<td>定损数量：<input type="text"/></td>
        			<td>定损单价：<input type="text"/>
        			<input type="button" value="+" id="btn_tr_3">
   					<input type="button" value="-" id="btn_re_4">
        			</td>
        			<td>
        				受损图片：<input type="file" />					
        			</td>
        		</tr>
        		<tr id="tab3">
        			<td>定损地点：<input type="text"/></td>
        			<td>定损时间：<input type="date"/></td>
        			<td>定损小计：<input type="text"/></td>	
        		</tr>
        		
        		<tr class="count" style="text-align: center;">  
        			<td colspan="3">
        				<button onclick="loseinfo();">保存</button>
        				<button>重置</button>
        				<button >取消</button>
        			</td>
        		</tr>
        	</table>
		</form>
     
                   
                   
                   
            <script type="text/javascript">
            	
            	function loseinfo(){
            		window.location.href="../dinsun/carlossdetail_info.jsp";
            	}
            </script>       
				<!--
                	作者：offline
                	时间：2017-10-24
                	描述：内容结束
                -->								
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
    <script src="../../js/prospect.js"></script>
  </body>
</html>