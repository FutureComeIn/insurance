
//省份城市二级联动
var cityList = new Array();//创建数组
cityList['请选择省/城市']=['请选择城市/地区'];
cityList['北京市'] = ['朝阳区','东城区','西城区', '海淀区','宣武区','丰台区','怀柔','延庆','房山'];
cityList['上海市'] = ['宝山区','长宁区','丰贤区', '虹口区','黄浦区','青浦区','南汇区','徐汇区','卢湾区'];
cityList['广东省'] = ['广州市','惠州市','汕头市','珠海市','佛山市','中山市','东莞市'];
cityList['深圳市'] = ['福田区', '罗湖区', '盐田区', '宝安区', '龙岗区', '南山区', '深圳周边'];
cityList['重庆市'] = ['俞中区', '南岸区', '江北区', '沙坪坝区', '九龙坡区', '渝北区', '大渡口区', '北碚区'];
cityList['天津市'] = ['和平区', '河西区', '南开区', '河北区', '河东区', '红桥区', '塘古区', '开发区'];
cityList['江苏省'] = ['南京市','苏州市','无锡市'];
cityList['浙江省'] = ['杭州市','宁波市','温州市'];
cityList['四川省'] = ['成都市'];
cityList['海南省'] = ['海口市'];
cityList['福建省'] = ['福州市','厦门市','泉州市','漳州市'];
cityList['山东省'] = ['济南市','青岛市','烟台市'];
cityList['江西省'] = ['南昌市'];
cityList['广西省'] = ['柳州市','南宁市'];
cityList['安徽省'] = ['合肥市'];
cityList['河北省'] = ['邯郸市','石家庄市'];
cityList['河南省'] = ['郑州市','洛阳市'];
cityList['湖北省'] = ['武汉市','宜昌市'];
cityList['湖南省'] = ['长沙市','株洲市','湘潭市','衡阳市'];
cityList['陕西省'] = ['西安市'];
cityList['山西省'] = ['太原市'];
cityList['黑龙江省'] = ['哈尔滨市'];
cityList['其他'] = ['其他'];

//加载城市
function changeCity(){
	//获取到province的值
	var province=document.getElementById("province").value; 
	//获取到id为city元素
	var city=document.getElementById("city");
	city.options.length=0; //清除当前city中的选项
	//循环数组二维数组
	for (var i in cityList){
		//如果数组中的对象与省份相同
	    if (i == province){
	    	//则循环数组
	        for (var j in cityList[i]){
				city.add(new Option(cityList[i][j]),null);//将城市放入下拉框中
	        }
	    }
	}
} 
//加载省份
function allCity(){
	//获取省份元素
	var province=document.getElementById("province");
	//清空下拉框中的选项
	province.options.length=0;
	//循环将数组
	for (var i in cityList){
		province.add(new Option(i),null); //将数组里的对象放入下拉框中
	}	
	//同时加载出城市
	changeCity();
}
//加载allCity方法
window.onload=allCity;

