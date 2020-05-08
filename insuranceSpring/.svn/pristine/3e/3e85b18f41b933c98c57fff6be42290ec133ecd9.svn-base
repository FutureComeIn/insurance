package com.dxm.insuranceSpring.utils;

import org.apache.ibatis.jdbc.SQL;

import com.dxm.insuranceSpring.pojo.Report;
import com.dxm.insuranceSpring.pojo.Warranty;
/**
 * 报案信息
 * @author 熊珍
 *
 */
public class ReportSqlUtils {	
	/**
	 * 根据报案编号修改报案信息
	 * @param param
	 * @return
	 */
	public String updateReport(final Report param){
		return new SQL(){
			{
				UPDATE("t_report");
				if(param.getWarrantyId()!=null&& param.getWarrantyId()>0) {
					SET("warrantyId=#{warrantyId}");
				}
				if(param.getReportPersonName()!=null) {
					SET("reportPersonName=#{reportPersonName}");
				}
				if(param.getReporPersontPhone()!=null) {
					SET("reporPersontPhone=#{reporPersontPhone}");
				}
				if(param.getReportTime()!=null) {
					SET("reportTime=#{reportTime}");
				}
				if(param.getReportReason()!=null) {
					SET("reportReason=#{reportReason}");
				}
				if(param.getProvince()!=null) {
					SET("province=#{province}");
				}
				if(param.getCity()!=null) {
					SET("city=#{city}");
				}
				if(param.getArea()!=null) {
					SET("area=#{area}");
				}
				if(param.getRoad()!=null) {
					SET("road=#{road}");
				}
				if(param.getRoad_direction()!=null) {
					SET("road_direction=#{road_direction}");
				}
				if(param.getUserId()!=null&& param.getUserId()>0) {
					SET("road_direction=#{road_direction}");
				}
				if(param.getUserName()!=null) {
					SET("userName=#{userName}");
				}
				if(param.getCaseStatus()!=null&& param.getCaseStatus()>0) {
					SET("caseStatus=#{caseStatus}");
				}
				WHERE("reportId=#{reportId}");
			}
		}.toString();
	}
	
	
	/**
	 * 动态查询保单信息
	 * @param param
	 * @return
	 */
	public String selectWarrantySql(final Warranty param) {
		StringBuffer sql = new StringBuffer("select * from t_warranty where 1=1");
		if(param.getWarrantyId()!=null && param.getWarrantyId()>0) {
			sql.append(" and warrantyId="+param.getWarrantyId());
		}
		if(param.getSailId()!=null && !"".equals(param.getSailId())) {
			sql.append(" and sailId LIKE '%"+param.getSailId()+"%'");
		}
		if(param.getRecognizeeIdCard()!=null && !"".equals(param.getRecognizeeIdCard())) {
			sql.append(" and recognizeeIdCard LIKE '%"+param.getRecognizeeIdCard()+"%'");
		}
		if(param.getEngineId()!=null && !"".equals(param.getEngineId())) {
			sql.append(" and engineId LIKE '%"+param.getEngineId()+"%'");
		}
		
//		System.out.println("sql:"+sql.toString());
		return sql.toString();
	}
	
	/**
	 * 动态条件查询Sql分页
	 * @param param
	 * @return
	 */
	public String selectWarrantyCountSql(final Warranty param) {
		StringBuffer sql = new StringBuffer("select count(1) from t_warranty where 1=1");
		if(param.getWarrantyId()!=null && param.getWarrantyId()>0) {
			sql.append(" and warrantyId="+param.getWarrantyId());
		}
		if(param.getSailId()!=null && !"".equals(param.getSailId())) {
			sql.append(" and sailId LIKE '%"+param.getSailId()+"%'");
		}
		if(param.getRecognizeeIdCard()!=null && !"".equals(param.getRecognizeeIdCard())) {
			sql.append(" and recognizeeIdCard LIKE '%"+param.getRecognizeeIdCard()+"%'");
		}
		if(param.getEngineId()!=null && !"".equals(param.getEngineId())) {
			sql.append(" and engineId LIKE '%"+param.getEngineId()+"%'");
		}
		//System.out.println("sql:"+sql.toString());
		return sql.toString();
	}
	
	
	
	/**
	 * 动态查询报案信息
	 * @param param
	 * @return
	 */
	public String selectReportSql(final Report param) {
		StringBuffer sql = new StringBuffer("select * from t_report where 1=1");
		if(param.getReportId()!=null && param.getReportId()>0) {
			sql.append(" and reportId="+param.getReportId());
		}
		if(param.getWarrantyId()!=null && param.getWarrantyId()>0) {
			sql.append(" and warrantyId="+param.getWarrantyId());
		}
		if(param.getReportPersonName()!=null && !"".equals(param.getReportPersonName())) {
			sql.append(" and reportPersonName LIKE '%"+param.getReportPersonName()+"%'");
		}
		if(param.getReporPersontPhone()!=null && !"".equals(param.getReporPersontPhone())) {
			sql.append(" and reporPersontPhone LIKE '%"+param.getReporPersontPhone()+"%'");
		}
		
//		System.out.println("sql:"+sql.toString());
		return sql.toString();
	}
	
	/**
	 * 动态条件查询报案信息Sql分页
	 * @param param
	 * @return
	 */
	public String selectReportCountSql(final Report param) {
		StringBuffer sql = new StringBuffer("select count(1) from t_report where 1=1");
		if(param.getReportId()!=null && param.getReportId()>0) {
			sql.append(" and reportId="+param.getReportId());
		}
		if(param.getWarrantyId()!=null && param.getWarrantyId()>0) {
			sql.append(" and warrantyId="+param.getWarrantyId());
		}
		if(param.getReportPersonName()!=null && !"".equals(param.getReportPersonName())) {
			sql.append(" and reportPersonName LIKE '%"+param.getReportPersonName()+"%'");
		}
		if(param.getReporPersontPhone()!=null && !"".equals(param.getReporPersontPhone())) {
			sql.append(" and reporPersontPhone LIKE '%"+param.getReporPersontPhone()+"%'");
		}
		//System.out.println("sql:"+sql.toString());
		return sql.toString();
	}
	
	
	/**
	 * 调度管理查询（未指派案件查询）
	 * @param param
	 * @return
	 */
	public String selectUnHandleReportSql(final Report param) {
		StringBuffer sql = new StringBuffer("select * from t_report where caseStatus=0 and 1=1");
		if(param.getReportId()!=null && param.getReportId()>0) {
			sql.append(" and reportId="+param.getReportId());
		}
		if(param.getWarrantyId()!=null && param.getWarrantyId()>0) {
			sql.append(" and warrantyId="+param.getWarrantyId());
		}
		if(param.getReportPersonName()!=null && !"".equals(param.getReportPersonName())) {
			sql.append(" and reportPersonName LIKE '%"+param.getReportPersonName()+"%'");
		}
		if(param.getReporPersontPhone()!=null && !"".equals(param.getReporPersontPhone())) {
			sql.append(" and reporPersontPhone LIKE '%"+param.getReporPersontPhone()+"%'");
		}
		
//		System.out.println("sql:"+sql.toString());
		return sql.toString();
	}
	
	/**
	 * 未指派案件查询Sql分页
	 * @param param
	 * @return
	 */
	public String selectUnHandleReportCountSql(final Report param) {
		StringBuffer sql = new StringBuffer("select count(1) from t_report where caseStatus=0 and 1=1");
		if(param.getReportId()!=null && param.getReportId()>0) {
			sql.append(" and reportId="+param.getReportId());
		}
		if(param.getWarrantyId()!=null && param.getWarrantyId()>0) {
			sql.append(" and warrantyId="+param.getWarrantyId());
		}
		if(param.getReportPersonName()!=null && !"".equals(param.getReportPersonName())) {
			sql.append(" and reportPersonName LIKE '%"+param.getReportPersonName()+"%'");
		}
		if(param.getReporPersontPhone()!=null && !"".equals(param.getReporPersontPhone())) {
			sql.append(" and reporPersontPhone LIKE '%"+param.getReporPersontPhone()+"%'");
		}
		//System.out.println("sql:"+sql.toString());
		return sql.toString();
	}
	
	/**
	 * 未勘察案件查询
	 * @param param
	 * @return
	 */
	public String selectHandleReportSql(final Report param) {
		StringBuffer sql = new StringBuffer("select * from t_report where caseStatus=1 and 1=1");
		if(param.getReportId()!=null && param.getReportId()>0) {
			sql.append(" and reportId="+param.getReportId());
		}
		if(param.getWarrantyId()!=null && param.getWarrantyId()>0) {
			sql.append(" and warrantyId="+param.getWarrantyId());
		}
		if(param.getReportPersonName()!=null && !"".equals(param.getReportPersonName())) {
			sql.append(" and reportPersonName LIKE '%"+param.getReportPersonName()+"%'");
		}
		if(param.getReporPersontPhone()!=null && !"".equals(param.getReporPersontPhone())) {
			sql.append(" and reporPersontPhone LIKE '%"+param.getReporPersontPhone()+"%'");
		}
		//System.out.println("sql:"+sql.toString());
		return sql.toString();
	}
	
	/**
	 * 未勘察案件查询查询Sql分页
	 * @param param
	 * @return
	 */
	public String selectHandleReportCountSql(final Report param) {
		StringBuffer sql = new StringBuffer("select count(1) from t_report where caseStatus=1 and  1=1");
		if(param.getReportId()!=null && param.getReportId()>0) {
			sql.append(" and reportId="+param.getReportId());
		}
		if(param.getWarrantyId()!=null && param.getWarrantyId()>0) {
			sql.append(" and warrantyId="+param.getWarrantyId());
		}
		if(param.getReportPersonName()!=null && !"".equals(param.getReportPersonName())) {
			sql.append(" and reportPersonName LIKE '%"+param.getReportPersonName()+"%'");
		}
		if(param.getReporPersontPhone()!=null && !"".equals(param.getReporPersontPhone())) {
			sql.append(" and reporPersontPhone LIKE '%"+param.getReporPersontPhone()+"%'");
		}
		//System.out.println("sqlcount:"+sql.toString());
		return sql.toString();
	}
}
