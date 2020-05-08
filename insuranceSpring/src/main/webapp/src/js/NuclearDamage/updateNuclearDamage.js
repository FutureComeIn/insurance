function updateNuclearDamage(nuclearDamageid,nuclearDamagePrice,caseId){
	var opt=$("input:radio:checked");
	var optid=opt.val();
	var optname=opt.attr("id");
		if(optid==null){
			return false;
		}
		//$("#updateNuclearDamage");
		window.location.href="http://localhost:8080/src/page/hesun/updateNuclearDamage.do?nuclearDamageId="+nuclearDamageid+"&settleclaimPrice="+nuclearDamagePrice+"&caseId="+caseId+"&userId="+optid+"&userame="+optname;
}   


function loaduser1(){
	$("#usertable").empty();
	$.ajax({
		url:'http://localhost:8080/src/page/hesun/queryUserByRoleId2.do',
		type:'post',
		dataType:'json',
		success:function(data){
			//控制输出
			//console.log(data);
			var contentHtml = "";
			for(var i=0; i < data.datas.length;i++){
				var rowHtml = "<tr><td><input type='radio' name='options' id='"+data.datas[i].userName+"' calss='options' value='"+data.datas[i].userId+"'>"+data.datas[i].userName+"</td></tr>";
				//追加数据
				contentHtml += rowHtml;
			}
			$("#usertable").append(contentHtml);
		},
		error:function(){
			alert("查询失败");
		}
	})
}