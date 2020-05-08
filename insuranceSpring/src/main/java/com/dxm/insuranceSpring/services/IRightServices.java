package com.dxm.insuranceSpring.services;

import java.util.HashMap;

import com.dxm.insuranceSpring.pojo.Right;
import com.dxm.insuranceSpring.utils.APIRequest;

public interface IRightServices {
	
	public HashMap<String,Object> queryRight(Integer indexPage);
	
	public Integer insertRight(Right right);
	
	public Integer deleteRight(Integer rightid);
	
	public Integer updateRight(Right right);
	
	public APIRequest<Right> selectDetail(Integer rid);
}
