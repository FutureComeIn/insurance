<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
	<!-- Bootstrap -->
	<link href="../../../vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
	<!-- Font Awesome -->
	<link href="../../../vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
	
    <link href="../../../vendors/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet">
    
    <link href="../../../vendors/jqvmap/dist/jqvmap.min.css" rel="stylesheet"/>
  
    <link href="../../../vendors/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">
	
	<script src="../../../vendors/jquery/dist/jquery.min.js"></script>
    <script type="text/javascript">
	    function removeRight(rid){
	    	if(confirm("您确认移除权限吗")){
	    		var $rights=$("#rights").find("option:selected");
	    		var rolesArray=new Array();
	    		for(var i=0;i<$rights.length;i++){
	    			rolesArray[i]=$rights.eq(i).val();
	    			$("#unrights").append("<option value='"+$rights.eq(i).val()+"'>"+$rights.eq(i).text()+"</option>");
	    		}
	    		$rights.remove();
	    	}
	    	alert(rolesArray);
	    	$.ajax({
	    		url:"http://localhost:8080/removeRightToRole.do",
	    		type:"post",
	    		data:{
	    			"rid":rid,
	    			"rightids":rolesArray
	    		},
	    		dataType:"json",
	    		success:function(data){
	    			alert("移除权限成功");
	    		},
	    		error:function(){
	    			alert("移除权限失败");
	    		}
	    	})
	    }
	    function addRight(rid){
	    	if(confirm("您确认添加权限吗")){
	    		var $unrights=$("#unrights").find("option:selected");
	    		var unrolesArray=new Array();
	    		for(var i=0;i<$unrights.length;i++){
	    			//alert($unroles.eq(i).text());
	    			unrolesArray[i]=$unrights.eq(i).val()
	    			$("#rights").append("<option value='"+$unrights.eq(i).val()+"'>"+$unrights.eq(i).text()+"</option>");
	    		}
	    		$unrights.remove(); //直接把选中的全部干掉
	    	}
	    	alert(unrolesArray);
	    	$.ajax({
	    		url:"http://localhost:8080/addRightToRole.do",
	    		type:"post",
	    		data:{
	    			"rid":rid,
	    			"unrightids":unrolesArray
	    		},
	    		dataType:"json",
	    		success:function(data){
	    			alert("添加权限成功");
	    		},
	    		error:function(){
	    			alert("添加权限失败");
	    		}
	    	})
	    }
	    
	    function updateRole(rid){
	    	if(confirm("您确认修改吗")){
	    		var rname=$("#rname").val();
	    		var hrname=$("#hrname").val();
	    		$.ajax({
	    			url:"http://localhost:8080/showRoles.do",
	    			type:"post",
	    			dataType:"json",
	    			success:function(data){
	    				for(var i=0;i<data.datas.length;i++){
	    					if(data.datas[i].roleName==rname&&rname!=hrname){
	    						alert("该角色已存在,请更换");
	    						return;
	    					}
	    				}
	    				document.rform.submit();
	    			},
	    			error:function(){
	    				alert("获取角色失败...");
	    			}
	    		})
	    	}
	    }
    </script>
    
</head>
<body style="font-family:微软雅黑;font-size:20px;" onload="showRoles()">
	<div>
		<form action="../../../updateRole.do?roleId=${role.roleId }" method="post" name="rform">
			<input type="hidden" value="${role.roleName }" id="hrname"/>
			<table>
				<caption>角色详情</caption>
				<tr>
					<td> 角色id:<input type="text" disabled name="roleId" value="${role.roleId }"/> </td>
					<td width="50">&nbsp;</td>
					<td><input type="text" name="roleName" value="${role.roleName }" id="rname"/></td>
				</tr>
				<tr height="60"> <td colspan="3"></td></tr>
				<tr>
					<td>
						<label>已拥有权限:</label><br/>
						<select id="rights" name="haveright" multiple style="width:260px;height:400px">
							<c:forEach items="${rights }" var="right">
								<option value="${right.rightId }">${right.rightName }</option>
							</c:forEach>
						</select>
					</td>
					<td align="center">
						<button onclick="removeRight(${role.roleId})">&gt;</button><br><br> <!-- 大于号 -->
						<button onclick="addRight(${role.roleId})">&lt;</button> <!-- 小于号 -->
					</td>
					<td>
						<label>未拥有权限:</label><br/>
						<select id="unrights" name="uhaveright" multiple style="width:260px;height:400px">
							<c:forEach items="${unrights }" var="unright">
								<option value="${unright.rightId }">${unright.rightName }</option>
							</c:forEach>
						</select>
					</td>
				</tr>
				<tr>
					<td colspan="3" align="center">
					   <button type="button" class="btn btn-primary" onclick="updateRole()">修改</button>
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>