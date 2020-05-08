package com.dxm.insuranceSpring.controls;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dxm.insuranceSpring.pojo.Policyholders;
import com.dxm.insuranceSpring.services.IWarrantyServices;
import com.dxm.insuranceSpring.utils.APIRequest;

@Controller
public class PolicyholdersControls {
	@Resource(name="warrantyServicesImpl")
	IWarrantyServices service;
	
	String message="";
	String path="";
	
	@RequestMapping(value="/addPolicyholders.do",produces="application/json;charset=utf-8")
	@ResponseBody
	public String addPolicyholders(Policyholders pc){
		APIRequest<Policyholders> api=service.addPolicyHolder(pc);
		return api.toString();
	}
	
	@RequestMapping(value="/queryPolicyholders.do",produces="application/json;charset=utf-8")
	@ResponseBody
	public String queryPolicyholders(Integer indexpage) {
		APIRequest<Policyholders> api=service.queryPolicyHolder(indexpage);
		//System.out.println(api.getDatas().size());
		return api.toString();
	}
	
	@RequestMapping(value="/queryPolicyholdersByInfo.do",produces="application/json;charset=utf-8")
	@ResponseBody
	public String queryPolicyholdersByInfo(Policyholders pc,Integer indexpage) {
		APIRequest<Policyholders> api = service.queryPolicyHolderByInfo(pc, indexpage);
		return api.toString();
	}
	
	@RequestMapping("/updatePolicyholders.do")
	public String updatePolicyholders(HttpServletRequest request,Policyholders pc){
		Integer count=service.updatePolicyHolder(pc);
		if(count>0) {
			message="修改用户成功...";
			path="src/page/DispatchManagement_Zhy/Policy-holder.jsp";
		}else {
			message="修改用户失败";
		}
		request.setAttribute("message", message);
		request.setAttribute("path", path);
		return "src/page/common/success";
	}
	@RequestMapping("/queryPolicyholdersById.do")
	public String queryPolicyholdersById(HttpServletRequest request,String policyholdersId){
		Policyholders api=service.queryPolicyholderById(Integer.parseInt(policyholdersId));
		System.out.println("api="+api);
		request.setAttribute("pdata", api);
		return "src/page/DispatchManagement_Zhy/UpdateInsuranceInfo";
	}
	@RequestMapping(value="/deletePolicyholders.do",produces="application/json;charset=utf-8")
	@ResponseBody
	public String deletePolicyholders(Integer policyholdersId) {
		APIRequest<Policyholders> api=service.deletePolicyHolder(policyholdersId);
		return api.toString();
	}
}
