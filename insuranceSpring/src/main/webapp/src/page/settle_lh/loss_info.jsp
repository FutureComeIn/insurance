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
    				#prospect_table th{text-align: center;}
    				
    		table td,
			th {
				vertical-align: middle;
				text-align: center;
			}
    	</style>
    <!-- jQuery -->
 <script src="../../../src/js/jquery-1.8.3.js"></script>
 <script src="../../js/carloss/carloss.js"></script>
  </head>

  <body style="background: #F7F7F7;" onload="onloadCarLossCase(1)">
        
        <!-- 右边内容 
        			所有东西全写在下边这个div里
        -->
        <!-- page content -->
        	<div id="top">
        		<div class="col-md-1">
        		</div>
        		<div id="menu1" class="col-md-7">
                                         案件编号：<input type="text" id="myreportednumber"/>
            </div>
            <div class="col-md-4" id="add_employees">
        					<input type="button" class="btn btn-primary btn-small" name="resetbut" value="重置条件"/>
									
									<button type="button" class="btn btn-primary btn-small" id="querydinsuninfo">
											查询
									</button>
			</div>
			</div>
				
        <!-- /page content -->
        			<!--
                    	作者：offline
                    	时间：2017-11-19
                    	描述：列表开始
                    -->
           <div class="table" id="count" align="center">
						<table class="table table-bordered"  id="table">
							<tr>
								<th>案件编号</th>
								<th>报案人</th>
								<th>车牌号</th>
								<th>联系电话</th>
								<th>报案时间</th>
								<th>出事地点 </th>
								<th>出险原因</th>
								<th>案件状态</th>
								<th>操作</th>
							</tr>
							<tbody id="caseinfo">
							<tr>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td> </td>
								<td></td>
								<td></td>
								<td>
								<a href="../dinsun/begindinsun.jsp" class="btn btn-sm btn-primary">定损</a>
								</td>
							</tr>
							</tbody>
						</table>
				<div id="page">
					<button class="btn btn-sm btn-primary" style="margin-right:20px">首页</button>
					<button class="btn btn-sm btn-primary" style="margin-right:20px">上一页</button>
					1/1
					<button class="btn btn-sm btn-primary" style="margin-right:20px;margin-left:20px">下一页</button>
					<button class="btn btn-sm btn-primary" style="margin-right:20px">尾页</button>
				</div>
		</div>
		<script src="../../../vendors/jquery/dist/jquery.min.js"></script>
  </body>
</html>