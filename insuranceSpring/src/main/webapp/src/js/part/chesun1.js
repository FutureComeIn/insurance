$(function(){
	//添加零件
	$("#add_but").click(function(){
			$("#butt").before("<tr class='addon'>"
					
					+"<td><input type='text' class='text' /></td>"
					+"<td><input type='text' class='text'/></td>"
					+"<td><input type='text' class='text' /></td>"
					+"<td><input type='text' class='text' ></td>"
				
					+"</tr>")
					suanfa();
	})
	$("#rem_but").click(function(){
		 var index = $("#butt").prev().attr("class");
		 
		 if(index!="tr addon"){
		 	$("#butt").prev().remove()
		 }
	})
	//减
	
	//添加零件
	
})
 
//添加车辆零件
$(function(){
		$("#bc").click(function(){
			var carTypeId=document.getElementById("carTypeId").options[document.getElementById("carTypeId").selectedIndex].value;
			var values=$(".text");
			var carPartName=$(values[1]).val();
			var carPartPrice=$(values[2]).val();
			var carSpecificType=$(values[3]).val();
		
			datas="carTypeId="+carTypeId+"carPartName="+carPartName+"&carPartPrice="+carPartPrice+"&carPartRemark="+carPartRemark;
			$.ajax({
				   type: "POST",
				   url: "http://localhost:8080/addCarType.do",
				   data: datas,
				   success: function(data){
				     alert("添加成功");
				     window.location.href="src/page/section_dwl/part.jsp";
				   },
				   error:function(){
					   alert("失败");
				   }
				});
		});
	})
