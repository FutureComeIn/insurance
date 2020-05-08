function dinsun(assessmentId,caseId){
	window.location.href="http://localhost:8080/src/page/dinsun/queryToDinsunAllInfo.do?assessmentId="+assessmentId+"&caseId="+caseId;
}

function back(){
	window.history.go(-1);
}


	
function loaduser(){
	$("#usertable").empty();
	$.ajax({
		url:'http://localhost:8080/src/page/dinsun/queryUserByRoleId.do',
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

function passCarLoss(assessmentId,caseId){
	var opt=$("input:radio:checked");
	var optid=opt.val();
	var optname=opt.attr("id");
		if(optid==null){
			return false;
		}
	window.location.href="http://localhost:8080/src/page/dinsun/PassDinsun.do?assessmentId="+assessmentId+"&caseId="+caseId+"&userId="+optid+"&userName="+optname;
}

function exithandle(){
	window.location.href="http://localhost:8080/src/page/dinsun/loss_assessment.jsp";
}