<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib  uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
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
	<script src="../../js/report/UpdateReport.js"></script>
	<script src="../../js/report/AllReportQuery.js"></script>
<script type="text/javascript">
 
</script>  	
  </head>
  <body style="background: #F7F7F7;">
  	<input type="hidden" id="reported_number" value="${api.singerData.reportId}">
  	<input type="hidden" id="warrantyId" value="${api.singerData.warrantyId}">
					 <div class="add_info">
						<form>
							<div class="form-group col-md-12" style="font: '微软雅黑;">
						 	 	<h4>修改报案信息：</h4>	
						 	 </div>
						
							<div class="form-group col-md-4">
                             <label for="exampleInputEmail2">报案人</label>
                             <input type="text" class="form-control" id="reportPersonName"  value="${api.singerData.reportPersonName}">
                           </div>
								
							<div class="form-group col-md-4">
                               <label for="exampleInputEmail2">报案人电话</label>
                               <input type="text" class="form-control" id="informants_tel" value="${api.singerData.reporPersontPhone }">
                               </div>
								
						 <div class="form-group col-md-4">
                                 <label for="exampleInputEmail2">出险原因</label>
                                 <input type="text" class="form-control" id="danger_cause"  value="${api.singerData.reportReason }">
                                 
                               </div>
								 
											 	 
			            <div class="form-group col-md-4">
						            <label for="exampleInputEmail2">请选择省份：</label>
						            <select id="cmbProvince" name="province" class="form-control">
						                <option>--请选择省份--</option>
						            </select>
						</div>
						<div class="form-group col-md-4">
						            <label for="exampleInputEmail2">请选择市区：</label>
						            <select id="cmbCity" name="city" class="form-control">
						                <option>--请选择市区--</option>
						            </select>
						</div>
						<div class="form-group col-md-4">
						            <label for="exampleInputEmail2">请选择县区：</label>
						            <select id="cmbArea" name="area" class="form-control">
						                <option>--请选择县区--</option>
						            </select>
						</div>   
			
						<div class="form-group col-md-4">
								    <label for="exampleInputEmail2">具体路段</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								    <input type="text" class="form-control" id="road" value="${api.singerData.road}">
						</div>  
			       									 	
			            <div class="form-group col-md-4">
								    <label>出险日期</label>
								    <input type="date" name="reportTime" class="form-control employeesName" id="reported_time" value="${api.singerData.reportTime}">
						</div>
						
						<div class="form-group col-md-4">
							        <label for="exampleInputEmail2">方向</label>
							    	<select class="form-control" id="road_direction">
			                                      <option >${api.singerData.road_direction }</option>
			                                      <option>由南到北</option>
			                                      <option>由北到南</option>
			                                      <option>由东到西</option>
			                                      <option>由西到东</option>
			                        </select>
                        </div>
						
						<div class="form-group col-md-12" style="text-align: center;">
						    <button type="button" class="btn btn-sm btn-primary" id="but1" >确定</button>
						    <button type="button" class="btn btn-sm btn-primary" id="but2">取消</button>
						</div>
									
				</form>
		</div>
		
	 <script type="text/javascript">
	      // addressInit('cmbProvince', 'cmbCity', 'cmbArea', '陕西', '宝鸡市', '金台区');
	       addressInit('cmbProvince', 'cmbCity', 'cmbArea','${api.singerData.province}', '${api.singerData.city}', '${api.singerData.area}');
	 </script>	
	 			 
  </body>
</html>