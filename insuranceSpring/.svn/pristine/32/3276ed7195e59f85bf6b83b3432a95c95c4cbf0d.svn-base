package com.dxm.insuranceSpring.services.impls;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dxm.insuranceSpring.aspectj.Logaspect;
import com.dxm.insuranceSpring.dao.RoleDao;
import com.dxm.insuranceSpring.pojo.Right;
import com.dxm.insuranceSpring.pojo.Role;
import com.dxm.insuranceSpring.services.IRoleServices;
import com.dxm.insuranceSpring.utils.APIRequest;
import com.dxm.insuranceSpring.utils.Pages;

@Service("iRoleServicesImpls")
public class IRoleServicesImpls implements IRoleServices {
	
	@Autowired
	RoleDao rdao;
	APIRequest api=new APIRequest();

	@Override
	@Logaspect(operationName="遍历角色--数据接口开发")
	public APIRequest queryRoles() {
		// TODO 遍历角色--数据接口开发
		List<Role> rlist=rdao.queryRoles();
		APIRequest<Role> api=new APIRequest<Role>();
		if(rlist.size()>0) {
			api.setDatas(rlist);
			api.setResult(true);
		}else {
			api.setResult(false);
		}
		return api;
	}


	@Override
	@Logaspect(operationName="遍历角色--正常web开发")
	public HashMap<String,Object> selectRoles(Integer indexPage) {
		// TODO 遍历角色--正常web开发
		Integer count=rdao.countRoles();
		Pages page=new Pages(count);
		page.setIndexPage(indexPage);
		page.setPageSize(4);
		RowBounds rb=new RowBounds(page.getBeginRow(),page.getPageSize());
		List<Role> rlist=rdao.selectRoles(rb);
		HashMap<String,Object> hm=new HashMap<String,Object>();
		hm.put("rlist", rlist);
		hm.put("page",page);
		return hm;
	}


	@Override
	@Logaspect(operationName="添加角色")
	public Integer addRole(String roleName) {
		// TODO 添加角色
		return rdao.insertRole(roleName);
	}


	@Override
	@Logaspect(operationName="删除角色")
	public Integer deleteRole(Integer rid) {
		// TODO 删除角色
		return rdao.deleteRole(rid);
	}


	@Override
	@Logaspect(operationName="查询角色详情")
	public HashMap<String, Object> queryDetail(Integer roleid) {
		// TODO 查询角色详情
		Role role=rdao.queryRoleByRid(roleid);
		List<Right> rights=rdao.queryHaveRight(roleid);
		List<Right> unrights=rdao.queryUnhaveRight(roleid);
		HashMap<String,Object> hm=new HashMap<String,Object>();
		hm.put("role",role);
		hm.put("rights",rights);
		hm.put("unrights",unrights);
		return hm;
	}


	@Override
	@Logaspect(operationName="添加权限到角色")
	public APIRequest addRightToRole(Integer rid, Integer... rightids) {
		// TODO 添加权限到角色
		Integer count=0;
		for(int i=0;i<rightids.length;i++) {
			count+=rdao.addRightToRole(rid, rightids[i]);
		}
		if(count>0) {
			api.setSingerData(count);
		}
		return api;
	}


	@Override
	@Logaspect(operationName="从角色移除权限")
	public APIRequest removeRightToRole(Integer rid, Integer... rightids) {
		// TODO 从角色移除权限
		StringBuffer bf=new StringBuffer();
		for(int i=0;i<rightids.length;i++) {
			bf.append(rightids[i]);
			if(i<rightids.length-1) {
				bf.append(",");
			}
		}
		if(rdao.deleteRightToRole(rid, bf.toString())>0) {
			api.setSingerData(rightids.length);
		}
		return api;
	}


	@Override
	@Logaspect(operationName="修改角色")
	public Integer updateRole(Role role) {
		// TODO 修改角色
		return rdao.updateRole(role);
	}

}
