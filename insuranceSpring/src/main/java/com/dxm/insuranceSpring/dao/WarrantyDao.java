package com.dxm.insuranceSpring.dao;

import java.util.List;

import org.apache.ibatis.annotations.*;
import org.apache.ibatis.session.RowBounds;

import com.dxm.insuranceSpring.pojo.Warranty;
import com.dxm.insuranceSpring.utils.WarrantySqlUtils;

public interface WarrantyDao {
	/**
	 * 查询单条保单
	 * @param warranty_number 保单编号
	 * @return
	 */
	@Select("select * from t_warranty where warrantyId=#{warrantyId}")
	public Warranty queryById(Integer warrantyId);
	

	/**
	 * 修改保单信息
	 * @param info
	 * @return
	 */
	@UpdateProvider(type=WarrantySqlUtils.class,method="updateWarranty")
	public int updateWarranty(Warranty wa);
	
	
	/**
	 * 添加保单信息
	 * @param info
	 * @return
	 */
	@Insert("insert into t_warranty values(0,#{policyholdersId},#{policyholdersName},#{policyholderPhone},#{recognizeeId},#{recognizeeName},#{recognizeeIdCard},#{insuranceBeginTime},#{insuranceEndTime},#{userId},#{username},#{carTypeId},#{carTypeName},#{insurancePrice},#{warrantyPrice},#{signingDate},#{paymentDate},#{sailId},#{driverId},#{engineId})")
	public int addWarranty(Warranty wa);
	
	/**
	 * 更新保单止期
	 * @param insurance_end_date
	 * @return
	 */
	@Update("update t_warranty set insuranceEndTime=#{insuranceEndTime} where warrantyId=#{warrantyId}")
	public int updateDate(@Param("warrantyId")Integer warrantyId,@Param("insuranceEndTime")String insuranceEndTime);
	
	
	/**
	 * 保单查询
	 * @param info 保单编号 投保人 被保人
	 * @return 保单信息
	 */
	@SelectProvider(type=WarrantySqlUtils.class,method="selectWarranty")
	public List<Warranty> queryByInfo(Warranty wa,RowBounds row);
	/**
	 * 保单分页查询
	 * @param row
	 * @return 保单信息
	 */
	@Select("select * from t_warranty")
	public List<Warranty> queryAll(RowBounds row);
	@Select("select count(1) from t_warranty")
	public Integer count();
	/**
	 * 
	 * @param wa
	 * @return
	 */
	@SelectProvider(type=WarrantySqlUtils.class,method="selecCounttWarranty")
	public Integer countByInfo(Warranty wa);
	
	@Select("select * from t_warranty where warrantyId=#{warrantyId}")
	public List<Warranty> queryWarrantyDetilsById(Integer warrantyId);
	
}
