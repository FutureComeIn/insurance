<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加勘察信息</title>
	<!-- Bootstrap -->
		<link href="../../../vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
		<!-- Font Awesome -->
		<link href="../../../vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <style type="text/css">
    		#matter input{width:140px; margin: 10px 50px 0px 0px;}	
    		select{width: 174px;height: 25px;}
    		.right_col table{width: 100%;}
    		.right_col #pro_bg tr td{padding:3px 0px 3px 6px;}
    		#table td,
			th {
				vertical-align: middle;
				text-align: center;
			}
			#uploadForm label.error{ 
				color:red; 
				font-size:13px; 
			}
    </style>
    <link href="../../../build/css/custom.min.css" rel="stylesheet">
	<script src="../../../../vendors/jquery/dist/jquery.min.js"></script>
	<script src="../../../vendors/bootstrap/dist/js/bootstrap.min.js"></script>
    <script src="../../../src/js/jquery-1.8.3.js"></script>
    <!-- 表单验证插件 -->
    <script type="text/javascript" src="../../../src/js/form/jquery.validate.js"></script>
    <script type="text/javascript" src="../../../src/js/form/messages_cn.js"></script>
    <script src="http://cdn.bootcss.com/bootstrap/2.3.1/js/bootstrap-modal.js"></script>
    <script src="../../../src/js/form/jquery-form.js"></script>
    <script type="text/javascript" src="../../js/check/add_check.js"></script>
    <script type="text/javascript">
    	var rowCount=1;  //行数默认1行
		//添加行
		function addRow(){
			if(rowCount<3){
				rowCount++;
				var newRow="<tr><td colspan='3' ><div class='col-md-4'>";
				newRow += "<div class='col-md-4'>事故照片：<span class='glyphicon glyphicon-remove' onclick='emptyCheckImg(this)'>";
				newRow += "</span><input type='file' class='required' name='upload'/></div>";
				newRow += "<div class='col-md-4' style='margin-left:120px;'>勘察备注：<input type='text' class='required' name='checkRemark'/></div></div>";
				newRow += "<div class='col-md-4'><div class='col-md-4'>事故照片：<span class='glyphicon glyphicon-remove' onclick='emptyCheckImg(this)'>";
				newRow += "</span><input type='file' class='required' name='upload'/></div>";
				newRow += "<div class='col-md-4' style='margin-left:120px;'>勘察备注：<input type='text' class='required' name='checkRemark'/></div></div>";
				newRow += "<div class='col-md-4'><div class='col-md-4'>事故照片：<span class='glyphicon glyphicon-remove' onclick='emptyCheckImg(this)'>";
				newRow += "</span><input type='file' class='required' name='upload'/></div>";
				newRow += "<div class='col-md-4' style='margin-left:120px;'>勘察备注：<input type='text' class='required' name='checkRemark'/></div></div></td></tr>";
				//var newRow = $("#tmf").html();
				$('#tmf').after(newRow);
			}else{
				alert("最多插入9张图片");
			}
		}		 
		//删除行
		function delRow(){
//			$("#bottomRow"+rowIndex).remove();
//			rowCount--;
			//alert($("#bottomRow").prev().html());
			//alert(rowCount);
			if(rowCount>1){
				rowCount--;
				$("#bottomRow").prev().remove();
			}
			else{
				alert("最少添加1张图片");
			}
		}
		function emptyCheck(){
			$("#checkMessage input").val('');
		}
		function emptyCheckImg(obj){
		    var $div = $(obj).parent().parent();
		    var inputSize = $div.children("div").children("input").size();
		    var divSize = $div.parent().parent().parent().children("tr").children("td").children("div").size();
		    if(divSize>1){
		    	$(obj).parent().parent().remove();
		    }else{
		    	alert("最少插入一张图片");
		    }
		}
		//function hh(){
		//	var $tbody = $("#content");
		//	alert($("#reportReason").text()); 
		//}
		function loadUser(){
			$("#usertable").empty();
			var roleName = "定损员";
			$.ajax({
				url:'http://localhost:8080/src/page/check/queryUserByRoleName.do',
				type:'post',
				data:{
					'roleName':roleName
				},
				dataType:'json',
				success:function(data){
					//控制输出
					console.log(data);
					var contentHtml = "";
					for(var i=0; i < data.datas.length;i++){
						var rowHtml = "<tr><td><input type='radio' name='options' id='"+data.datas[i].userName+"' class='options' checked='checked' value='"+data.datas[i].userId+"'>"+data.datas[i].userName+"</td></tr>";
						//追加数据
						contentHtml += rowHtml;
					}
					$("#usertable").append(contentHtml);
				},
				error:function(){
					alert("查询失败");
				}
			})
		}
		$(function(){
			//自定义电话号码验证
			jQuery.validator.addMethod("isPhone", function(value, element) {
			    var length = value.length;
			    var mobile = /^(((13[0-9]{1})|(15[0-9]{1})|(18[0-9]{1})|(17[0-9]{1}))+\d{8})$/;
			    return this.optional(element) || (length == 11 && mobile.test(value));
			},"请填写正确的手机号码");//可以自定义默认提示信息
			
			$("#uploadForm").validate({
				rules:{
						mydriverTel : {
							 required : true,
					         minlength : 11,
					         // 自定义方法：校验手机号在数据库中是否存在
					         // checkPhoneExist : true,
					         isPhone:true
				            },
						oppositeDriverTel : {
							required : true,
					         minlength : 11,
					         // 自定义方法：校验手机号在数据库中是否存在
					         // checkPhoneExist : true,
					         isPhone:true
			            }
			    	},
				messages : {
					mydriverTel : {
						required : "请输入手机号",
			            minlength : "确认手机不能小于11个字符",
			            isPhone : "请正确填写您的手机号码"
			            },
			        oppositeDriverTel : {
			        	required : "请输入手机号",
			            minlength : "确认手机不能小于11个字符",
			            isPhone : "请正确填写您的手机号码"
			            }
			        }
				});
		});
		function hh(){
			var flag = $("#uploadForm").valid();
		    if(!flag){
		        return;
		    }
		    $("#myModal").modal("toggle");
		}
    </script>
  </head>
  
  
  <body style="background: #F7F7F7;" onload="loadUser();">
    <!--  <input type="button" onclick="hh()"/>-->
  <input type="hidden" value="<%=request.getParameter("reportId") %>" id="reportId">
  <input type="hidden" value="${loginUser.userId }" id="checkPersonId">
  <input type="hidden" value="${loginUser.userName }" id="checkName">
        	<iframe name="frm" style="display:none"></iframe>
        <!-- /top navigation -->
        <!-- 右边内容 
        			所有东西全写在下边这个div里
        -->
        <!-- page content -->
        	<div id="add_pros">
        		<h4>
        			报案信息
        		</h4>
        	</div>
        	<!--<input type="hidden" value="<%=request.getParameter("id") %>" id="parmeId">-->
        	<table class="table table-bordered " id="table">
	        	<thead>
		        	<tr>
						<th>报案编号</th>
						<th>报案人姓名</th>
						<th>报案人电话</th>
						<th>报案时间</th>
						<th>出险原因</th>
						<th>出险地点所在省</th>
						<th>出险地点所在市</th>
						<th>出险地点所在区县</th>
						<th>出险地点所在路段</th>
						<th>路段方向</th>
						<th>操作用户</th>
						<th>案件状态</th>
						<th>操作</th>
					</tr>
				</thead>
				<tbody id="content">
				</tbody>
        	</table>
        			
		        	<div class="pand">
		        		<h4>
		        			勘察报告
		        			<button style="margin-left: 20px;background-color:darkgray ;" class="btn btn-default btn-sm" onclick="emptyCheck()">
        							<span class="glyphicon glyphicon-remove" ></span>
        					</button>
		        		</h4>
		        	</div>
	        		<!--  <input type="hidden" value="1" name="checkId" >-->
	        		<form  id="uploadForm"  method="post" enctype="multipart/form-data">
		        	<table id="checkMessage" class="table table-bordered">
		        		<tr class="count">
		        			<td>勘察地点：<input type="text" id="checkAddress" class="required" name="checkAddress"/></td>
		        			<td>勘察时间：<input type="date" id="checkTime" class="required" name="checkTime"/></td>
		        		</tr>
		        		<tr> 
		        			<td colspan="3" >我方司机信息
		        		</tr>
		        		<tr>
		        			<td colspan="3">
		        				<div class="col-md-3">司机姓名<input type="text" class="required" id="mydriverName" name="mydriverName"/></div>
		        				<div class="col-md-3">驾驶证<input type="text" class="required number" id="myLicense" name="myLicense"/></div>
		        				<div class="col-md-3">行驶证<input type="text" class="required number" id="myVehicleLicense" name="myVehicleLicense"/></div>
		        				<div class="col-md-3">联系电话<input type="text" class="required number" id="mydriverTel" name="mydriverTel"/></div>
		        			</td>
		        		</tr>
		        		<tr> 
		        			<td colspan="3" >对方司机信息
		        		</tr>
		        		<tr>
		        			<td colspan="3">
		        				<div class="col-md-3">司机姓名<input type="text" class="required " id="oppositeDriverName" name="oppositeDriverName"/></div>
		        				<div class="col-md-3">驾驶证<input type="text" class="required number" id="oppositeLicense" name="oppositeLicense"/></div>
		        				<div class="col-md-3">行驶证<input type="text" class="required number" id="oppositeVehicleLicense" name="oppositeVehicleLicense"/></div>
		        				<div class="col-md-3">联系电话<input type="text" class="required number" id="oppositeDriverTel" name="oppositeDriverTel"/></div>
		        			</td>
		        		</tr>
		        		<!--  
			        		<tr style="text-align: center;">  
			        			<td colspan="3">
			        				<input type="button" onclick="addCheck();" class="btn btn-primary btn-sm" value="保存" />
			        			</td>
			        		</tr>
		        		-->
		        		</table>
		        		  
        				<div class="pand">
        					<div >
        						<h4>
        							勘察图片
        							<button style="margin-left: 20px;background-color:darkgray ;" class="btn btn-default btn-sm" onclick="addRow()">
        								<span class="glyphicon glyphicon-plus"></span>
        							</button>
        							<button style="margin-left: 20px;background-color:darkgray ;" class="btn btn-default btn-sm" onclick="delRow()">
        								<span class="glyphicon glyphicon-minus"></span>
        							</button>
        						</h4>
        					</div>
        					
        				</div>
        				
		        		
				        <table id="checkImgTable" class="table table-bordered">
				        <!--  
				        <tr>
				       		<td colspan="3" >
				       			<div class="col-md-4">
						        	<div class="col-md-4">事故照片1：<input type="file" name="upload"/></div>
						        	<div class="col-md-4" style="margin-left:120px;">勘察备注1：<input type="text" name="checkRemark"/></div>
					        	</div>
					        	<div class="col-md-4">
					        		<div class="col-md-4">事故照片2：<input type="file" name="upload"/></div>
					        		<div class="col-md-4" style="margin-left:120px;">勘察备注2：<input type="text" name="checkRemark"/></div>
					        	</div>
					        	<div class="col-md-4">
					        		<div class="col-md-4">事故照片3：<input type="file" name="upload"/></div>
					        		<div class="col-md-4" style="margin-left:120px;">勘察备注3：<input type="text" name="checkRemark"/></div>
					        	</div>
				        	</td>
				        </tr>
				        <tr>
				        	<td colspan="3" >
				        		<div class="col-md-4">
					        		<div class="col-md-4">事故照片4：<input type="file" name="upload"/></div>
					        		<div class="col-md-4" style="margin-left:120px;">勘察备注4：<input type="text" name="checkRemark"/></div>
					        	</div>
					        	<div class="col-md-4">
					        		<div class="col-md-4">事故照片5：<input type="file" name="upload"/></div>
					        		<div class="col-md-4" style="margin-left:120px;">勘察备注5：<input type="text" name="checkRemark"/></div>
					        	</div>
					        	<div class="col-md-4">
					        		<div class="col-md-4">事故照片6：<input type="file" name="upload"/></div>
					        		<div class="col-md-4" style="margin-left:120px;">勘察备注6：<input type="text" name="checkRemark"/></div>
				        		</div>
				        	</td>
				        </tr>
				        -->
				        <tr id="tmf">
				        	<td colspan="3" >
				        	    <div class="col-md-4">
					        		<div class="col-md-4">事故照片：<span class="glyphicon glyphicon-remove" onclick="emptyCheckImg(this)"></span><input type="file" class="required" name="upload"/></div>
					        		<div class="col-md-4" style="margin-left:120px;">勘察备注：<input type="text" class="required" name="checkRemark"/></div>
					        	</div>
					        	<div class="col-md-4">
					        		<div class="col-md-4">事故照片：<span class="glyphicon glyphicon-remove" onclick="emptyCheckImg(this)"></span><input type="file" class="required" name="upload"/></div>
					        		<div class="col-md-4" style="margin-left:120px;">勘察备注：<input type="text" class="required" name="checkRemark"/></div>
					        	</div>
					        	<div class="col-md-4">
					        		<div class="col-md-4">事故照片：<span class="glyphicon glyphicon-remove" onclick="emptyCheckImg(this)"></span><input type="file" class="required" name="upload"/></div>
					        		<div class="col-md-4" style="margin-left:120px;">勘察备注：<input type="text" class="required" name="checkRemark"/></div>
				        		</div>
				        	</td>
				        </tr>
				        <tr id="bottomRow">
				        	<td colspan="3" style="text-align: center;">
				        		<input type="button"  class="btn btn-primary btn-sm"  onclick="hh()" value="提交" style="margin-right: 20px;">
				        		<!--  <button type="button" id="mytj" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#myModal" >提交</button>-->
				        		<a href="uncheck_query.jsp"  class="btn btn-primary btn-sm"  >返回</a>
				       		</td>
				        </tr>
		        	</table>
	        	</form>
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">提交至定损员</h4>
            </div>
            <div class="modal-body">
            <table id="usertable" align="center">
            	<tr>
            	<td><input type="radio" name="options" id="option1" class="options">小胖</td>
            	</tr>
            	<tr>
            	<td><input type="radio" name="options" id="option1">小潘</td>
            	</tr>
            	<tr>
            	<td><input type="radio" name="options" id="option1">小旁</td>
            	</tr>
            </table>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal" >关闭</button>
                <button type="button" class="btn btn-primary" onclick="save();">提交</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal --> 
</div>	
  </body>
</html>