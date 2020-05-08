function showRoles(){
	var $rolename=$("#roleName");
	$.ajax({
		url:"http://localhost:8080/showRoles.do",
		type:"post",
		dataType:"json",
		success:function(data){
			var options="";
			for(var i=0;i<data.datas.length;i++){
				options+="<option value='"+data.datas[i].roleId+"'>"+data.datas[i].roleName+"</option>";
			}
			$rolename.append(options);
		},
		error:function(){
			alert("获取角色失败...");
		}
	});
}

	    
