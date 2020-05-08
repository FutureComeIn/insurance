package com.dxm.insuranceSpring.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.dxm.insuranceSpring.pojo.NuclearDamage;

public interface NuclearDamageDao {
	//添加核损
		@Insert("insert  into t_NuclearDamage values (#{nuclearDamageId},#{assessmentId},#{nuclearDamageTime},#{UserId},#{UserName},#{nuclearDamageStatus})")
		public Integer addNuclearDamage(NuclearDamage ncd);
		
		//查看核损案件
		@Select("select * from t_nucleardamage where userId=#{UserId}")
		public List<NuclearDamage> queryNuclearDamage(Integer UserId);
		
	
	  //根据核损状态查看核损案件
		@Select("select * from t_NuclearDamage where nuclearDamageStatus=#{nuclearDamageStatus}")
		public List<NuclearDamage> queryNuclearDamageByStatus(String nuclearDamageStatus);
		
		//修改核损信息
		@Update("update t_nucleardamage set nucleardamagetime=now(),nuclearDamageStatus=4 where nuclearDamageId=#{NuclearDamageid} ")
		public Integer updateNuclearDamageStatus(Integer NuclearDamageid);
		
		//根据案件id删除核损信息
		@Delete("delete  from t_nuclearDamage where nuclearDamageId=#{nuclearDamageId}")
		public Integer deleteNuclearDamageBycaseId(Integer nuclearDamageId);
		
		//根据核损id查询 核损讯息
		@Select("select * from t_NuclearDamage where nuclearDamageId=#{nuclearDamageId}")
		public List<NuclearDamage> queryNuclearDamageByNuclearDamageId(Integer nuclearDamageId);
		
		
}


