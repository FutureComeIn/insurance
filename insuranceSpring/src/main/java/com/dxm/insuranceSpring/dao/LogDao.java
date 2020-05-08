package com.dxm.insuranceSpring.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.SelectProvider;
import org.apache.ibatis.session.RowBounds;
import org.springframework.stereotype.Service;

import com.dxm.insuranceSpring.pojo.Log;
import com.dxm.insuranceSpring.utils.SqlUtils;

@Service
public interface LogDao {
	
	@Insert("insert into t_log values(0,#{logName},#{logContent},#{logTime},#{consumeTime})")
	public Integer insertLog(Log log);
	
	@SelectProvider(type=SqlUtils.class,method="selectCountLog")
	public Integer countLog(Log log);
	@SelectProvider(type=SqlUtils.class,method="selectLog")
	public List<Log> selectLog(RowBounds rb,Log log);
	
	@Delete("delete from t_log where logId in(${logId})")
	public Integer deleteLog(@Param("logId")String logId);
}
