package com.dxm.insuranceSpring.sqlutils;

import org.apache.ibatis.jdbc.SQL;

import com.dxm.insuranceSpring.pojo.AdverseCarDamageDetails;
import com.dxm.insuranceSpring.pojo.Assessment;
import com.dxm.insuranceSpring.pojo.MyCarDamageDetails;

public class CarLossSqlUtils {
	//方法中的关键字区分大小写 SQL WHERE SELECT
	//该方法会根据传递过来的map中的参数内容,动态构建Sql语句
	
	/**
	 * 动态修改MyCarDamageDetails
	 * @param param
	 * @return
	 */
	public String updateMyCarDamageDetails(final MyCarDamageDetails param) {
		return new SQL() {
			{
				UPDATE("t_mycardamagedetails");
				if(param.getAmount()!=null) {
					SET("amount=#{amount}");
				}
				if(param.getPrice()!=null) {
					SET("price=#{price}");
				}
				WHERE("myCarDamageDetailsId=#{myCarDamageDetailsId}");
			}
		}.toString();
	}
	
	public String updateAdverseCarDamageDetails(final AdverseCarDamageDetails param) {
		return new SQL() {
			{
				UPDATE("t_adversecardamagedetails");
				if(param.getAmount()!=null) {
					SET("amount=#{amount}");
				}
				if(param.getPrice()!=null) {
					SET("price=#{price}");
				}
				WHERE("adverseCarDamageDetailsId=#{adverseCarDamageDetailsId}");
			}
		}.toString();
	}
	/**
	 * 根据条件修改定损金额
	 * @param param
	 * @return
	 */
	public String updateAssessmentPrice(final Assessment param) {
		StringBuffer sql = new StringBuffer("update t_assessment ass INNER JOIN ");
		sql.append("(select a.assessmentId aid,ad.price+m.price tprice from t_assessment a ");
		sql.append("INNER JOIN t_adversecardamage ad on a.adverseCarDamageId=ad.adverseCarDamageId ");
		sql.append("INNER JOIN t_mycardamage m on a.myCarDamageId=m.myCarDamageId ");
		if(param.getMyCarDamageId()!=null) {
			sql.append("where a.myCarDamageId="+param.getMyCarDamageId());
		}
		if(param.getAdverseCarDamageId()!=null) {
			sql.append("where a.adverseCarDamageId="+param.getAdverseCarDamageId());
		}
		sql.append(")d on ass.assessmentId=d.aid ");
		sql.append("set totalPrice=d.tprice");
		System.out.println(sql);
		return sql.toString();
	}
	
	//方法中的关键字区分大小写 SQL WHERE SELECT
	//该方法会根据传递过来的map中的参数内容,动态构建Sql语句
	/**
	 * 动态查询定损信息
	 * @param param
	 * @return
	 */
	public String selectAssessmentWithParamSql(final Assessment param) {
		StringBuffer sql = new StringBuffer("select * from t_assessment where 1=1");
		if(param.getAssessmentId()!=null && param.getAssessmentId()>0) {
			sql.append(" and assessmentId="+param.getAssessmentId());
		}
		if(param.getCaseId()!=null && param.getCaseId()>0) {
			sql.append(" and caseId="+param.getCaseId());
		}
		if(param.getMyCarDamageId()!=null && param.getMyCarDamageId()>0) {
			sql.append(" and myCarDamageId="+param.getMyCarDamageId());
		}
		if(param.getAdverseCarDamageId()!=null && param.getAdverseCarDamageId()>0) {
			sql.append(" and adverseCarDamageId="+param.getAdverseCarDamageId());
		}
		if(param.getAssessmentPerson()!=null && !"".equals(param.getAssessmentPerson())) {
			sql.append(" and assessmentPerson like '%"+param.getAssessmentPerson()+"%'");
		}
		if(param.getUserId()!=null && param.getUserId()>0) {
			sql.append(" and userId="+param.getUserId());
		}
		System.out.println("sql:"+sql.toString());
		return sql.toString();
	}
	/**
	 * 动态条件查询Sql分页
	 * @param param
	 * @return
	 */
	public String selectAssessmentCountWithParamSql(final Assessment param) {
		StringBuffer sql = new StringBuffer("select count(1) from t_assessment where 1=1");
		if(param.getAssessmentId()!=null && param.getAssessmentId()>0) {
			sql.append(" and assessmentId="+param.getAssessmentId());
		}
		if(param.getCaseId()!=null && param.getCaseId()>0) {
			sql.append(" and caseId="+param.getCaseId());
		}
		if(param.getMyCarDamageId()!=null && param.getMyCarDamageId()>0) {
			sql.append(" and myCarDamageId="+param.getMyCarDamageId());
		}
		if(param.getAdverseCarDamageId()!=null && param.getAdverseCarDamageId()>0) {
			sql.append(" and adverseCarDamageId="+param.getAdverseCarDamageId());
		}
		if(param.getAssessmentPerson()!=null && !"".equals(param.getAssessmentPerson())) {
			sql.append(" and assessmentPerson like '%"+param.getAssessmentPerson()+"%'");
		}
		if(param.getUserId()!=null && param.getUserId()>0) {
			sql.append(" and userId="+param.getUserId());
		}
	//System.out.println("sql:"+sql.toString());
		return sql.toString();
	}
}
