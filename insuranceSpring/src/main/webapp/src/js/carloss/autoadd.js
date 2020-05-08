//$("#carType").typeahead({
//	alert(1);
//        source: function (query, process) {
//            return $.ajax({
//                url: 'http://localhost:8080/src/page/dinsun/queryCarTypeByCarName.do',
//                type: 'post',
//                data: {'carName': query},
//                success: function (result) {
//                	var results = _.map(result.datas, function (product) {
//                    return product.name;
//                },
//            });
//        }
//});
//            
//            $().ready(function() {
//                $("#mycarloss").validate();
//            });
//            
//            
//            $(function() {
//            	　　var enterprise = [];
//            		
//            	　　$.ajax({
//            	　　　　url : 'http://localhost:8080/src/page/dinsun/queryCarTypeByCarName.do',
//            	　　　　type : 'POST',
//            	　　　　dataType : 'JSON',
//            	     data:{'carName':query},
//            	　　　　success : function(data) {
//            		conlose.log(data);
//            	　　　　　　for (var i = 0; i < data.length; i++) {
//            	　　　　　　　　enterprise[i] = data[i].carName;
//            	　　　　　　}
//            	　　　　}
//            	　　});
//
//            	　　$("#companyName").typeahead({
//            	　　　　source : enterprise
//            	　　});
//
//            	});
