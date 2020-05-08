package com.dxm.insuranceSpring.pojo;

public class Policyholders {
	private Integer policyholdersId;	//投保人编号	
	private String policyholdersName;	//投保人姓名	
	private String sex;	                //性别	
	private String cardId;	            //身份证号码	
	private String tel;	                //联系方式	
	private String addressShen;	        //省地址	
	private String addressShi;	        //市地址	
	private String email;	            //邮箱地点	
	public Policyholders() {
		super();
	}
	public Policyholders(Integer policyholdersId, String policyholdersName, String sex, String cardId, String tel,
			String addressShen, String addressShi, String email) {
		super();
		this.policyholdersId = policyholdersId;
		this.policyholdersName = policyholdersName;
		this.sex = sex;
		this.cardId = cardId;
		this.tel = tel;
		this.addressShen = addressShen;
		this.addressShi = addressShi;
		this.email = email;
	}
	public Integer getPolicyholdersId() {
		return policyholdersId;
	}
	public void setPolicyholdersId(Integer policyholdersId) {
		this.policyholdersId = policyholdersId;
	}
	public String getPolicyholdersName() {
		return policyholdersName;
	}
	public void setPolicyholdersName(String policyholdersName) {
		this.policyholdersName = policyholdersName;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getCardId() {
		return cardId;
	}
	public void setCardId(String cardId) {
		this.cardId = cardId;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getAddressShen() {
		return addressShen;
	}
	public void setAddressShen(String addressShen) {
		this.addressShen = addressShen;
	}
	public String getAddressShi() {
		return addressShi;
	}
	public void setAddressShi(String addressShi) {
		this.addressShi = addressShi;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	@Override
	public String toString() {
		return "Policyholders [policyholdersId=" + policyholdersId + ", policyholdersName=" + policyholdersName
				+ ", sex=" + sex + ", cardId=" + cardId + ", tel=" + tel + ", addressShen=" + addressShen
				+ ", addressShi=" + addressShi + ", email=" + email + "]";
	}
	
	

}
