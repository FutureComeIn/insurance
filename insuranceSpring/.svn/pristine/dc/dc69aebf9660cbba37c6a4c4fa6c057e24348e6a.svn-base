package com.dxm.insuranceSpring.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.apache.ibatis.session.RowBounds;

import com.dxm.insuranceSpring.pojo.CarType;
import com.dxm.insuranceSpring.pojo.InsuranceType;
import com.dxm.insuranceSpring.pojo.Part;


public interface InsuranceTypeDao {
	@Insert("insert into t_insurancetype values(#{insuranceTypeId},#{insuranceTypeName},#{insuranceTerm},#{insuranceTypeRemark},#{insuranceTypeSize},#{insuranceTypePrice})")
	public Integer addInsuranceType(InsuranceType data);
	
	@Update("update t_insurancetype set  insuranceTypeName=#{insuranceTypeName},insuranceTerm=#{insuranceTerm},insuranceTypeRemark=#{insuranceTypeRemark},insuranceTypeSize=#{insuranceTypeSize},insuranceTypePrice=#{insuranceTypePrice} where insuranceTypeId=#{insuranceTypeId}")
    public Integer updateInsuranceType(InsuranceType sp);
	
	@Delete("delete from t_insurancetype where insuranceTypeId=#{insuranceTypeId}")
	public Integer deleteInsuranceType(Integer insuranceTypeId);
	
	@Select("select count(1) from t_insurancetype")
	public Integer countInsuranceType();
	
	@Select("select * from t_insurancetype")
	public List<InsuranceType> queryAllInsuranceType(RowBounds row);
	
	@Select("select * from t_insurancetype")
	public List<InsuranceType> queryInsuranceType();
	
	
	
	//根据案件编号编号查询保单编号
	@Select("select s.insuranceTypeId,s.insuranceTypeName,s.insuranceTerm,s.insuranceTypeRemark,s.insuranceTypeSize from t_case c LEFT JOIN t_report r on c.reportId = r.reportId LEFT JOIN  t_warrantyinsurancetype w on w.warrantyId =r.warrantyId LEFT JOIN \r\n" + 
			"t_insurancetype s on s.insuranceTypeId = w.insuranceTypeId  where c.caseId=#{c.caseId};")
	public List<InsuranceType> queryInsuranceBycaseId(Integer caseId);
	
	@Select("select * from t_insurancetype where insuranceTypeId=#{insuranceTypeId}")
	public List<InsuranceType> queryInsuranceTypeById(Integer insuranceTypeId);
}
