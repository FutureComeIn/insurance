<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>被保人信息详情</title>
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
    	<!-- jQuery -->
     <script src="../../../src/js/jquery-1.8.3.js"></script>
  <script type="text/javascript">
//省份城市二级联动
  var cityList = new Array();//创建数组
	  cityList['请选择省/城市']=['请选择城市/地区'];
	  cityList['北京市'] = ['朝阳区','东城区','西城区', '海淀区','宣武区','丰台区','怀柔','延庆','房山'];
	  cityList['上海市'] = ['宝山区','长宁区','丰贤区', '虹口区','黄浦区','青浦区','南汇区','徐汇区','卢湾区'];
	  cityList['广东省'] = ['广州市','惠州市','汕头市','珠海市','佛山市','中山市','东莞市'];
	  cityList['深圳市'] = ['福田区', '罗湖区', '盐田区', '宝安区', '龙岗区', '南山区', '深圳周边'];
	  cityList['重庆市'] = ['俞中区', '南岸区', '江北区', '沙坪坝区', '九龙坡区', '渝北区', '大渡口区', '北碚区'];
	  cityList['天津市'] = ['和平区', '河西区', '南开区', '河北区', '河东区', '红桥区', '塘古区', '开发区'];
	  cityList['江苏省'] = ['南京市','苏州市','无锡市'];
	  cityList['浙江省'] = ['杭州市','宁波市','温州市'];
	  cityList['四川省'] = ['成都市','宜宾'];
	  cityList['海南省'] = ['海口市'];
	  cityList['福建省'] = ['福州市','厦门市','泉州市','漳州市'];
	  cityList['山东省'] = ['济南市','青岛市','烟台市'];
	  cityList['江西省'] = ['南昌市','丰城市','新余'];
	  cityList['广西省'] = ['柳州市','南宁市'];
	  cityList['安徽省'] = ['合肥市'];
	  cityList['河北省'] = ['邯郸市','石家庄市'];
	  cityList['河南省'] = ['郑州市','洛阳市'];
	  cityList['湖北省'] = ['武汉市','宜昌市'];
	  cityList['湖南省'] = ['长沙市','株洲市','湘潭市','衡阳市','怀化'];
	  cityList['陕西省'] = ['西安市'];
	  cityList['山西省'] = ['太原市'];
	  cityList['黑龙江省'] = ['哈尔滨市'];
	  cityList['其他'] = ['其他'];
  //加载城市
  function changeCity(){
  	//获取到province的值
  	var province=document.getElementById("addressShen").value; 
  	//获取到id为city元素
  	var city=document.getElementById("addressShi");
  	city.options.length=0; //清除当前city中的选项
  	//循环数组二维数组
  	for (var i in cityList){
  		//如果数组中的对象与省份相同
  	    if (i == province){
  	    	//则循环数组
  	        for (var j in cityList[i]){
  				city.add(new Option(cityList[i][j]),null);//将城市放入下拉框中
  	        }
  	    }
  	}
  } 
  //加载省份
  function allCity(){
	  var hprovince=$("#shen").val();
	  var hcity=$("#shi").val();
  	  $("#bb").text(hprovince);
      $("#aa").text(hcity); //注意点:select里面有值,赋值才有效
  
  //获取省份元素
	 var province=document.getElementById("addressShen");
	 //循环将数组
	 for (var i in cityList){
		 province.add(new Option(i),null); //将数组里的对象放入下拉框中
	 }	
}
 </script>
    <style type="text/css">
					#add_pros{
						font-size: 25px;
						text-align: center;
					}
					#tab{width: 100%;}
					#pro_bg{width: 80%;}
    </style>
  </head>

  <body style="background: #F7F7F7;" onload="allCity()">

        	<form>
        	<div id="add_pros">
        		被保人详细信息
        	</div>
        	<input type="hidden" id="recognizeeId" value="${rdata.recognizeeId }">
        	<input type="hidden" id="shen"  value="${rdata.addressShen }">
        	<input type="hidden" id="shi"  value="${rdata.addressShi }">
        	<div id="tab">
        	<table id="pro_bg" class="table table-bordered" align="center">
        		<tr>
        			<td colspan="3">基本信息：</td>
        		</tr>
        		<tr>
        			<td>被保人姓名：<br><input type="text" class="form-control" id="recognizeeName" value="${rdata.recognizeeName }"/></td>
        			<td>身份证：<br><input type="text" class="form-control" id="cardId"  value="${rdata.cardId }"/></td>
        			<c:if test="${rdata.sex=='男' }">
        			    <td>性别：<br><label class="radio-inline">
  										<input type="radio" name="inlineRadioOptions" id="sex" value="男" checked="checked"> 男
								</label>
								<label class="radio-inline">
  										<input type="radio" name="inlineRadioOptions" id="sex" value="女"> 女
								</label>
						</td>
        			</c:if>
        			<c:if test="${rdata.sex=='女' }">
        			    <td>性别：<br><label class="radio-inline">
  										<input type="radio" name="inlineRadioOptions" id="sex" value="男"> 男
								</label>
								<label class="radio-inline">
  										<input type="radio" name="inlineRadioOptions" id="sex" value="女"  checked="checked"> 女
								</label>
						</td>
        			</c:if>
        		</tr>
        		<tr>
        			<td>联系地址/省：<br><select onchange="changeCity()" id="addressShen" class="form-control">
        						<option id="bb" ></option>							</select>
        			</td>
        			<td>联系地址/市：<br><select id="addressShi" class="form-control">
        						<option id="aa" ></option>							</select>
        			</td>
        			<td>联系方式：<br><input type="text" class="form-control" id="tel" value="${rdata.tel }"/></td>
        		</tr>
				
				<tr>
        			<td>邮箱：<br><input type="text" class="form-control" id="email" value="${rdata.email }"/></td>
        			<td>银行账号：<br><input type="text" class="form-control" id="bankNumber" value="${rdata.bankNumber }"/></td>
        			<td>驾驶证号码：<br><input type="text" class="form-control" id="driveId" value="${rdata.driveId }"/></td>
        		</tr>
                <tr>
				    <td>行驶证编号：<br><input type="text" class="form-control" id="vehicleLicenseId" value="${rdata.vehicleLicenseId }"></td>
				    <td>发动机编号：<br><input type="text" class="form-control" id="engineId" value="${rdata.engineId }"/></td>
				</tr>
        	</table>
				<div style="width: 100%;text-align: center;">
						<a href="src/page/DispatchManagement_Zhy/Policy-recognizee.jsp">
							<button type="button" class="btn btn-primary" style="height: 35px;">返回&nbsp;</button></a>
				</div>
        	</div>
		</form>
  </body>
</html>