package com.dxm.insuranceSpring.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.apache.ibatis.annotations.UpdateProvider;

import com.dxm.insuranceSpring.pojo.MyCarDamageDetails;
import com.dxm.insuranceSpring.sqlutils.CarLossSqlUtils;

/**
 *我方车损明细
 * @author 王威
 *
 */

public interface MyCarDamageDetailsDao {
	/**
	 * 添加我方车损详情
	 * @param acdd
	 * @return
	 */
	@Insert("insert into t_myCarDamageDetails values(#{myCarDamageDetailsId},#{myCarDamageId},#{damagePartId},#{damagePartName},#{amount},#{price},#{damageExtend},#{damageImg},#{place},#{remark})")
	public Integer addMyCarDamageDetails(MyCarDamageDetails mcdd); 
	
	/**
	 * 根据我方车损信息查询我方车损详情
	 * @param id
	 * @return
	 */
	@Select("select * from t_myCarDamageDetails where myCarDamageId=#{id}")
	public List<MyCarDamageDetails> queryMyCarDamageDetailsById(Integer id);
	
	/**
	 * 更新我方车损详细信息
	 * @param acdd
	 * @return
	 */
	@UpdateProvider(type=CarLossSqlUtils.class,method="updateMyCarDamageDetails")
	public Integer updateMyCarDamageDetails(MyCarDamageDetails mcdd); 
	
	/**
	 * 根据我方车损详情编号删除我方车损详细信息
	 * @param id
	 * @return
	 */
	@Delete("delete from t_myCarDamageDetails where myCarDamageDetailsId=#{id}")
	public Integer deleteMyCarDamageDetailsById(Integer id);
	
	@Delete("delete from t_myCarDamageDetails where myCarDamageId in (select myCarDamageId from t_assessment where assessmentId=#{id})")
	public Integer deleteMyCarDamageDetailsByAssessmentId(Integer id);
}
