package com.dxm.insuranceSpring.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.apache.ibatis.session.RowBounds;

import com.dxm.insuranceSpring.pojo.CarType;
import com.dxm.insuranceSpring.pojo.Data;

/**
 * 资料表
 * @author zf
 *
 */
public interface DataDao {
	
	@Update("update t_data set  specificList=#{specificList},specificInvoice=#{specificInvoice},remark=#{remark} where dataId=#{dataId}")
	public Integer updateData(Data dt);
	
	@Insert("insert into t_data values(#{dataId},#{specificList},#{specificInvoice},#{remark})")
	public Integer addData(Data data);
	
	
	
	@Delete("delete from t_data where dataId=#{dataId}")
	public Integer deleteData(Integer id);
	
	@Select("select count(1) from t_data")
	public Integer countLisuanInfo();
	
	@Select("select * from t_data")
	public List<Data> queryData();
	@Select("select * from t_data")
	public List<Data> queryLisuanInfo(RowBounds row);
	@Select("select * from t_data where dataId=#{dataId}")
	public List<Data> queryDataById(Integer id);
	
	
}
