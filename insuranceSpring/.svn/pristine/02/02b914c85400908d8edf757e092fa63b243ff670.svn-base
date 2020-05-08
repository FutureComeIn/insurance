package com.dxm.insuranceSpring.pojo;

import java.util.Set;

public class MyCarDamage {
	private Integer myCarDamageId;//我方车损编号
	private String name;//	对方姓名
	private String tel;//	联系方式
	private Integer carTypeId;//车辆类型编号
	private String carType;//	车辆类型
	private String carNumber;//	车牌号
	private Integer price;//	价格
	private Set<MyCarDamageDetails> myCarDamageDetailsInfo;//我方车损详情（一对多）
	
	public Set<MyCarDamageDetails> getMyCarDamageDetailsInfo() {
		return myCarDamageDetailsInfo;
	}
	public void setMyCarDamageDetailsInfo(Set<MyCarDamageDetails> myCarDamageDetailsInfo) {
		this.myCarDamageDetailsInfo = myCarDamageDetailsInfo;
	}
	public Integer getMyCarDamageId() {
		return myCarDamageId;
	}
	public void setMyCarDamageId(Integer myCarDamageId) {
		this.myCarDamageId = myCarDamageId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public Integer getCarTypeId() {
		return carTypeId;
	}
	public void setCarTypeId(Integer carTypeId) {
		this.carTypeId = carTypeId;
	}
	public String getCarType() {
		return carType;
	}
	public void setCarType(String carType) {
		this.carType = carType;
	}
	public String getCarNumber() {
		return carNumber;
	}
	public void setCarNumber(String carNumber) {
		this.carNumber = carNumber;
	}
	public Integer getPrice() {
		return price;
	}
	public void setPrice(Integer price) {
		this.price = price;
	}
	public MyCarDamage() {
		super();
	}
	public MyCarDamage(Integer myCarDamageId, String name, String tel, Integer carTypeId, String carType,
			String carNumber, Integer price, Set<MyCarDamageDetails> myCarDamageDetailsInfo) {
		super();
		this.myCarDamageId = myCarDamageId;
		this.name = name;
		this.tel = tel;
		this.carTypeId = carTypeId;
		this.carType = carType;
		this.carNumber = carNumber;
		this.price = price;
		this.myCarDamageDetailsInfo = myCarDamageDetailsInfo;
	}
	@Override
	public String toString() {
		return "MyCarDamage [myCarDamageId=" + myCarDamageId + ", name=" + name + ", tel=" + tel + ", carTypeId="
				+ carTypeId + ", carType=" + carType + ", carNumber=" + carNumber + ", price=" + price
				+ ", myCarDamageDetailsInfo=" + myCarDamageDetailsInfo + "]";
	}
	
	
}
