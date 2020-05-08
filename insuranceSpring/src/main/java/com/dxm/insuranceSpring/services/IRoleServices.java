package com.dxm.insuranceSpring.services;

import java.util.HashMap;

import com.dxm.insuranceSpring.pojo.Role;
import com.dxm.insuranceSpring.utils.APIRequest;

public interface IRoleServices {
	
	//遍历角色-数据接口开发
	public APIRequest queryRoles();
	
	//遍历角色-正常web开发
	public HashMap<String,Object> selectRoles(Integer indexPage);
	
	//添加角色
	public Integer addRole(String roleName);
	
	//删除角色
	public Integer deleteRole(Integer rid);
	
	//查询角色详情
	public HashMap<String,Object> queryDetail(Integer roleid);
	
	//修改角色
	public Integer updateRole(Role role);
	
	//添加权限到角色
	public APIRequest addRightToRole(Integer rid,Integer... rightids);
	//从角色移除权限
	public APIRequest removeRightToRole(Integer rid,Integer... rightids);
}
