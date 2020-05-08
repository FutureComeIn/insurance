$(function(){
//按钮点击事件
	$("#but1").click(function(){
		//调用修改方法
		 query();
		 //跳转页面report_allquery
//        window.location.replace("report_allquery.jsp");
	});

$("#but2").click(function(){
	//alert(1);
		 //跳转页面report_allquery
        window.history.go(-1);
	});

})

function query(){
	//获取文本框的值
	var reportId=$("#reported_number").val();
	var warrantyId=$("warrantyId").val();
//	alert(warrantyId);
	var reportPersonName=$("#reportPersonName").val();
	if(reportPersonName==""){
		alert("请填写报案人姓名");
		return replace("report_upd.jsp");
	}
	var reporPersontPhone=$("#informants_tel").val();
	if(!(/^1[34578]\d{9}$/.test(reporPersontPhone))){ 
        alert("手机号码有误，请重填");  
        return replace("report_upd.jsp");
    } 
	var reportReason=$("#danger_cause").val();
	var province=$("#cmbProvince").val();
	var city=$("#cmbCity").val();
	var area=$("#cmbArea").val();
	var road=$("#road").val();
	var reportTime=$("#reported_time").val();
	var road_direction=$("#road_direction").val();
	$.ajax({
		url:'http://localhost:8080/src/page/report_wb/updateReport.do',
		type:"post",
		dataType: "json",
		data:{
			'reportId':reportId,
            'warrantyId':warrantyId,
			'reportPersonName':reportPersonName,
			'reporPersontPhone':reporPersontPhone,
			'reportReason':reportReason,
			'province':province,
			'city':city,
			'area':area,
			'road':road,
			'reportTime':reportTime,
			'road_direction':road_direction
		},
        success:function(data) {
           if(data.result){
        	   window.location.href="http://localhost:8080/src/page/report_wb/report_allquery.jsp"
           }
           alert(data.message);
        } ,
        error:function(){
    		alert("修改失败！");
    	}
      });
   
}

