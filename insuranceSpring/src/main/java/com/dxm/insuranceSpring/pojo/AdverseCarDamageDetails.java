package com.dxm.insuranceSpring.pojo;

public class AdverseCarDamageDetails {
	private Integer adverseCarDamageDetailsId;//	对方车损信息明细编号
	private Integer adverseCarDamageId;//	对方车损编号
	private Integer damagePartId;//	受损零件编号
	private String damagePartName;//	受损零件名称
	private Integer amount;//	车损零件数量
	private Integer price;//	零件标价
	private String damageExtend;//受损程度
	public String getDamageExtend() {
		return damageExtend;
	}
	public void setDamageExtend(String damageExtend) {
		this.damageExtend = damageExtend;
	}
	private String damageImg;//	车损图片
	private String place;//	维修地点
	private String remark;//	备注
	public Integer getAdverseCarDamageDetailsId() {
		return adverseCarDamageDetailsId;
	}
	public void setAdverseCarDamageDetailsId(Integer adverseCarDamageDetailsId) {
		this.adverseCarDamageDetailsId = adverseCarDamageDetailsId;
	}
	public Integer getAdverseCarDamageId() {
		return adverseCarDamageId;
	}
	public void setAdverseCarDamageId(Integer adverseCarDamageId) {
		this.adverseCarDamageId = adverseCarDamageId;
	}
	public Integer getDamagePartId() {
		return damagePartId;
	}
	public void setDamagePartId(Integer damagePartId) {
		this.damagePartId = damagePartId;
	}
	public String getDamagePartName() {
		return damagePartName;
	}
	public void setDamagePartName(String damagePartName) {
		this.damagePartName = damagePartName;
	}
	public Integer getAmount() {
		return amount;
	}
	public void setAmount(Integer amount) {
		this.amount = amount;
	}
	public Integer getPrice() {
		return price;
	}
	public void setPrice(Integer price) {
		this.price = price;
	}
	public String getDamageImg() {
		return damageImg;
	}
	public void setDamageImg(String damageImg) {
		this.damageImg = damageImg;
	}
	public String getPlace() {
		return place;
	}
	public void setPlace(String place) {
		this.place = place;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public AdverseCarDamageDetails(Integer adverseCarDamageDetailsId, Integer adverseCarDamageId, Integer damagePartId,
			String damagePartName, Integer amount, Integer price, String damageImg, String place, String remark) {
		super();
		this.adverseCarDamageDetailsId = adverseCarDamageDetailsId;
		this.adverseCarDamageId = adverseCarDamageId;
		this.damagePartId = damagePartId;
		this.damagePartName = damagePartName;
		this.amount = amount;
		this.price = price;
		this.damageImg = damageImg;
		this.place = place;
		this.remark = remark;
	}
	public AdverseCarDamageDetails() {
		super();
	}
	@Override
	public String toString() {
		return "AdverseCarDamageDetails [adverseCarDamageDetailsId=" + adverseCarDamageDetailsId
				+ ", adverseCarDamageId=" + adverseCarDamageId + ", damagePartId=" + damagePartId + ", damagePartName="
				+ damagePartName + ", amount=" + amount + ", price=" + price + ", damageImg=" + damageImg + ", place="
				+ place + ", remark=" + remark + "]";
	}
	
}
