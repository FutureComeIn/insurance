//$(document).ready(function(){
//	$("adddinsun").click(function(){
//		alert(1);
//	})
//})
$(function(){
	//自定义电话号码验证
	jQuery.validator.addMethod("isPhone", function(value, element) {
	    var length = value.length;
	    var mobile = /^(((13[0-9]{1})|(15[0-9]{1})|(18[0-9]{1})|(17[0-9]{1}))+\d{8})$/;
	    return this.optional(element) || (length == 11 && mobile.test(value));
	},"请填写正确的手机号码");//可以自定义默认提示信息
		$("#mycarlossdetails").validate({
//			rules:{
//				  tel : {
//						 required : true,
//				         minlength : 11,
//				         // 自定义方法：校验手机号在数据库中是否存在
//				         // checkPhoneExist : true,
//				         isPhone:true
//			            }
//		    	},
//			messages : {
//				tel : {
//					required : "请输入手机号",
//		            minlength : "确认手机不能小于11个字符",
//		            isPhone : "请正确填写您的手机号码"
//		            }
//			},
//		    errorPlacement:function(error,element){
//		        	error.appendTo(element.parent());
//		    }
		});
		$("#mycarloss").validate({
			rules:{
				  tel : {
						 required : true,
				         minlength : 11,
				         // 自定义方法：校验手机号在数据库中是否存在
				         // checkPhoneExist : true,
				         isPhone:true
			            }
		    	},
			messages : {
				tel : {
					required : "请输入手机号",
		            minlength : "确认手机不能小于11个字符",
		            isPhone : "请正确填写您的手机号码"
		           }
			},
			errorPlacement:function(error,element){
		    	error.appendTo(element.parent());
		    }
		});
});
function adddinsun(){
	var flag1 = $("#mycarloss").valid();
	var flag2 = $("#mycarlossdetails").valid();
    if(!flag1 || !flag2){
        return;
    }
	var myCarDamageId=0;
	var adverseDamageId=0;
	var options = {
			url : 'http://localhost:8080/src/page/dinsun/addMyCarDamage.do',
			dataType:'json',
			success : function(data) {
				alert("888888");
				console.log(data);
				//alert(data.singerData);
				//if(data.singerData>0){
					myCarDamageId=data.singerData;
					addmycarlossdetais(myCarDamageId);
					addadversecarloss(myCarDamageId)
				//}
				
			},
			error : function(){
				alert("添加失败");
			},
			clearForm : false,
			timeout : 100000
	};
	$("#mycarloss").ajaxSubmit(options); 
}
function addmycarlossdetais(myCarDamageId){
	var options = {
			url : 'http://localhost:8080/src/page/dinsun/addMyCarDamageDetails.do',
			dataType:'json',
			data:{
				'myCarDamageId':myCarDamageId
			},
			success : function(data) {
				//console.log(data);
				//alert(data);
				if(data){
					
				}else{
					alert("添加失败");
					return false;
				}
				//myCarDamageId=data;
				//alert(myCarDamageId);
			},
			error : function(){
				//alert("error");
			},
			clearForm : false,
			timeout : 100000
	};
	$("#mycarlossdetails").ajaxSubmit(options);
}

function addadversecarlossdetais(adverseCarDamageId){
	//alert("执行");
	var options = {
			url : 'http://localhost:8080/src/page/dinsun/addAdverseCarDamageDetails.do',
			dataType:'json',
			data:{
				'adverseCarDamageId':adverseCarDamageId
			},
			success : function(data) {
				//console.log(data);
				//alert(data);
				if(data){
					
				}else{
					alert("添加失败");
					return false;
				}
				//myCarDamageId=data;
				//alert(myCarDamageId);
			},
			error : function(){
				//alert("error");
			},
			clearForm : false,
			timeout : 100000
	};
	$("#adversecarlossdetails").ajaxSubmit(options);
}


function addadversecarloss(myCarDamageId){
	var options = {
			url : 'http://localhost:8080/src/page/dinsun/addAdverseCarDamage.do',
			dataType:'json',
			success : function(data) {
				console.log(data);
				var mycarprice=$("#mycarprice");
				var adversecarprice=$("#adversecarprice");
				var totalPrice=parseInt(mycarprice.val())+parseInt(adversecarprice.val());//总价格
				
				var userName=$("#userNames").val();
				var userId=$("#userIds").val();
				var caseId=$("#caseIds").val();
				//alert(userId);
				//alert(caseId);
				//alert(userName);
				if(data.singerData>0){
					addadversecarlossdetais(data.singerData);
					$.ajax({
						url:'http://localhost:8080/src/page/dinsun/addAssessment.do',
						async:false,
						type:'post',
						dataType:'json',
						data:{
							'adverseCarDamageId':myCarDamageId,
							'myCarDamageId':data.singerData,
							'totalPrice':totalPrice,
							'UserId':userId,
							'assessmentPerson':userName,
							'caseId':caseId
						},
						success:function(data){
							//alert(data.singerData);
							if(data.result){
								window.location.href="http://localhost:8080/src/page/dinsun/queryToDinsunAllInfo.do?assessmentId="+data.singerData+"&caseId="+caseId;
							}
						},
						error:function(){
							alert("添加失败");
						}
					})
					
				}
				
			},
			error : function(){
				//alert("error");
			},
			clearForm : false,
			timeout : 100000
	};
	//alert("options="+options);
	$("#adversecarloss").ajaxSubmit(options);
}


function test(){
	//var mycarlosspreice=$("#mycarlossprice");
	//var adversecarlossprice=$("#adversecarlossprice");
	var mycarprice=$("#mycarprice");
	var adversecarprice=$("#adversecarprice");
	var totalPrice=parseInt(mycarprice.val())+parseInt(adversecarprice.val());
	var userName=$("#userNames").val();
	var userId=$("#userIds").val();
	var caseIds=$("#caseIds").val();
	//alert(caseIds);
	//alert(totalPrice);
}


function lossmenber(obj){
	var countinput=$(obj);
	var count=parseInt(countinput.val());
	var priceinput=countinput.parent().next().next();
	var price=parseInt(priceinput.children().eq(0).val());
	var totalprice=priceinput.next().next();
	var xiaoji=totalprice.text();
	//车损小计
	var table=countinput.parent().parent().parent();
	var div=table.parent().parent().parent();
	var totalinput=div.prev().children().children().eq(1).children().children().eq(0).children().eq(2).children().eq(1).children();
	var total=totalinput.eq(0).text();
	var totalvalue=totalinput.eq(1).val();
	//alert(xiaoji);
	if(isNaN(price)||isNaN(count)){
		totalprice.text(0);
	}else{
		totalprice.text(count*price);
	}
	var amount=0;
	var td=$(table).find("td");
	for(var i=0;parseInt(td.size())>i;i++){
		if(i!=0&& i%16==8){
	//alert(i);
			amount+=parseInt(td.eq(i).text());
		}
	}
	//alert(totalinput.eq(0).text());
	//alert(amount);
	totalinput.eq(0).text(amount);
	totalinput.eq(1).val(amount);
}

function lossprice(obj){
	var priceinput=$(obj);
	var price=parseInt(priceinput.val());
	var countinput=priceinput.parent().prev().prev();
	var count=parseInt(countinput.children().eq(0).val());
	var totalprice=priceinput.parent().next().next();
	var xiaoji=totalprice.text();
	totalprice.text(count*price);
	//车损小计
	var table=priceinput.parent().parent().parent();
	var div=table.parent().parent().parent();
	var totalinput=div.prev().children().children().eq(1).children().children().eq(0).children().eq(2).children().eq(1).children();
	var total=totalinput.eq(0).text();
	var totalvalue=totalinput.eq(1).val();
	if(isNaN(price)||isNaN(count)){
		totalprice.text(0);
	}else{
		totalprice.text(count*price);
	}
	var amount=0;
	var td=$(table).find("td");
	for(var i=0;parseInt(td.size())>i;i++){
		if(i!=0&& i%16==8){
	//alert(i);
			amount+=parseInt(td.eq(i).text());
		}
	}
	//alert(totalinput.eq(0).text());
	totalinput.eq(0).text(amount);
	totalinput.eq(1).val(amount);
	//alert(parseInt(td.size()));

}
//$(function(){
//	$("")
//})||||||| .r479


