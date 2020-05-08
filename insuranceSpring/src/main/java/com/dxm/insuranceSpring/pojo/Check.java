package com.dxm.insuranceSpring.pojo;


/**
 * 勘察信息实体类
 * @author Administrator
 *
 */
public class Check {
	 private Integer checkId;
	 private Integer reportId;
	 private Integer checkPersonId ;
	 private String checkName;
	 private String	checkAddress;
	 private String checkTime;
	 private String	mydriverName;
	 private String	oppositeDriverName;
	 private String	mydriverTel;
	 private String	oppositeDriverTel;
	 private String	myLicense;
	 private String	oppositeLicense;
	 private String	myVehicleLicense;
	 private String	oppositeVehicleLicense;
	 
	 
	 
	public String getCheckName() {
		return checkName;
	}
	public void setCheckName(String checkName) {
		this.checkName = checkName;
	}
	public Integer getCheckId() {
		return checkId;
	}
	public void setCheckId(Integer checkId) {
		this.checkId = checkId;
	}
	public Integer getReportId() {
		return reportId;
	}
	public void setReportId(Integer reportId) {
		this.reportId = reportId;
	}
	public Integer getCheckPersonId() {
		return checkPersonId;
	}
	public void setCheckPersonId(Integer checkPersonId) {
		this.checkPersonId = checkPersonId;
	}
	public String getCheckAddress() {
		return checkAddress;
	}
	public void setCheckAddress(String checkAddress) {
		this.checkAddress = checkAddress;
	}
	public String getCheckTime() {
		return checkTime;
	}
	public void setCheckTime(String checkTime) {
		this.checkTime = checkTime;
	}
	public String getMydriverName() {
		return mydriverName;
	}
	public void setMydriverName(String mydriverName) {
		this.mydriverName = mydriverName;
	}
	public String getOppositeDriverName() {
		return oppositeDriverName;
	}
	public void setOppositeDriverName(String oppositeDriverName) {
		this.oppositeDriverName = oppositeDriverName;
	}
	public String getMydriverTel() {
		return mydriverTel;
	}
	public void setMydriverTel(String mydriverTel) {
		this.mydriverTel = mydriverTel;
	}
	public String getOppositeDriverTel() {
		return oppositeDriverTel;
	}
	public void setOppositeDriverTel(String oppositeDriverTel) {
		this.oppositeDriverTel = oppositeDriverTel;
	}
	public String getMyLicense() {
		return myLicense;
	}
	public void setMyLicense(String myLicense) {
		this.myLicense = myLicense;
	}
	public String getOppositeLicense() {
		return oppositeLicense;
	}
	public void setOppositeLicense(String oppositeLicense) {
		this.oppositeLicense = oppositeLicense;
	}
	public String getMyVehicleLicense() {
		return myVehicleLicense;
	}
	public void setMyVehicleLicense(String myVehicleLicense) {
		this.myVehicleLicense = myVehicleLicense;
	}
	public String getOppositeVehicleLicense() {
		return oppositeVehicleLicense;
	}
	public void setOppositeVehicleLicense(String oppositeVehicleLicense) {
		this.oppositeVehicleLicense = oppositeVehicleLicense;
	}
	@Override
	public String toString() {
		return "Check [checkId=" + checkId + ", reportId=" + reportId + ", checkPersonId=" + checkPersonId
				+ ", checkName=" + checkName + ", checkAddress=" + checkAddress + ", checkTime=" + checkTime
				+ ", mydriverName=" + mydriverName + ", oppositeDriverName=" + oppositeDriverName + ", mydriverTel="
				+ mydriverTel + ", oppositeDriverTel=" + oppositeDriverTel + ", myLicense=" + myLicense
				+ ", oppositeLicense=" + oppositeLicense + ", myVehicleLicense=" + myVehicleLicense
				+ ", oppositeVehicleLicense=" + oppositeVehicleLicense + "]";
	}
	
	
	
}
