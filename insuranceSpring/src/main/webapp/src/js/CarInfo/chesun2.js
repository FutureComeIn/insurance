$(function(){
	//添加车辆文本框
	$("#add_but").click(function(){
			$("#butt").before("<tr class='addon'>"
					+"<td><input type='text' class='text'/></td>"
					+"<td><input type='text' class='text' /></td>"
					+"<td><input type='text' class='text'/></td>"
					+"<td><input type='text' class='text' /></td>"
					
				
					+"</tr>")
					suanfa();
	})
	$("#rem_but").click(function(){
		 var index = $("#butt").prev().attr("class");
		 
		 if(index!="tr addon"){
		 	$("#butt").prev().remove()
		 }
	})	
})


//添加车辆
 $(function(){
		$("#bc").click(function(){
			var values=$(".text");
			
			var carName=$(values[0]).val();
			var carBrand=$(values[1]).val();
			var carSpecificType=$(values[2]).val();
			var carValue=$(values[3]).val();
			datas="carName="+carName+"&carBrand="+carBrand+"&carSpecificType="+carSpecificType+"&carValue="+carValue;
			$.ajax({
				   type: "POST",
				   url: "http://localhost:8080/addCarType.do",
				   data: datas,
				   success: function(data){
				     alert("添加成功");
				     window.location.href="http://localhost:8080/src/page/section_dwl/CarInfo.jsp";
				   },
				   error:function(){ 
					   alert("失败");
				   }
				});
		});
	})
