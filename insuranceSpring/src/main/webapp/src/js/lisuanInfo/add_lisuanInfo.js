function save(){
	//这是勘察明细信息 文件的上传
	var options = {
			url : 'http://localhost:8080/addData.do',
			dataType:'json',      
			success : function(data) {
				console.log(data);
				if(data.result){
					alert("上传成功");
					window.location.href="lisuanInfo.jsp";
				}else{
					alert(data.message);
				}
			},
			error : function(){
				alert("上传失败");
			},
			clearForm : false,
			timeout : 100000
	};
	$("#uploadForm").ajaxSubmit(options); //勘察明细信息ajax
}
