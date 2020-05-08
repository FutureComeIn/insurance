package com.dxm.insuranceSpring.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.apache.ibatis.session.RowBounds;

import com.dxm.insuranceSpring.pojo.Part;

public interface PartDao {
    
	@Insert("insert into t_carpart values(0,#{carTypeId},#{carPartName},#{carPartPrice},#{carPartRemark})")
	public Integer addPart(Part data);
	
	@Update("update t_carpart set  carTypeId=#{carTypeId},carPartName=#{carPartName},carPartPrice=#{carPartPrice},carPartRemark=#{carPartRemark} where carPartId=#{carPartId}")
	public Integer updatePart(Part sp);
	
	@Delete("delete from t_carpart where carPartId=#{carPartId}")
	public Integer deletePart(Integer partId);
	
	@Select("select count(1) from t_carpart")
	public Integer countCarType();
	
	@Select("select * from t_carpart")
	@ResultMap("com.dxm.insuranceSpring.mappers.PartMap.PartBean")
	public List<Part> queryPart(RowBounds row);
	
	@Select("select * from t_carpart where carPartId=#{carPartId}")
	public List<Part> queryPartById(Integer partId);

}
