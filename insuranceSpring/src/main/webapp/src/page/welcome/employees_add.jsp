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
    <link href="../../../vendors/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet">
    <link href="../../../vendors/jqvmap/dist/jqvmap.min.css" rel="stylesheet"/>
    <link href="../../../vendors/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">
    
     <!-- jQuery -->
    <script src="../../../vendors/jquery/dist/jquery.min.js"></script>
    <script src="../../js/yxwjs/address.js"></script>
    <script src="../../js/yxwjs/role.js"></script>
    <script src="../../js/yxwjs/user.js"></script>
    <script type="text/javascript">
	    //--------------------------------------------------立即显示图片
	    //判断浏览器是否支持FileReader接口
	    if (typeof FileReader == 'undefined') {
	        alert("<h1>当前浏览器不支持FileReader接口</h1>");
	    } 
	    //选择图片，马上预览
	    function chooseImg(obj) {
	        var file = obj.files[0];
	        var reader = new FileReader();
	        reader.onload = function(e) {
	            var img = document.getElementById("image");
	            img.src = e.target.result;
	        }
	        reader.readAsDataURL(file);
	    }
    </script>
    
  </head>

  <body style="background: #F7F7F7;" onload="showRoles()">
	 <div id="form-user" class="add_info" style="margin:0 auto;border:1px solid #2C4257;height:650px;">
		<div class="form-group col-md-12" style="font: '微软雅黑;">
	 	 	<h4>请填写员工信息：</h4>	
	 	</div>
	 	
		<form method="post" action="addUser.do" name="uform" enctype="multipart/form-data">
			<div class="form-group col-md-4">
			 	<label>姓名</label>
			  	<input type="text" name="userName" id="userName" class="form-control employeesName"  placeholder="请输入姓名">
			 </div>
			 <div class="form-group col-md-4">
			   	<label>昵称</label>
			  	<input type="text" name="account" id="account" class="form-control employeesName"  placeholder="请输入昵称">
			 </div>
			 <div class="form-group col-md-4">
			  	<label>身份证</label>
			  	<input type="text" name="cardId" id="cardId" class="form-control employeesName" placeholder="请输入身份证号">
			  </div>
			  <div class="col-md-4">
				<label>性别</label>
				<select name="sex" id="sex" class="form-control">
					  <option>男</option>
					  <option>女</option>
				</select>
			  </div>
			  <div class="form-group col-md-4">
			  	<label>年龄</label>
			  	<input type="text" name="age" id="age" class="form-control employeesName" placeholder="请输入年龄">
			  </div>
			  <div class="form-group col-md-4">
				 <label>联系方式</label>
				 <input type="text" name="tel" id="tel" class="form-control employeesName" placeholder="请输入联系方式">
			  </div>
			  <div class="form-group col-md-4">
				 <label>email</label>
				 <input type="text" name="email" id="email" class="form-control employeesName" placeholder="请输入邮箱">
			  </div>
			 <div class="col-md-4">
				  <label>联系地址</label>
				  <select class="form-control" name="province" id="province" onchange="changeCity();">
				  </select>
			 </div>
			  <div class="col-md-4">
				  <label>地区</label>
				  <select class="form-control" name="city" id="city" >
				  </select>
			 </div>
			 <div style="width:520px;">
					<label>职位</label>
				  	<select name="roleid" id="roleName" class="form-control">
					  <option value="0">请选择职位</option>
					</select>
			  </div>
			 <div style="width:520px;">
				 	<label>头像</label>
				  	<input accept=".jpg,.png" onchange="chooseImg(this)" type="file" name="upload" id="img">
				  	<img id="image" alt="" src="../../img/bg.jpg" width="120" height="150"/>
			 </div>
			<div class="col-md-12" style="text-align: center;">
				<button type="button" id="userOperationButton" class="btn btn-primary">提交</button>
			</div>
		</form>
		
	 </div>     
  </body>
</html>