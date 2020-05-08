package com.dxm.insuranceSpring.pojo;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;

/**
 * 报案信息实体类
 * @author 熊珍
 *
 */
public class Report {
	private Integer reportId;//报案编号
	private Integer warrantyId;//保单编号	
	private String reportPersonName;//报案人姓名	
	private String reporPersontPhone;//报案人电话	
	private String reportTime;//报案时间	
	private String reportReason;//报案原因	
	private String province;//省	
	private String city;//市	
	private String area;//区
	private String road;//路段	
	private String road_direction;//方向	
	private Integer userId;//操作用户编号	
	private String userName; //操作用户
	private Integer caseStatus;//案件状态 0:未指派 1：未勘察 2：已勘察
	
	// 保单和案件
	private Warranty warranty;
		
	
	public Warranty getWarranty() {
			return warranty;
		}
		public void setWarranty(Warranty warranty) {
			this.warranty = warranty;
		}
		
	public Report() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Report(Integer reportId, Integer warrantyId, String reportPersonName, String reporPersontPhone,
			String reportTime, String reportReason, String province, String city, String area, String road,
			String road_direction, Integer userId, String userName, Integer caseStatus, Warranty warranty) {
		super();
		this.reportId = reportId;
		this.warrantyId = warrantyId;
		this.reportPersonName = reportPersonName;
		this.reporPersontPhone = reporPersontPhone;
		this.reportTime = reportTime;
		this.reportReason = reportReason;
		this.province = province;
		this.city = city;
		this.area = area;
		this.road = road;
		this.road_direction = road_direction;
		this.userId = userId;
		this.userName = userName;
		this.caseStatus = caseStatus;
		this.warranty = warranty;
	}
	public Integer getReportId() {
		return reportId;
	}
	public void setReportId(Integer reportId) {
		this.reportId = reportId;
	}
	public Integer getWarrantyId() {
		return warrantyId;
	}
	public void setWarrantyId(Integer warrantyId) {
		this.warrantyId = warrantyId;
	}
	public String getReportPersonName() {
		return reportPersonName;
	}
	public void setReportPersonName(String reportPersonName) {
		this.reportPersonName = reportPersonName;
	}
	public String getReporPersontPhone() {
		return reporPersontPhone;
	}
	public void setReporPersontPhone(String reporPersontPhone) {
		this.reporPersontPhone = reporPersontPhone;
	}
//	@DateTimeFormat(pattern = "yyyy-MM-dd")
//	@JsonFormat(pattern = "yyyy-MM-dd", timezone = "GMT+8")
	public String getReportTime() {
		return reportTime;
	}
	public void setReportTime(String reportTime) {
		this.reportTime = reportTime;
	}
	public String getReportReason() {
		return reportReason;
	}
	public void setReportReason(String reportReason) {
		this.reportReason = reportReason;
	}
	public String getProvince() {
		return province;
	}
	public void setProvince(String province) {
		this.province = province;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	public String getRoad() {
		return road;
	}
	public void setRoad(String road) {
		this.road = road;
	}
	public String getRoad_direction() {
		return road_direction;
	}
	public void setRoad_direction(String road_direction) {
		this.road_direction = road_direction;
	}
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public Integer getCaseStatus() {
		return caseStatus;
	}
	public void setCaseStatus(Integer caseStatus) {
		this.caseStatus = caseStatus;
	}
	@Override
	public String toString() {
		return "Report [reportId=" + reportId + ", warrantyId=" + warrantyId + ", reportPersonName=" + reportPersonName
				+ ", reporPersontPhone=" + reporPersontPhone + ", reportTime=" + reportTime + ", reportReason="
				+ reportReason + ", province=" + province + ", city=" + city + ", area=" + area + ", road=" + road
				+ ", road_direction=" + road_direction + ", userId=" + userId + ", userName=" + userName
				+ ", caseStatus=" + caseStatus + ", warranty=" + warranty + "]";
	}
	
}
