package com.dxm.insuranceSpring.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.apache.ibatis.annotations.UpdateProvider;

import com.dxm.insuranceSpring.pojo.AdverseCarDamageDetails;
import com.dxm.insuranceSpring.sqlutils.CarLossSqlUtils;

/**
 * 对方车损明细
 * @author 王威
 *
 */

public interface AdverseCarDamageDetailsDao {
	/**
	 * 添加对方车损详情
	 * @param acdd
	 * @return
	 */
	@Insert("insert into t_adverseCarDamageDetails values(#{adverseCarDamageDetailsId},#{adverseCarDamageId},#{damagePartId},#{damagePartName},#{amount},#{price},#{damageExtend},#{damageImg},#{place},#{remark})")
	public Integer addAdverseCarDamageDetails(AdverseCarDamageDetails acdd); 
	
	/**
	 * 根据对方车损信息查询对方车损详情
	 * @param id
	 * @return
	 */
	@Select("select * from t_adverseCarDamageDetails where adverseCarDamageId=#{id}")
	public List<AdverseCarDamageDetails> queryAdverseCarDamageDetailsById(Integer id);
	
	/**
	 * 更新对方车损详细信息
	 * @param acdd
	 * @return
	 */
	@UpdateProvider(type=CarLossSqlUtils.class,method="updateAdverseCarDamageDetails")
	public Integer updateAdverseCarDamageDetails(AdverseCarDamageDetails acdd); 
	
	/**
	 * 根据对方车损详情编号删除对方车损详细信息
	 * @param id
	 * @return
	 */
	@Delete("delete from t_adverseCarDamageDetails where adverseCarDamageDetailsId=#{id}")
	public Integer deleteAdverseCarDamageDetailsById(Integer id);
	
	@Delete("delete from t_adverseCarDamageDetails where adverseCarDamageId in (select adverseCarDamageId from t_assessment where assessmentId=#{id})")
	public Integer deleteAdverseCarDamageDetailsByAssessmentId(Integer id);
}
