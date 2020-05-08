package com.dxm.insuranceSpring.dao;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.dxm.insuranceSpring.pojo.SettleClaim;

public interface SettleClaimDao {
	
	//添加理赔信息
	@Insert("insert t_SettleClaim values(null,#{caseId},#{nuclearDamageId},#{settleclaimPrice},null,0,#{username},#{userId})")
	public Integer AddSettleClaim(SettleClaim sc);
	
	//修改理赔信息
	
	@Update("update t_SettleClaim set settleClaimTime=now(),settleClaimstatus=1 where caseId=#{caseId} ")
	public Integer updateSettleClaim(Integer caseId);
	
	//查看理赔信息
	@Select("select * from  t_SettleClaim ")
	public List<SettleClaim> querySettleClaim();
	
	//根据理赔状态查看理赔信息
	@Select("select * from t_SettleClaim where settleClaimstatus=#{settleClaimstatus}")
	public List<SettleClaim> querySettleClaimByStatus(Integer settleClaimStatus);
	
	//根据案件编号查询理赔信息
	@Select("select * from t_SettleClaim where caseId = #{caseId}")
	public List<SettleClaim> querySettleClaimBycaseId(Integer caseId);
	
	
	//根据理赔编号查询理赔信息
	@Select("select * from t_SettleClaim where userId = #{userId}")
	public List<SettleClaim> querySettleClaimById(Integer userId);
	
	//根据案件编号删除理赔
	@Delete("delete  from t_SettleClaim where caseId=#{caseId}")
	public Integer daleteSettleClaimBycaseId(Integer caseId);

	
}