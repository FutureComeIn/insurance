<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>日志管理</title>
	<!-- Bootstrap -->
	<link href="../../../vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
	<!-- Font Awesome -->
	<link href="../../../vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link href="../../../vendors/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet">
    <link href="../../../vendors/jqvmap/dist/jqvmap.min.css" rel="stylesheet"/>
    <link href="../../../vendors/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">
   
    <!-- jQuery -->
    <script src="../../../vendors/jquery/dist/jquery.min.js"></script>
    <script type="text/javascript">
	   
	   	function skipPage(indexPage){
			document.logform.action="../../../queryLog.do?indexPage="+indexPage;
			document.logform.submit();
	  	}
	    $(function(){
	    	$('thead input[type=checkbox]').click(function(){
	        	// 获取自己的选中状态
	        	var thisChecked = $(this).prop('checked');
	        	// 设置给tbody中的checkbox
	        	$('tbody input[type=checkbox]').prop('checked',thisChecked);
	        	// 显示隐藏 批量删除
	        	if(thisChecked==true){
	        		$('.page-action a').fadeIn();
	        	}else{
	        		$('.page-action a').fadeOut();
	        	}
	        })
	        $('tbody').on('click','input[type=checkbox]',function(){
	        	//var totalNum = $('tbody input[type=checkbox]').length; 总个数
	        	var checkedNum = $('tbody input[type=checkbox]:checked').length;//选中个数
	        	if(checkedNum==0){
	        		$('thead input[type=checkbox]').prop('checked',1==2);
	        	}
	        })
	    })
	    function deleteAll(){
	    	var logidArray=new Array();
	    	if(confirm("您确定删除吗")){
	    		var $checkedNum=$('tbody input[type=checkbox]:checked');
	        	if($checkedNum.length==0){
	        		alert("请选中至少一项");
	        		return;
	        	}
	        	for(var i=0;i<$checkedNum.length;i++){
	        		logidArray[i]=$checkedNum.eq(i).val();
	        	}
	        	$.ajax({
	        		url:"http://localhost:8080/../../../deleteLog.do",
	        		type:"post",
	        		data:{
	        			"logids":logidArray
	        		},
	        		dataType:"json",
	        		success:function(data){
	        			if(data.result==true){
	        				alert("删除成功...");
	        				window.location.href="queryLog.do";
	        			}
	        		},
	        		error:function(){
	        			alert("删除角色失败");
	        		}
	        	})
	    	}
	    }
	    
    </script>
  </head>

  <body style="background: #F7F7F7;">
	<center>		
        <div id="top" style="margin-bottom: 20px">
            <h3>日志管理</h3>
     	</div>
     	<form action="../../../queryLog.do" method="post" name="logform">
     	 <input type="hidden" value="${page.indexPage }" id="indexPage"/>
     	<div style="margin-bottom: 20px">
     		
     			操作人:<input type="text" name="logName" value="${searchLog.logName }"/> &nbsp;&nbsp;
     			操作时间:<input type="date" name="logTime" value="${searchLog.logTime }"/> &nbsp;&nbsp;
     			<input type="submit" value="搜索"/>
     		
     	</div>
        <div id="table" align="center" style="width: 700px">
			<table class="table table-bordered" id="roles_lzw">
			  <thead>
		 		<tr>
		 			<td class="active">
		 			<button type="button" class="btn btn-primary" onclick="deleteAll()">
		 				批量删除</button>
		 			<input type="checkbox" name="alldel"/>
		 			</td>
		 			<td class="active">日志编号</td>
		 			<td class="active">操作人</td>
		 			<td class="active">操作内容</td>
		 			<td class="active">操作时间</td>
		 			<td class="active">耗时(ms)</td>
		 		</tr>
		 	 </thead>
		 		<c:forEach items="${loglist }" var="log">
		 	 <tbody>
		 		<tr class="">
		 			<td class="active"><input type="checkbox" value="${log.logId }"/></td>
		 			<td class="active">${log.logId }</td>
		 			<td class="active">${log.logName }</td>
		 			<td class="active">${log.logContent }</td>
		 			<td class="active">${log.logTime }</td>
		 			<td class="active">${log.consumeTime }</td>
		 		</tr>
		 	 </tbody>
		 		</c:forEach>
			</table>
			<div>
				<button onclick="skipPage(1)" class="btn btn-sm btn-primary" style="margin-right:20px">首页</button>
			    <button onclick="skipPage('${page.indexPage>1?page.indexPage-1:1}')" class="btn btn-sm btn-primary" style="margin-right:20px">上一页</button>
			    ${page.indexPage }/${page.pageCount }
				<button onclick="skipPage('${page.indexPage<page.pageCount?page.indexPage+1:page.pageCount}')" class="btn btn-sm btn-primary" style="margin-right:20px;margin-left:20px">下一页</button>
				<button onclick="skipPage('${page.pageCount}')" class="btn btn-sm btn-primary" style="margin-right:20px">尾页</button>
			</div>
			
		</div>
		</form>
	</center> 
    
  </body>
</html>