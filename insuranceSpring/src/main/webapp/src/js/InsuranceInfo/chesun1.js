$(function(){
	//添加零件
	$("#add_but").click(function(){
			$("#butt").before("<tr class='addon'>"
					+"<td><input type='text' class='text'/></td>"
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
