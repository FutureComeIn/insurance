package com.dxm.insuranceSpring.dao;

import org.apache.ibatis.annotations.Select;

public interface UtilsDao {
	/**
	 * 查询上一次自动增长编号
	 * @return
	 */
	@Select("SELECT LAST_INSERT_ID()")
	public Integer queryLastInertId();
}
