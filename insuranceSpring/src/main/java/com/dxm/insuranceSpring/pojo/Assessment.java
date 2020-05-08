package com.dxm.insuranceSpring.pojo;


import java.util.Date;

public class Assessment {
	private Integer assessmentId;//	定损编号
	private Integer caseId;//案件编号
	private Integer myCarDamageId;//	我方车损编号
	private Integer adverseCarDamageId;//	对方车损编号
	private String assessmentTime;//	定损时间
	private Integer totalPrice;//	金额合计
	private String remark;//	备注
	private Integer UserId;//	定损人编号
	private String assessmentPerson;//	定损人
	private Integer status;//定损状态
	private MyCarDamage myCarDamageInfo;//我方车损信息
	private AdverseCarDamage adverseCarDamageInfo;//对方车损信息
	
	public Integer getCaseId() {
		return caseId;
	}
	public void setCaseId(Integer caseId) {
		this.caseId = caseId;
	}
	public MyCarDamage getMyCarDamageInfo() {
		return myCarDamageInfo;
	}
	public void setMyCarDamageInfo(MyCarDamage myCarDamageInfo) {
		this.myCarDamageInfo = myCarDamageInfo;
	}
	public AdverseCarDamage getAdverseCarDamageInfo() {
		return adverseCarDamageInfo;
	}
	public void setAdverseCarDamageInfo(AdverseCarDamage adverseCarDamageInfo) {
		this.adverseCarDamageInfo = adverseCarDamageInfo;
	}
	public Integer getAssessmentId() {
		return assessmentId;
	}
	public void setAssessmentId(Integer assessmentId) {
		this.assessmentId = assessmentId;
	}
	public Integer getMyCarDamageId() {
		return myCarDamageId;
	}
	public void setMyCarDamageId(Integer myCarDamageId) {
		this.myCarDamageId = myCarDamageId;
	}
	public Integer getAdverseCarDamageId() {
		return adverseCarDamageId;
	}
	public void setAdverseCarDamageId(Integer adverseCarDamageId) {
		this.adverseCarDamageId = adverseCarDamageId;
	}
	public String getAssessmentTime() {
		return assessmentTime;
	}
	public void setAssessmentTime(String assessmentTime) {
		this.assessmentTime = assessmentTime;
	}
	public Integer getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(Integer totalPrice) {
		this.totalPrice = totalPrice;
	}
	public String getRemark() {
		return remark;
	}
	public Integer getUserId() {
		return UserId;
	}
	public void setUserId(Integer userId) {
		UserId = userId;
	}
	public String getAssessmentPerson() {
		return assessmentPerson;
	}
	public void setAssessmentPerson(String assessmentPerson) {
		this.assessmentPerson = assessmentPerson;
	}
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public Assessment() {
		super();
	}
	public Assessment(Integer assessmentId, Integer caseId, Integer myCarDamageId, Integer adverseCarDamageId,
			String assessmentTime, Integer totalPrice, String remark, Integer userId, String assessmentPerson,
			Integer status, MyCarDamage myCarDamageInfo, AdverseCarDamage adverseCarDamageInfo) {
		super();
		this.assessmentId = assessmentId;
		this.caseId = caseId;
		this.myCarDamageId = myCarDamageId;
		this.adverseCarDamageId = adverseCarDamageId;
		this.assessmentTime = assessmentTime;
		this.totalPrice = totalPrice;
		this.remark = remark;
		UserId = userId;
		this.assessmentPerson = assessmentPerson;
		this.status = status;
		this.myCarDamageInfo = myCarDamageInfo;
		this.adverseCarDamageInfo = adverseCarDamageInfo;
	}
	@Override
	public String toString() {
		return "Assessment [assessmentId=" + assessmentId + ", caseId=" + caseId + ", myCarDamageId=" + myCarDamageId
				+ ", adverseCarDamageId=" + adverseCarDamageId + ", assessmentTime=" + assessmentTime + ", totalPrice="
				+ totalPrice + ", remark=" + remark + ", UserId=" + UserId + ", assessmentPerson=" + assessmentPerson
				+ ", status=" + status + ", myCarDamageInfo=" + myCarDamageInfo + ", adverseCarDamageInfo="
				+ adverseCarDamageInfo + "]";
	}
	
	
}
