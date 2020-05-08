$(function(){
	//按钮点击事件
	$("#but1").click(function(){
		//调用修改方法
		update();
	});

	$("#but2").click(function(){
		//alert(1);
			 //跳转页面report_allquery
		 window.location.replace("Insurance_querying.jsp");
		});

})

function update(){
	//获取文本框的值
	var warrantyId=$("#warrantyId").val();
	var insuranceEndTime1=$("#insuranceEndTime1").val();
	var insuranceEndTime=$("#insuranceEndTime").val();
	var myDate= new Date(Date.parse(insuranceEndTime.replace(/-/g, "/"))); 
	var oldDate= new Date(Date.parse(insuranceEndTime1.replace(/-/g, "/"))); 
	if(myDate<=oldDate){
		alert("续保日期需大于此日期");
		return;
	}
	$.ajax({
		url:'http://localhost:8080/xubao.do',
		type:"post",
		dataType: "json",
		data:{
			'warrantyId':warrantyId,
			'insuranceEndTime':insuranceEndTime
		},
        success:function(data) {
           if(data.result){
        	   alert("修改成功");
        	   window.location.href="Insurance_querying.jsp"
           }
        } ,
        error:function(){
    		alert("修改失败！");
    	}
      });
}