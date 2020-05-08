<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib  uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%
String path = request.getContextPath();
%>
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
	    	
	    	span{
	    		width: 100px;
	    		
	    	}
	
		#but1{	
			margin-top:2% ;
			margin-left:10% ;
		}
		#but2{
			margin-top:2% ;
			margin-left:10% ;
		}

  </style>
  
   <script src="../../js/jquery-1.8.3.js"></script>
   <script src="../../js/address.js"></script>
   
   <script type="text/javascript">
  //添加按钮check
  function addReport(){
			var informants=document.getElementById("informants").value;
			if(informants==""){
				alert("请填写报案人姓名");
				return false;
			}
			var informants_tel=document.getElementById("informants_tel").value;
			if(!(/^1[34578]\d{9}$/.test(informants_tel))){ 
		        alert("手机号码有误，请重填");  
		        return false; 
		    } 
			var danger_cause=document.getElementById("danger_cause").value;
			if(danger_cause==""){
				alert("请填写报案原因");
				return false;
			}
			var reported_time=document.getElementById("reported_time").value;
			if(reported_time==""){
				alert("请选择日期");
				return false;
			}
			//var province =document.getElementById("prov").value;
			//var city =document.getElementById("city").value;
			//var country=document.getElementById("country").value;
			//var warranty_number=document.getElementById("warranty_number").value;			
			document.uform.submit();
   }
  //取消按钮
  function quxiao(){
	  //alert(1);
	  this.location.href="/src/page/report_wb/report_query.jsp";
  }
  </script>
  </head>

  <body style="background: #F7F7F7;">
			<table class="table table-striped" id="table">
        <tr>
        	<th>保单号</th>
        	<th>投保人</th>
        	<th>身份证号</th>
        	<th>被保人</th>
        	<th>被保人电话</th>
        	<th>投保日期</th>
        	<th>到期日期</th>
        	<th>驾驶证号</th>
        	<th>发动机号</th>
        	<th>车牌号</th>       	
        </tr>
        <tr>
        	<td>${api.singerData.warrantyId }</td>
        	<td>${api.singerData.policyholdersName }</td>
        	<td>${api.singerData.recognizeeIdCard }</td>
        	<td>${api.singerData.recognizeeName }</td>
        	<td>${api.singerData.policyholderPhone }</td>
        	<td>${api.singerData.insuranceBeginTime }</td>
        	<td>${api.singerData.insuranceEndTime }</td>
        	<td>${api.singerData.driverId }</td>
        	<td>${api.singerData.engineId }</td>
        	<td>${api.singerData.sailId }</td>       	
        </tr>
        
</table>
		<br>	
<div id="" class="add_info">
	<form action="http://localhost:8080/src/page/report_wb/addReport.do?warrantyId=${api.singerData.warrantyId}" id="addform1"  name="uform" method="post" >
		               <input type="hidden" id="warranty_number" value="${api.singerData.warrantyId }" name="warrantyId">
			<div class="form-group col-md-12" style="font: '微软雅黑;">
		 	 	<h4>添加报案信息：</h4>	
		 	 </div>
			<div class="form-group col-md-4">
                        <label for="exampleInputEmail2">报案人</label>
                        <input type="text" class="form-control" id="informants" name="reportPersonName" >
             </div>
			<div class="form-group col-md-4">
                           <label for="exampleInputEmail2">报案人电话</label>
                           <input type="text" class="form-control" id="informants_tel" name="reporPersontPhone">
            </div>
			 <div class="form-group col-md-4">
                              <label for="exampleInputEmail2">出险原因</label>
                              <input type="text" class="form-control" id="danger_cause" name="reportReason">
            </div>
						 	 
			<div class="form-group col-md-4">
			            <label for="addr-show">请选择省份：</label>
			            <!--省份选择-->
			            <select id="cmbProvince" name="province" class="form-control">
			                <option>=请选择省份=</option>
			            </select>
			</div>
			<div class="form-group col-md-4">
			            <label for="addr-show">请选择城市：</label>
			            <!--城市选择-->
			            <select id="cmbCity" name="city" class="form-control">
			                <option>=请选择城市=</option>
			            </select>
			</div>
			<div class="form-group col-md-4">
			            <label for="addr-show">请选择县区：</label>
			            <!--县区选择-->
			            <select id="cmbArea" name="area" class="form-control">
			                <option>=请选择县区=</option>
			            </select>
			</div>            
       
            <div class="form-group col-md-4">
		    <label for="exampleInputEmail2">路段</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		    <input type="text" class="form-control" id="road" name="road">
		    </div>	
       
            <div class="form-group col-md-4">
	   		<label for="exampleInputEmail2">路段方向</label>
	   							<select class="form-control" id="road_direction" name="road_direction">
	                                 <option value="由南到北">由南到北</option>
	                                 <option value="由北到南">由北到南</option>
	                                 <option value="由东到西">由东到西</option>
	                                 <option value="由西到东">由西到东</option>
	       						</select>
	       	</div>
		    
		    <div class="form-group col-md-4">
			    <label>出险日期</label>
			    <input type="date" class="form-control employeesName" id="reported_time" name="reportTime">
			</div>    
			  	
			<div class="form-group col-md-12" style="text-align: center;">
				<button type="button" class="btn btn-sm btn-primary" id="but1" onclick="addReport()" >确定</button>
			    <button type="button" class="btn btn-sm btn-primary" id="but2" onclick="quxiao()">取消</button>
			</div>			
		</form>
	 </div>
	 <script type="text/javascript">
	       addressInit('cmbProvince', 'cmbCity', 'cmbArea', '陕西', '宝鸡市', '金台区');
	 </script>	
  </body>
</html>