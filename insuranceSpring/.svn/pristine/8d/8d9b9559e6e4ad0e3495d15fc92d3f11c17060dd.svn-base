package com.dxm.insuranceSpring.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.apache.ibatis.session.RowBounds;
import org.springframework.stereotype.Service;

import com.dxm.insuranceSpring.pojo.Right;

@Service
public interface RightDao {
	
	@Select("select count(*) from t_right")
	public Integer queryCount();
	@Select("select *from t_right")  //分页
	public List<Right> queryRights(RowBounds rb);
	@Select("select *from t_right")  //不分页
	public List<Right> selectRights();
	
	
	//修改权限--先查询
	@Select("select *from t_right where rightId=#{rightId}")
	public Right selectDetail(Integer rightId);
	@Update("update t_right set rightname=#{rightName},parentId=#{parentId} where rightid=#{rightId}")
	public Integer updateRight(Right right);
	
	@Insert("insert into t_right values(0,#{rightName},#{parentId})")
	public Integer insertRight(Right right);
	
	@Delete("delete from t_right where rightid=#{rightid}")
	public Integer deleteRight(Integer rightid);
	
	
}
