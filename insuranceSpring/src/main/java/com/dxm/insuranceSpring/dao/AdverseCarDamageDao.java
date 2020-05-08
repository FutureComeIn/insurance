package com.dxm.insuranceSpring.dao;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Update;

import com.dxm.insuranceSpring.pojo.AdverseCarDamage;

/**
 * 我方车损dao
 * @author 王威
 *
 */
public interface AdverseCarDamageDao {
	
	/**
	 * 添加对方车损信息
	 * @param mcd
	 * @return
	 */
	@Insert("insert into t_adverseCarDamage values(#{adverseCarDamageId},#{name},#{tel},#{carTypeId},#{carType},#{carNumber},#{price})")
	public Integer addAdverseCarDamage(AdverseCarDamage acd);
	
	/**
	 * 更新对方车损总金额
	 * @param mcd
	 * @return
	 */
	@Update("update t_adverseCarDamage set price=#{price} where adverseCarDamageId=#{adverseCarDamageId}")
	public Integer updateAdverseCarDamagePrice(AdverseCarDamage acd);

	@Delete("delete from t_adverseCarDamage where adverseCarDamageId=(select adverseCarDamageId from t_assessment where assessmentId=#{id})")
	public Integer deleteAdverseCarDamageByAssessmentId(Integer id);
}
