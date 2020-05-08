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
    				#count{padding-top:10px;}
    				#prospect_table th{text-align: center;}
    				#menu1 input{width: 80px;height: 20px;margin:5px 6px 0px 0px}
    				#top,#page {text-align: center;}
    				
    	</style>
  <!-- jQuery -->
 <script src="../../../src/js/jquery-1.8.3.js"></script>
<script src="../../js/carloss/carloss.js"></script>
<script src="../../js/carloss/tobeginlosspage.js"></script>
  </head>
<!-- userid -->
  <body style="background: #F7F7F7;" onload="loadassessment('${loginUser.userId}',1)">
    
        
        <!-- 右边内容 
        			所有东西全写在下边这个div里
        -->
        <!-- page content -->
        
        	<div id="top">
        		<div class="col-md-1">
        		</div>
        		<div id="menu1" class="col-md-7">                       
              	  案件编号：<input type="text"/>
            </div>
            <div class="col-md-4" id="add_employees">
        					<button type="button" class="btn btn-primary btn-small" id="reset_but" onclick="xxx();">
										 重置条件
									</button>
									<button type="button" class="btn btn-primary btn-small" id="select_but" onclick="xxx();">
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
           <div class="table" id="count">
						<table class="table table-bordered" align="center" style="width: 100%" id="prospect_table">
							<!--
                            	作者：王威
                            	时间：2017-11-19
                            	描述：车损明细
                            -->
							<tr>
								<td colspan="10">车损明细</td>
							</tr>
							<tr>
								<th>案件编号</th>
								<th>我方车主</th>
								<th>我方损失</th>
								<th>对方车主 </th>
								<th>对方损失</th>
								<th>定损地点</th>
								<th>定损时间</th>
								<th>定损小计</th>
								<th>核损状态</th>
								<th>操作</th>
							</tr>
							<tbody id="assessment">
							<tr>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td>
									<button type="button" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#upd-UserInfo" onclick="tobeginlosspage();">
									 修改
									</button>
									<button type="button" onclick="del()" class="btn btn-danger btn-xs">
									删除
									</button>
								</td>
							</tr>
							</tbody>
						</table>
					</div>
		<div id="page">
			<button class="btn btn-sm btn-primary" style="margin-right:20px">首页</button>
			<button class="btn btn-sm btn-primary" style="margin-right:20px">上一页</button>
			1/1
			<button class="btn btn-sm btn-primary" style="margin-right:20px;margin-left:20px">下一页</button>
			<button class="btn btn-sm btn-primary" style="margin-right:20px">尾页</button>
		</div>
       
	<script type="text/javascript">
	
	function del(){
		if(window.confirm("你确定要删除吗？")){
			
		}
	}
	</script>
    <!-- jQuery -->
    
  </body>
</html>