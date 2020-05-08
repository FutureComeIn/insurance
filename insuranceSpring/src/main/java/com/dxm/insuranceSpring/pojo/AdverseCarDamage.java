package com.dxm.insuranceSpring.pojo;

import java.util.Set;

public class AdverseCarDamage {
	private Integer adverseCarDamageId;//对方车损编号
	private String name;//对方姓名
	private String tel;//联系方式
	private Integer carTypeId;//车辆类型编号
	private String carType;//车辆类型
	private String carNumber;//车牌号
	private Integer price;//价格
	private Set<AdverseCarDamageDetails> adverseCarDamageDetailsInfo;//对方车损详情
	
	public Set<AdverseCarDamageDetails> getAdverseCarDamageDetailsInfo() {
		return adverseCarDamageDetailsInfo;
	}
	public void setAdverseCarDamageDetailsInfo(Set<AdverseCarDamageDetails> adverseCarDamageDetailsInfo) {
		this.adverseCarDamageDetailsInfo = adverseCarDamageDetailsInfo;
	}
	
	public Integer getAdverseCarDamageId() {
		return adverseCarDamageId;
	}
	public void setAdverseCarDamageId(Integer adverseCarDamageId) {
		this.adverseCarDamageId = adverseCarDamageId;
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
	
	public Integer getprice() {
		return price;
	}
	public void setprice(Integer price) {
		this.price = price;
	}
	public AdverseCarDamage(Integer adverseCarDamageId, String name, String tel, Integer carTypeId, String carType,
			String carNumber, Integer price, Set<AdverseCarDamageDetails> adverseCarDamageDetailsInfo) {
		super();
		this.adverseCarDamageId = adverseCarDamageId;
		this.name = name;
		this.tel = tel;
		this.carTypeId = carTypeId;
		this.carType = carType;
		this.carNumber = carNumber;
		this.price = price;
		this.adverseCarDamageDetailsInfo = adverseCarDamageDetailsInfo;
	}
	public AdverseCarDamage() {
		super();
	}
	@Override
	public String toString() {
		return "AdverseCarDamage [adverseCarDamageId=" + adverseCarDamageId + ", name=" + name + ", tel=" + tel
				+ ", carTypeId=" + carTypeId + ", carType=" + carType + ", carNumber=" + carNumber + ", price="
				+ price + ", adverseCarDamageDetailsInfo=" + adverseCarDamageDetailsInfo + "]";
	}
	
	
}
