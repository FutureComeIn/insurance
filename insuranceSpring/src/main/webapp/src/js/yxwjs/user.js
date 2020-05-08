/**
 * 用户添加 修改的 空值判断
 * @returns
 */
$(function(){
	$("#userOperationButton").click(function(){
		var $input=$("input");
		for(var i=0;i<$input.length;i++){
			if($input.eq(i).val()==null||$input.eq(i).val()==""){
					alert("请补充基本信息");
					return;
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
		document.uform.submit();
	})
})

function addRole(uid){
	if(confirm("您确认添加角色吗")){
		var $unroles=$("#unroles").find("option:selected");
		var unrolesArray=new Array();
		for(var i=0;i<$unroles.length;i++){
			//alert($unroles.eq(i).text());
			unrolesArray[i]=$unroles.eq(i).val()
			$("#roles").append("<option value='"+$unroles.eq(i).val()+"'>"+$unroles.eq(i).text()+"</option>");
		}
		 $unroles.remove(); //直接把选中的全部干掉
	}
	$.ajax({
		url:"http://localhost:8080/src/page/welcome/addRoleToUser.do",
		type:"post",
		data:{
			"userid":uid,
			"unroles":unrolesArray
		},
		dataType:"json",
		success:function(data){
			alert("添加的角色数="+data.singerData);
		},
		error:function(){
			alert("添加角色失败");
		}
	})
}
	    
function removeRole(uid){
	if(confirm("您确认移除角色吗")){
		var $roles=$("#roles").find("option:selected");
		var rolesArray=new Array();
		for(var i=0;i<$roles.length;i++){
			rolesArray[i]=$roles.eq(i).val();
			$("#unroles").append("<option value='"+$roles.eq(i).val()+"'>"+$roles.eq(i).text()+"</option>");
		}
		$roles.remove();
	}
	$.ajax({
		url:"http://localhost:8080/src/page/welcome/removeRoleToUser.do",
		type:"post",
		data:{
			"userid":uid,
			"roles":rolesArray
		},
		dataType:"json",
		success:function(data){
			alert("移除的角色数="+data.singerData);
		},
		error:function(){
			alert("移除角色失败");
		}
	})

}