package com.dxm.insuranceSpring.dao;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Update;

import com.dxm.insuranceSpring.pojo.MyCarDamage;

/**
 * 我方车损dao
 * @author 王威
 *
 */
public interface MyCarDamageDao {
	
	/**
	 * 添加我方车损信息
	 * @param mcd
	 * @return
	 */
	@Insert("insert into t_myCarDamage values(#{myCarDamageId},#{name},#{tel},#{carTypeId},#{carType},#{carNumber},#{price})")
	public Integer addMyCarDamage(MyCarDamage mcd);
	
	/**
	 * 更新我方车损总金额
	 * @param mcd
	 * @return
	 */
	@Update("update t_myCarDamage set price=#{price} where myCarDamageId=#{myCarDamageId}")
	public Integer updateMyCarDamagePrice(MyCarDamage mcd);
	
	@Delete("delete from t_myCarDamage where myCarDamageId=(select myCarDamageId from t_assessment where assessmentId=#{id})")
	public Integer deleteMyCarDamageByAssessmentId(Integer id);

}
