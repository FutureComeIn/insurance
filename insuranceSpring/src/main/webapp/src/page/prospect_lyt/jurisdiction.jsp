<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<!-- Bootstrap -->
	<link href="../../../vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
	<!-- Font Awesome -->
	<link href="../../../vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
	
    <link href="../../../vendors/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet">
    
    <link href="../../../vendors/jqvmap/dist/jqvmap.min.css" rel="stylesheet"/>
  
    <link href="../../../vendors/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">


<style type="text/css">
</style>
	<!-- jQuery -->
	<script src="../../../vendors/jquery/dist/jquery.min.js"></script>
	 <script type="text/javascript">
    	function deleteRight(rid){
    		if(confirm("您确定删除吗")){
    			window.location.href="../../../deleteRight.do?rid="+rid;
    		}
    	}
    	function showDetail(rid){
    		$.ajax({
    			url:"http://localhost:8080/queryDetail.do",
    			type:"post",
    			data:{
    				"rightId":rid,
    			},
    			dataType:"json",
    			success:function(data){
    				$("#rightId").val(data.singerData.rightId);
    				$("#rightName").val(data.singerData.rightName);
    				var content="";
    				var $select=$("#parentId2");
    				for(var i=0;i<data.datas.length;i++){
    					content+="<option value='"+data.datas[i].rightId+"'>"+data.datas[i].rightName+"</option>";
    				}
    				$select.append(content);
    				$select.val(data.singerData.parentId);
    			},
    			error:function(){
    				alert("获取详情失败");
    			}
    		})
    		//window.location.href="../../../showRoleDetail.do?rid="+rid;
    	}
    	function skipPage(indexPage){
			window.location.href="../../../queryRight.do?indexPage="+indexPage; 
   		}
    	$(function(){
    		$("#add").click(function(){
    			if($("#add_rightname").val()==null||$("#add_rightname").val()==""){
    				alert("请填写权限名");
    				return;
    			}
    			document.rform.submit();
    		})
    		$("#updateBt").click(function(){
    			if($("#rightName").val()==null||$("#rightName").val()==""){
    				alert("权限名不能为空");
    				return;
    			}
    			document.rform2.submit();
    		})
    	})
    </script>
</head>

<body style="background: #F7F7F7;">


	<div class="right_col" role="main">
		<div id="top" style="margin-bottom: 20px;text-align:center">
            	  <h3>权限管理</h3>
     	</div>
		<div align="center">
			<td>
				<input type="hidden" id="a" /> 
				<button class="btn btn-primary" data-toggle="modal"
					data-target="#myModal" style="margin-left: 20px;">添加权限</button>
			</td>

			<table border="1" id="table" style="border-collapse: collapse; width: 800px;"
				class="table table-bordered" valign="middle">
				<tr>
					<td>权限编号</td>
					<td>权限名</td>
					<td>父级编号</td>
					<td class="col-md-2">操作</td>
				</tr>
				<c:forEach items="${rlist }" var="right">
				<tr>
					<td>${right.rightId }</td>
					<td>${right.rightName }</td>
					<td>${right.parentId }</td>
					<td class="col-md-2">
					<button class="btn btn-primary" data-toggle="modal" data-target="#myModal_upd" onclick="showDetail(${right.rightId})">修改</button>
					<button class="btn btn-primary" onclick="deleteRight(${right.rightId})">删除</button>
					</td>
				</tr>
				</c:forEach>

			</table>
			<div>
			<button onclick="skipPage(1)" class="btn btn-sm btn-primary" style="margin-right:20px">首页</button>
		    <button onclick="skipPage('${page.indexPage>1?page.indexPage-1:1}')" class="btn btn-sm btn-primary" style="margin-right:20px">上一页</button>
		    ${page.indexPage }/${page.pageCount }
			<button onclick="skipPage('${page.indexPage<page.pageCount?page.indexPage+1:page.pageCount}')" class="btn btn-sm btn-primary" style="margin-right:20px;margin-left:20px">下一页</button>
			<button onclick="skipPage('${page.pageCount}')" class="btn btn-sm btn-primary" style="margin-right:20px">尾页</button>
			</div>
		</div>
	</div>



	<!-- Modal -->
	
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">添加权限</h4>
				</div>
				<form name="rform" method="post" action="../../../addRight.do">
				<div class="modal-body">
					权限名：<input type="text" id="add_rightname" name="rightName" />
				</div>
				<div class="modal-body">
					父级权限名:
					<select name="parentId" id="parentId">
						<option value="0">网站管理</option>
						<c:forEach items="${rlist }" var="right">
							<option value="${right.rightId }">${right.rightName }</option>
						</c:forEach>
					</select>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" id="add_close"
						data-dismiss="modal">取消</button>
					<button type="button" class="btn btn-primary" id="add">保存</button>
				</div>
				</form>
			</div>
		</div>
	</div>
	
	<div class="modal fade myModal_upd" id="myModal_upd" tabindex="-1"
		role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">修改权限</h4>
				</div>
				
				<form method="post" action="../../../updateRight.do" name="rform2">
				<div class="modal-body">
					权限编号：<input type="text" readonly="readonly" id="rightId" name="rightId"/>
				</div>
				<div class="modal-body">
					权限名：<input type="text" id="rightName" name="rightName" />
				</div>
				<div class="modal-body">
					父级权限名:<select name="parentId" id="parentId2">  
									<option value="0">网站管理</option>
							  </select>
				</div>
				<div class="modal-footer">
					<button type="button" id="modal_close" class="btn btn-default"
						data-dismiss="modal">取消</button>
					<button type="button" id="updateBt" class="btn btn-primary">保存</button>
				</div>
				</form>
				
			</div>
		</div>
	</div>
	
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
	<script
		src="../../../vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
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
	<script
		src="../../../vendors/flot.orderbars/js/jquery.flot.orderBars.js"></script>
	<script src="../../../vendors/flot-spline/js/jquery.flot.spline.min.js"></script>
	<script src="../../../vendors/flot.curvedlines/curvedLines.js"></script>
	<!-- DateJS -->
	<script src="../../../vendors/DateJS/build/date.js"></script>
	<!-- JQVMap -->
	<script src="../../../vendors/jqvmap/dist/jquery.vmap.js"></script>
	<script src="../../../vendors/jqvmap/dist/maps/jquery.vmap.world.js"></script>
	<script
		src="../../../vendors/jqvmap/examples/js/jquery.vmap.sampledata.js"></script>
	<!-- bootstrap-daterangepicker -->
	<script src="../../../vendors/moment/min/moment.min.js"></script>
	<script
		src="../../../vendors/bootstrap-daterangepicker/daterangepicker.js"></script>

	<!-- Custom Theme Scripts -->
	<script src="../../../build/js/custom.min.js"></script>
	<script src="../../../src/js/jquery-1.8.3.js"></script>
	<script src="../../../src/js/system/jurisdiction.js"></script>

</body>
</html>