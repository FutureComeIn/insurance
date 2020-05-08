<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src="../../js/SettleClaim/updateSettleClaim.js"></script>
	<script src="../../js/SettleClaim/deleteSettleClaimBycaseId.js"></script>
	<script src="../../js/NuclearDamage/queryAll.js"></script>
	<script src="../../js/NuclearDamage/updateNuclearDamage.js"></script>
	<!-- <script>$("#baoan").ready(function(){
		function baoan(1);//执行函数
	       }); 
   </script>
   <script>$("#baodan").ready(function(){
		function baoan(1);//执行函数
   }); 
   </script>
   <script>$("#kancha").ready(function(){
		function kancha(1);//执行函数
   }); 
   </script>
    <script>$("#biaozhun").ready(function(){
		function biaozhun(1);//执行函数
   }); 
   </script>
    -->
</head>
<body style="background: #F7F7F7;"  onload="loaduser1();dinsun(${AssessmentInfo.assessmentId});baoan(${AssessmentInfo.caseId});baodan(${reportList.warrantyId});kancha(${reportList.reportId});biaozhun(${AssessmentInfo.caseId});" >

<div id="myCarousel" class="carousel slide" style="margin: 0 auto;">
	<!-- 轮播（Carousel）指标 -->
	<ol class="carousel-indicators" >
		<li data-target="#myCarousel" data-slide-to="0" class="active" style="background-color: #000000;"></li>
		<li data-target="#myCarousel" data-slide-to="1" style="background-color: #000000;"> </li>
		<li data-target="#myCarousel" data-slide-to="2" style="background-color: #000000;"></li>
		<li data-target="#myCarousel" data-slide-to="3" style="background-color: #000000;"></li>
		<li data-target="#myCarousel" data-slide-to="4" style="background-color: #000000;"></li>
		<li data-target="#myCarousel" data-slide-to="5" style="background-color: #000000;"></li>
	</ol>   
	<!-- 轮播（Carousel）项目 -->
	<div class="carousel-inner" style="height:700px;">
		<div class="item active" style="width: 71%;height:100%;margin: 0 auto;">
			<div style="width: 100%;height: 100%;" >
				<table class="table table-bordered " id="table">
					<thead>
						<tr>
							<th>案件编号</th>
							<th>报案编号</th>
							<th>事故原因</th>
							<th>出事地址 </th>
							<th>接案人员</th>
							<th>勘察人员</th>
							<th>定损人员</th>
						</tr>
					</thead>
					<tbody id="baoan">
						
					</tbody>
				</table>				
			</div>
			<div class="carousel-caption"><h4 style="color: #000000;">案件</h4></div>
		</div>
		<div class="item" style="width: 72%;height:100%;margin: 0 auto;">
			<div style="width: 100%;height: 100%;margin: 0 auto;text-align: center;">
				<table class="table table-bordered " id="table">
					<thead>
						<tr>
	                        <th>勘察编号</th>
							<th>勘察员</th>
							<th>勘察地点</th>
							<th>勘察时间</th>
							<th>我方车主姓名</th>
							<th>对方车主姓名</th>
							<th>我方车主电话</th>
							<th>对方车主电话</th>
							<th>我方车主行驶证</th>
							<th>对方车主行驶证</th>
							<th>我方车主驾驶证</th>
							<th>对方车主驾驶证</th>
                        </tr>
					</thead>
					<tbody id="kancha">
						
					</tbody>
				</table>						
			</div>
			<div class="carousel-caption"><h4 style="color: #000000;">勘察信息</h4></div>
		</div>
		<div class="item" style="width: 72%;height:100%;margin: 0 auto;">
			<div style="width: 100%;height: 100%;">
				<table class="table table-bordered " id="table">
					<thead>
						<tr>
							<th>我方车主</th>
							<th>联系方式</th>
							<th>车辆类型</th>
							<th>车牌号码</th>
							<th>我方车损小计</th>
						</tr>
					</thead>
					<tbody id="dinsuninfo">
					</tbody>
				</table>	
				<table class="table table-bordered " id="table">
					<thead>
						<tr>
							<th>受损部件</th>
							<th>受损数量</th>
							<th>单价</th>
							<th>维修地点</th>
							<th>描述</th>
							<th>损坏图片</th>
						</tr>
					</thead>
					<tbody id="dinsun">
					</tbody>
				</table>						
			</div>
			<div class="carousel-caption"><h4 style="color: #000000;">我方定损</h4></div>
		</div>
		<div class="item" style="width: 72%;height:100%;margin: 0 auto;">
			<div style="width: 100%;height: 100%;">
				<table class="table table-bordered " id="table">
					<thead>
						<tr>
							<th>对方车主</th>
							<th>联系方式</th>
							<th>车辆类型</th>
							<th>车牌号码</th>
							<th>对方车损小计</th>
						</tr>
					</thead>
					<tbody id="dinsun_duifang_info">
					</tbody>
				</table>
				<table class="table table-bordered " id="table">
					<thead>
						<tr>
							<th>受损部件</th>
							<th>受损数量</th>
							<th>单价</th>
							<th>维修地点</th>
							<th>描述</th>
							<th>损坏图片</th>
						</tr>
				    </tr>
					</thead>
					<tbody id="dinsun_duifang">
						
					</tbody>
				</table>							
			</div>
			<div class="carousel-caption"><h4 style="color: #000000;">对方定损</h4></div>
		</div>
		<div class="item" style="width: 72%;height:100%;margin: 0 auto;">
			<div style="width: 100%;height: 100%;">
				<table class="table table-bordered " id="table">
					<thead>
						<tr>
							<th>险种编号</th>
							<th>险种名称</th>
							<th>险种年限</th>
							<th>险种描述</th>
							<th>投保金额</th>
							<th>最高赔付</th>
						</tr>
					</thead>
					<tbody id="biaozhun">
						
					</tbody>
				</table>						
			</div>
			<div class="carousel-caption"><h4 style="color: #000000;">险种对比</h4></div>
		</div>
		<div class="item" style="width: 72%;height:100%;margin: 0 auto;">
			<div style="width: 100%;height: 100%;">
				<table class="table table-bordered " id="table">
					<thead>
						<tr>
							<th>投保人姓名</th>
							<th>投保人电话</th>
							<th>被保人姓名</th>
							<th>被保人身份证号</th>
							<th>保单起期</th>
							<th>保单止期</th>
							<th>保单录入员</th>
							<th>汽车类型</th>
							<th>投保金额</th>
							<th>保费金额</th>
							<th>签单日期</th>
							<th>缴费日期</th>
							<th>行驶证号</th>
							<th>驾驶证号</th>
							<th>发动机编号</th>
							
				    </tr>
					</thead>
					<tbody id="baodan">
						
					</tbody>
				</table>						
			</div>
			<div class="carousel-caption"><h4 style="color: #000000;">保单信息</h4></div>
		</div>
		
	</div>
	<!-- 轮播（Carousel）导航 -->
	<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
	    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
	    <span class="sr-only">Previous</span>
	</a>
	<a class="right carousel-control" href="#myCarousel" role="button"f data-slide="next">
	    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
	    <span class="sr-only">Next</span>
	</a>
</div> 
 
         
            <table id="usertable" align="center">
             </table>
           <div style="margin: 0 auto;text-align: center;">
<a href="../settle_lh/settle.jsp" id="updateSettleClaim" class="btn  btn-primary"  onclick="updateSettleClaim(${SettleClaimInfo.caseId})" >通过理赔</a>
<a href="../settle_lh/settle.jsp" id="deleteSettleClaimBycaseId" class="btn  btn-primary" onclick="deleteSettleClaimBycaseId(${SettleClaimInfo.caseId})">驳回</a>
<a href="../settle_lh/settle.jsp "  class="btn  btn-primary" >返回</a>
            </div>
</body>
</html>