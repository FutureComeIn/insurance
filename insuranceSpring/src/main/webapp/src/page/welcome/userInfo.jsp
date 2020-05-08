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
	<style type="text/css">
	    #form-user{
	    	margin:0px auto;
	    }
    </style>
    <!-- jQuery -->
    <script src="../../../vendors/jquery/dist/jquery.min.js"></script>
    <script src="../../js/yxwjs/address.js"></script>
    <script type="text/javascript">
    	$(function(){
    		var sex=$("#sexHidden").val();
    		$("#sex").val(sex);
    	})
    	//在address.js里面的allCity()后面执行
    	function showAddress(){
    		var hprovince=$("#hprovince").val();
	    	var hcity=$("#hcity").val();
	    	$("#province").val(hprovince); 
	    	//重新加载出赋了省份后的城市
	    	changeCity();
	    	$("#city").val(hcity);
    	}
    	
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
            //只要图片不为空，即是修改了图片
            if($("#img").val()!=""&&$("#img").val()!=null){
            	$("#flag").val("0");
            }
        }
        //------------------------------------------
        $(function(){
			$("#userOperationButton").click(function(){
				var $input=$("input");
				for(var i=0;i<$input.length;i++){
					if($input.eq(i).val()==null||$input.eq(i).val()==""){
						if(i!=8){  //图片换不换无所谓
							if(i==2){
								alert("请填写原密码");
							}else{
								alert("请补充基础信息");
							}
							return;
						}
					}
				}
				if($("#roleName option:selected").text()=="请选择职位"){
					alert("请补充职位");
					return;
				}
				if($("#province").find("option:selected").text()=="请选择省/城市"){
					alert("请补充地址");
					return;
				}
				var pwd=$("#logiPwd").val();
				var oldPwd=$("#password").val();
				if(pwd!=oldPwd){
					alert("密码填写错误,请重试");
					return;
				}
				document.uform.submit();
			})
		})
    </script>
    
  </head>

  <body style="background: #F7F7F7;" onload="showAddress()">
    
	 <div id="form-user" class="add_info" style="border:1px solid black;height:700px;width:900px;">

		<div class="form-group col-md-12" style="font:微软雅黑;">
	 	 	<h3>个人信息【编号--<label>${loginUser.userId }</label>】</h3>	
	 	 </div>
	 	 <form method="post" action="updateUser.do" enctype="multipart/form-data" name="uform">
		 	 <table cellpadding="20" width="98%" align="center">
			 	<tr>
			 		<td>
			 			<label>姓名</label><br/>
			  			<input type="text" disabled value="${loginUser.userName }" name="userName" id="userName" class="form-control employeesName"  placeholder="请输入姓名">
			 		</td>
			 		<td width="40">&nbsp;</td>
			 		<td>
			 			<label>昵称</label><br/>
		  				<input type="text" value="${loginUser.account }" name="account" id="account" class="form-control employeesName"  placeholder="请输入昵称">
			 		</td>
			 		<td width="40">&nbsp;</td>
			 		<td>
			 			<label>密码</label><br/>
		  				<input type="password" name="password" id="password" class="form-control employeesName">
			 		</td>
			 	</tr>
			 	<tr height="20"><td colspan="5"></td></tr>
			 	<tr>
			 		<td>
			 			<label>身份证</label><br/>
		  				<input type="text" disabled value="${loginUser.cardId }" name="cardId" id="cardId" class="form-control employeesName" placeholder="请输入身份证号">
			 		<td width="40">&nbsp;</td>
			 		<td>
			 			<label>性别</label><br/>
						<select name="sex" id="sex" class="form-control">
							  <option>女</option>
							  <option>男</option>
							  
						</select>
			 		</td>
			 		<td width="40">&nbsp;</td>
			 		<td>
			 			<label>年龄</label><br/>
		  				<input type="text" value="${loginUser.age }" name="age" id="age" class="form-control employeesName" placeholder="请输入年龄">
			 		</td>
			 	</tr>
			 	<tr height="20"><td colspan="5"></td></tr>
			 	<tr>
			 		<td>
			 			<label>入职时间</label><br/>
			 			<input type="text" disabled value="${loginUser.workTime }" name="workTime" id="workTime" class="form-control employeesName" placeholder="请输入入职时间">
			 		</td>
			 		<td width="40">&nbsp;</td>
			 		<td>
			 			<label>email</label><br/>
			 			<input type="text" value="${loginUser.email}" name="email" id="email" class="form-control employeesName" placeholder="请输入邮箱">
			 		</td>
			 		<td width="40">&nbsp;</td>
			 		<td>
			 			 <label>联系方式</label><br/>
			 			 <input type="text" value="${loginUser.tel }" name="tel" id="tel" class="form-control employeesName" placeholder="请输入联系方式">
			 		</td>
			 	</tr>
			 	<tr height="20"><td colspan="5"></td></tr>
			 	<tr>
			 		<td>
			 			 <label>联系地址</label><br/>
						  <select class="form-control" name="province" id="province" onchange="changeCity();">
						  </select>
					</td>
			 		<td width="40">&nbsp;</td>
			 		<td>
			 			<label>地区</label><br/>
						  <select class="form-control" name="city" id="city" >
						  </select>
			 		</td>
			 		<td width="40">&nbsp;</td>
			 		<td>
			 			<label>头像</label>
			  			<input accept=".jpg,.png" onchange="chooseImg(this)" type="file" name="upload" id="img">
			  			<img id="image" alt="图片" src="../../../${loginUser.img}" width="120" height="150"/>
			 		</td>
			 		
			 	</tr>
			 	<tr height="20"><td colspan="5"></td></tr>
			 	<tr>
			 		<td colspan="5" align="center">
			 			<button type="button" id="userOperationButton" class="btn btn-primary">修改</button>
			 		</td>
			 	</tr>
			 </table>
			<input type="hidden" value="1" name="flag" id="flag"/><!--是否修改了图片的标志-->
			 <input type="hidden" value="${loginUser.password }" id="logiPwd"/>
			 <input type="hidden" value="${loginUser.userId }" name="userId"/>
			 <input type="hidden" value="${loginUser.sex }" id="sexHidden" />
		 	<input type="hidden" value="${loginUser.province }" id="hprovince" />
		 	<input type="hidden" value="${loginUser.city }" id="hcity" />	
		</form>			
	</div>
  </body>
</html>