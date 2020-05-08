package com.dxm.insuranceSpring.controls;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dxm.insuranceSpring.pojo.Right;
import com.dxm.insuranceSpring.services.IRightServices;
import com.dxm.insuranceSpring.utils.APIRequest;

@Controller
public class RightControls {
	@Resource(name="iRightServicesImpls")
	IRightServices service;
	
	String message="";
	String path="";
	
	@RequestMapping("/queryRight.do")
	public String queryRight(HttpServletRequest request,Integer indexPage) {
		if(indexPage==null) {
			indexPage=1;
		}
		HashMap<String,Object> hm=service.queryRight(indexPage);
		request.setAttribute("rlist",hm.get("rlist"));
		request.setAttribute("page",hm.get("page"));
		return "src/page/prospect_lyt/jurisdiction";
	}
	
	@RequestMapping("/addRight.do")
	public String addRight(HttpServletRequest request,Right right) {
		System.out.println("right="+right);
		Integer count=service.insertRight(right);
		if(count>0) {
			message="权限添加成功";
			path="queryRight.do";
		}else {
			message="权限添加失败";
		}
		request.setAttribute("message",message);
		request.setAttribute("path",path);
		return "src/page/common/success";
	}
	
	@RequestMapping("/deleteRight.do")
	public String deleteRight(HttpServletRequest request,Integer rid) {
		Integer count=service.deleteRight(rid);
		if(count>0) {
			message="权限删除成功";
			path="queryRight.do";
		}else {
			message="权限删除失败";
		}
		request.setAttribute("message",message);
		request.setAttribute("path",path);
		return "src/page/common/success";
	}
	
	@RequestMapping(value="/queryDetail.do",produces="application/json;charset=utf-8")
	@ResponseBody
	public String queryDetail(HttpServletRequest request,Integer rightId) {
		APIRequest<Right> api=service.selectDetail(rightId);
		return api.toString();
	}
	
	@RequestMapping("/updateRight.do")
	public String updateRight(HttpServletRequest request,Right right) {
		System.out.println("right="+right);
		Integer count=service.updateRight(right);
		if(count>0) {
			message="权限修改成功";
			path="queryRight.do";
		}else {
			message="权限修改失败";
		}
		request.setAttribute("message",message);
		request.setAttribute("path",path);
		return "src/page/common/success";
	}
	
}
