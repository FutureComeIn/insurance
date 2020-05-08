package com.dxm.insuranceSpring.controls;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dxm.insuranceSpring.pojo.Role;
import com.dxm.insuranceSpring.services.IRoleServices;
import com.dxm.insuranceSpring.utils.APIRequest;

@Controller
public class RoleControls {
	@Resource(name="iRoleServicesImpls")
	IRoleServices services;
	
	String message="";
	String path="";
	
	/**
	 * 查询角色--数据接口开发
	 * @return
	 */
	@RequestMapping(value="showRoles.do",produces="application/json;charset=utf-8")
	@ResponseBody
	public String showRoles() {
		return services.queryRoles().toString();
	}
	
	/**
	 * 查询角色--正常web开发
	 * @return
	 */
	@RequestMapping("/selectRoles.do")
	public String selectRoles(HttpServletRequest request,Integer indexPage) {
		if(indexPage==null) {
			indexPage=1;
		}
		HashMap<String,Object> hm=services.selectRoles(indexPage);
		request.setAttribute("rlist",hm.get("rlist"));
		request.setAttribute("page",hm.get("page"));
		return "src/page/prospect_lyt/quanxian";
	}
	/**
	 * 添加角色
	 * @param request
	 * @param roleName
	 * @return
	 */
	@RequestMapping("/addRole.do")
	public String addRole(HttpServletRequest request,String roleName) {
		Integer count=services.addRole(roleName);
		if(count>0) {
			message="角色添加成功...";
			path="selectRoles.do";
		}else {
			message="角色添加失败";
		}
		request.setAttribute("message", message);
		request.setAttribute("path", path);
		return "src/page/common/success";
	}
	/**
	 * 删除角色
	 * @param request
	 * @param rid
	 * @return
	 */
	@RequestMapping("/deleteRole.do")
	public String deleteRole(HttpServletRequest request,Integer rid) {
		Integer count=services.deleteRole(rid);
		if(count>0) {
			message="角色删除成功...";
			path="selectRoles.do";
		}else {
			message="角色删除失败";
		}
		request.setAttribute("message", message);
		request.setAttribute("path", path);
		return "src/page/common/success";
	}
	/**
	 * 显示角色详情
	 * @param request
	 * @param rid
	 * @return
	 */
	@RequestMapping("/showRoleDetail.do")
	public String showRoleDetail(HttpServletRequest request,Integer rid) {
		HashMap<String,Object> hm=services.queryDetail(rid);
		request.setAttribute("role", hm.get("role"));
		request.setAttribute("rights", hm.get("rights"));
		request.setAttribute("unrights", hm.get("unrights"));
		return "src/page/prospect_lyt/roleDetail";
	}
	
	/**
	 * 从角色移除权限
	 * @param rid
	 * @param rightids
	 * @return
	 */
	@RequestMapping(value="/removeRightToRole.do",produces="application/json;charset=utf-8")
	@ResponseBody
	public String removeRightToRole(Integer rid,@RequestParam("rightids[]")Integer[] rightids) {
		APIRequest api=services.removeRightToRole(rid, rightids);
		return api.toString();
	}
	/**
	 * 添加权限到角色
	 * @param rid
	 * @param rightids
	 * @return
	 */
	@RequestMapping(value="/addRightToRole.do",produces="application/json;charset=utf-8")
	@ResponseBody
	public String addRightToRole(Integer rid,@RequestParam("unrightids[]")Integer[] unrightids) {
		APIRequest api=services.addRightToRole(rid, unrightids);
		return api.toString();
	}
	
	@RequestMapping("/updateRole.do")
	public String updateRole(HttpServletRequest request,Role role) {
		System.out.println("role="+role);
		Integer count=services.updateRole(role);
		if(count>0) {
			message="角色更新成功...";
			path="showRoleDetail.do?rid="+role.getRoleId();
		}else {
			message="角色更新失败";
		}
		request.setAttribute("message", message);
		request.setAttribute("path", path);
		return "src/page/common/success";
	}
	
}
