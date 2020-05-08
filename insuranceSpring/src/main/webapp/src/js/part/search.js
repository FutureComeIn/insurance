	function caronloads(indexPage){
		$("#carinfo").empty();
			
			$.ajax({
				url:'http://localhost:8080/loadPartInfo.do',
				type:'post',
				dataType : 'json',
				data:{
					'indexPage':indexPage
				},
				success : function(data) {
					
				
					var contentHtml ="";
					for (var i = 0; i < data.datas.length; i++) {
						var rowHtml = "<tr>";
						if(data.datas[i].carType==null){
							rowHtml+="<td ></td>";
						}else{
							rowHtml+="<td >"+data.datas[i].carType.carName+"</td>";
						}
						
						rowHtml+="<td >"+data.datas[i].carPartName+"</td>";
						rowHtml+="<td >"+data.datas[i].carPartPrice+"</td>";
						rowHtml+="<td >"+data.datas[i].carPartRemark+"</td>";
						rowHtml+="<td><a href='#' id='' onclick='deletePartInfo("+data.datas[i].carPartId+");'>删除</a>";
						
						//rowHtml+="<td><a href='#' id='' onclick='deletePartInfo("+data.datas[i].carPartId+");'>删除</a>";
						rowHtml+="<a href='http://localhost:8080/toupdatePartType.do?id="+data.datas[i].carPartId+"' id=''>修改</a></td></tr>";
						contentHtml += rowHtml;		                   
					
					}
					$("#carinfo").append(contentHtml);
					page(data.singerData,"caronloads");
				
				},
				error : function() {
					alert("查找失败!");
				}
			})
		}   
		
		function deletePartInfo(id){
			if(window.confirm("你确定要删除吗？")){
				$.ajax({
					url:'http://localhost:8080/deletePartInfo.do',
					type:'post',
					data:{'id':id},
					dataType : 'json',
					success : function(data) {
					
						alert("删除成功");		
						caronloads();
						
					},
					error : function() {
						alert("删除失败!");
					}
				})
			}else{
				return false;
			}
		}
		function page(page,method){
			$("#page").empty();
			var pagehtml = "<button class='btn btn-sm btn-primary' style='margin-right:20px' onclick='"+method+"(\"1\")'>首页</button>";
			if(page.indexPage == 1){
				pagehtml += "<button class='btn btn-sm btn-primary' style='margin-right:20px'>上一页</button>";
			}else{
				pagehtml += "<button class='btn btn-sm btn-primary' style='margin-right:20px' onclick='"+method+"(\""+(page.indexPage - 1)+"\")'>上一页</button>";
			}
			
			pagehtml += page.indexPage + "/" + page.pageCount;
			
			if(page.indexPage == page.pageCount){
				pagehtml += "<button class='btn btn-sm btn-primary' style='margin-right:20px;margin-left:20px'>下一页</button>";
			}else{
				pagehtml += "<button class='btn btn-sm btn-primary' style='margin-right:20px;margin-left:20px' onclick='"+method+"(\""+(page.indexPage + 1)+"\")'>下一页</button>";
			}
			pagehtml += "<button class='btn btn-sm btn-primary' style='margin-right:20px' onclick='"+method+"(\""+page.pageCount+"\")'>尾页</button>";
			$("#page").append(pagehtml);
		}

		   