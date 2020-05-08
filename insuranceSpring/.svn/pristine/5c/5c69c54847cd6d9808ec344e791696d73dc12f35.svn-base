package com.dxm.insuranceSpring.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.apache.ibatis.session.RowBounds;

import com.dxm.insuranceSpring.pojo.Data;

public interface lisuanInfoDao {

	@Insert("insert into t_data values(0,#{specificList},#{specificInvoice},#{remark}")

	public Integer addlisuanInfo(Data dt);
	@Update("update t_data set  specificList=#{specificList},specificInvoice=#{specificInvoice},remark=#{remark} where dataId=#{dataId}")
	public Integer updatelisuanInfoByid(Data dt);
	

	

	@Delete("delete from t_data where dataId=#{id}")
	public Integer updatelisuanInfo(Data dt);
	


	@Delete("delete from t_data where dataId=#{id}")

	public Integer deletelisuanInfo(Integer id);
	
	@Select("select count(1) from t_data")
	public Integer countlisuanInfo();
	
	@Select("select * from t_data")
	public List<Data> querylisuanInfo(RowBounds row);
	
	@Select("select * from t_data where dataId=#{id}")
	public List<Data> querylisuanInfoById(Integer id);
	
   
}
