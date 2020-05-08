package com.dxm.insuranceSpring.utils;

import org.apache.ibatis.jdbc.SQL;

import com.dxm.insuranceSpring.pojo.Case;

public class CaseSqlUtils {
	//方法中的关键字区分大小写 SQL WHERE SELECT
	//该方法会根据传递过来的map中的参数内容,动态构建Sql语句
	/**
	 * 动态查询案件信息
	 * @param param
	 * @return
	 */
	public String selectWithParamSql(final Case param) {
		StringBuffer sql = new StringBuffer("select * from t_case where 1=1");
		if(param.getCaseId()!=null && param.getCaseId()>0) {
			sql.append(" and caseId="+param.getCaseId());
		}
		if(param.getReportId()!=null && param.getReportId()>0) {
			sql.append(" and reportId="+param.getReportId());
		}
		if(param.getReportReason()!=null && !"".equals(param.getReportReason())) {
			sql.append(" and reportReason LIKE '%"+param.getReportReason()+"%'");
		}
		if(param.getAddress()!=null && !"".equals(param.getAddress())) {
			sql.append(" and address LIKE '%"+param.getAddress()+"%'");
		}
		if(param.getJieanId()!=null && param.getJieanId()>0) {
			sql.append(" and jieanId="+param.getJieanId());
		}
		if(param.getCheckId()!=null && param.getCheckId()>0) {
			sql.append(" and checkId="+param.getCheckId());
		}
		if(param.getAssessmentId()!=null && param.getAssessmentId()>0) {
			sql.append(" and assessmentId="+param.getAssessmentId());
		}
		if(param.getNuclearDamageId()!=null && param.getNuclearDamageId()>0) {
			sql.append(" and nuclearDamageId="+param.getNuclearDamageId());
		}
		if(param.getSettlementId()!=null && param.getSettlementId()>0) {
			sql.append(" and settlementId="+param.getSettlementId());
		}
		if(param.getSettleId()!=null && param.getSettleId()>0) {
			sql.append(" and settleId="+param.getSettleId());
		}
		if(param.getCaseStatus()!=null && param.getCaseStatus()>0) {
			sql.append(" and caseStatus="+param.getCaseStatus());
		}
		//System.out.println("sql:"+sql.toString());
		return sql.toString();
	}
	/**
	 * 动态条件查询Sql分页
	 * @param param
	 * @return
	 */
	public String selectWithParamCountSql(final Case param) {
		StringBuffer sql = new StringBuffer("select count(1) from t_case where 1=1");
		if(param.getCaseId()!=null && param.getCaseId()>0) {
			sql.append(" and caseId="+param.getCaseId());
		}
		if(param.getReportId()!=null && param.getReportId()>0) {
			sql.append(" and reportId="+param.getReportId());
		}
		if(param.getReportReason()!=null && !"".equals(param.getReportReason())) {
			sql.append(" and reportReason LIKE '%"+param.getReportReason()+"%'");
		}
		if(param.getAddress()!=null && !"".equals(param.getAddress())) {
			sql.append(" and address LIKE '%"+param.getAddress()+"%'");
		}
		if(param.getJieanId()!=null && param.getJieanId()>0) {
			sql.append(" and jieanId="+param.getJieanId());
		}
		if(param.getCheckId()!=null && param.getCheckId()>0) {
			sql.append(" and checkId="+param.getCheckId());
		}
		if(param.getAssessmentId()!=null && param.getAssessmentId()>0) {
			sql.append(" and assessmentId="+param.getAssessmentId());
		}
		if(param.getNuclearDamageId()!=null && param.getNuclearDamageId()>0) {
			sql.append(" and nuclearDamageId="+param.getNuclearDamageId());
		}
		if(param.getSettlementId()!=null && param.getSettlementId()>0) {
			sql.append(" and settlementId="+param.getSettlementId());
		}
		if(param.getSettleId()!=null && param.getSettleId()>0) {
			sql.append(" and settleId="+param.getSettleId());
		}
		if(param.getCaseStatus()!=null && param.getCaseStatus()>0) {
			sql.append(" and caseStatus="+param.getCaseStatus());
		}
		//System.out.println("sql:"+sql.toString());
		return sql.toString();
	}
	/**
	 * 动态修改Case
	 * @param param
	 * @return
	 */
	public String updateCase(final Case param) {
		return new SQL() {
			{
				UPDATE("t_case");
				if(param.getCaseId()!=null && param.getCaseId()>0) {
					SET("caseId=#{caseId}");
				}
				if(param.getReportId()!=null && param.getReportId()>0) {
					SET("reportId=#{reportId}");
				}
				if(param.getReportReason()!=null) {
					SET("reportReason=#{reportReason}");
				}
				if(param.getAddress()!=null) {
					SET("address=#{address}");
				}
				if(param.getJieanId()!=null&& param.getJieanId()>0) {
					SET("jieanId=#{jieanId}");
				}
				if(param.getCheckId()!=null&& param.getCheckId()>0) {
					SET("checkId=#{checkId}");
				}
				if(param.getAssessmentId()!=null&& param.getAssessmentId()>0) {
					SET("assessmentId=#{assessmentId}");
				}
				if(param.getNuclearDamageId()!=null&& param.getNuclearDamageId()>0) {
					SET("nuclearDamageId=#{nuclearDamageId}");
				}
				if(param.getSettlementId()!=null&& param.getSettlementId()>0) {
					SET("settlementId=#{settlementId}");
				}
				if(param.getSettleId()!=null&& param.getSettleId()>0) {
					SET("settleId=#{settleId}");
				}
				if(param.getCaseStatus()!=null&& param.getCaseStatus()>0) {
					SET("caseStatus=#{caseStatus}");
				}
				WHERE("caseId=#{caseId}");
			}
		}.toString();
	}
	
}
