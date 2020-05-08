<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<!-- Bootstrap -->
	<!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
	<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />

	<!-- 可选的 Bootstrap 主题文件（一般不用引入） -->
	<link href="css/bootstrap-theme.min.css" rel="stylesheet" type="text/css" />

	<script type="text/javascript" src="js/jquery-1.11.1.js"></script>

	<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<style>
		#height {
			height: 30px;
		}
		
		#biaoti{
			 font-size:17px;
		}
		#buuttonwh{
		
			font-size:10px;
		}
	</style>
	<script type="text/javascript">
		$(function() {

		});
	</script>

	<body>
		<div style="width: 100%;">
			
			<div>
				<ul class="nav nav-tabs" style="width: 100%">
					<li role="presentation" class="active">
						<a href="#">保单 查询</a>
					</li>
					<li>
						<form class="navbar-form navbar-left" role="search">
							<div class="form-group">
								<input id="height" type="text" class="form-control" placeholder="保单号">
							</div>
							<div class="form-group">
								<input id="height" type="text" class="form-control" placeholder="投保人">
							</div>
							<div class="form-group">
								<input id="height" type="text" class="form-control" placeholder="被保人">
							</div>
							<button id="height" type="submit" class="btn btn-default">查询</button>
						</form>
					</li>
				</ul>
			</div>
			
			<div style="height: 450px;">
				<table class="table table-hover" id="table1" style="width: 100%;text-align: center;" height="50px">
						<tr id="biaoti" style="background-color:#F2F2F2;font-family: '黑体'">
							<td><h5>保单编号</h5></td>
							<td><h5>投保人姓名</h5></td>
							<td><h5>被保人姓名</h5></td>
							<td><h5>被保人身份证</h5></td>
							<td><h5>车牌号</h5></td>
							<td><h5>保险起期</h5></td>
							<td><h5>保险止期</h5></td>

							<td><span class="label label-default">操作</span></td>
						</tr>
						<tr style="height: 40px;">
							<td>1</td>
							<td>张三</td>
							<td>张三</td>
							<td>430424156989652635</td>
							<td>湘D:S4F78</td>
							<td>2017-4-5</td>
							<td>2018-4-5</td>
							<td>
								<a href="User_insure.jsp">
								<button type="button" class="btn btn-primary" style="height: 35px;">修改&nbsp;</button></a>
								
 								<a href="Case_message.jsp">	
								<button type="button" class="btn btn-primary" style="height: 35px;">案件&nbsp;</button></a>
								
  								<button type="button" class="btn btn-primary" data-toggle="modal" data-target=".myModal" style="height: 35px;">续保&nbsp;</button>
  								
								<a href="User_insure.jsp">
								<button type="button" class="btn btn-primary" style="height: 35px;">继续续保&nbsp;</button></a>
							</td>
						</tr>
				</table>
			</div>
			
			<div style="margin-left: 500px;">
				<nav aria-label="Page navigation">
		  			<ul class="pagination">
		    			<li>
			      			<a href="#" aria-label="Previous">
			        			<span aria-hidden="true">上一页</span>
			     			</a>
		    			</li>
					    <li><a href="#">1</a></li>
					    <li><a href="#">2</a></li>
					    <li><a href="#">3</a></li>
					    <li><a href="#">4</a></li>
					    <li><a href="#">5</a></li>
					    <li>
					      	<a href="#" aria-label="Next">
					     	   <span aria-hidden="true">下一页</span>
					      	</a>
				   		</li>
				  </ul>
				</nav>
			</div>
			

			<!-- Modal -->
			<div class="modal fade myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
			  <div class="modal-dialog" role="document">
			    <div class="modal-content">
			      <div class="modal-header">
			        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
			        <h4 class="modal-title" id="myModalLabel" style="font-family: '黑体';">续保</h4>
			      </div>
			      <form action="" method="post">
				      <div class="modal-body">
				       	<div class="input-group">
				  			<input type="text" class="form-control" name=""  aria-describedby="basic-addon2" style="width: 100px;height: 20px;">:年
						</div>
				      </div>
				      <div class="modal-footer">
				        <button type="button" class="btn btn-default" data-dismiss="modal">确定</button>
				      </div>
			    </form>
			    </div>
			  </div>
			</div>
			
		</div>
	</body>
</html>