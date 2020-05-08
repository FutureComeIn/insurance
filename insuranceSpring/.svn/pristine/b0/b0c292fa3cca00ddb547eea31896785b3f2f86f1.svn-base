package com.dxm.insuranceSpring.controls;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dxm.insuranceSpring.pojo.Policyholders;
import com.dxm.insuranceSpring.pojo.Recognizee;
import com.dxm.insuranceSpring.services.IWarrantyServices;
import com.dxm.insuranceSpring.utils.APIRequest;
@Controller
public class RecognizeeControls {
	@Resource(name="warrantyServicesImpl")
	IWarrantyServices service;
	@RequestMapping(value="/addRecognizee.do",produces="application/json;charset=utf-8")
	@ResponseBody
	public String addRecognizee(Recognizee rg){
		APIRequest<Recognizee> api=service.addRecognizee(rg);
		return api.toString();
	}
	
	@RequestMapping(value="/queryRecognizee.do",produces="application/json;charset=utf-8")
	@ResponseBody
	public String queryRecognizee(Integer indexpage) {
		APIRequest<Recognizee> api=service.queryRecognizee(indexpage);
		//System.out.println(api.getDatas().size());
		return api.toString();
	}
	
	@RequestMapping(value="/queryRecognizeeByInfo.do",produces="application/json;charset=utf-8")
	@ResponseBody
	public String queryRecognizeeByInfo(Recognizee rg,Integer indexpage) {
		APIRequest<Recognizee> api = service.queryRecognizeeByInfo(rg, indexpage);
		return api.toString();
	}
	@RequestMapping("/queryRecognizeeById.do")
	public String queryRecognizeeById(HttpServletRequest request,String recognizeeId){
		Recognizee api=service.queryRecognizeeById(Integer.parseInt(recognizeeId));
		request.setAttribute("rdata", api);
		return "src/page/DispatchManagement_Zhy/UpdateRecognizeeInfo";
	}
	@RequestMapping("/queryRecognizeeInfo.do")
	public String queryRecognizeeInfo(HttpServletRequest request,String recognizeeId){
		Recognizee api=service.queryRecognizeeById(Integer.parseInt(recognizeeId));
		request.setAttribute("rdata", api);
		return "src/page/DispatchManagement_Zhy/RecognizeeInfo";
	}
	@RequestMapping("/updateRecognizee.do")
	public String updateRecognizee(Recognizee rg){
		APIRequest<Recognizee> api=service.updateRecognizee(rg);
		return "redirect:src/page/DispatchManagement_Zhy/Policy-recognizee.jsp";
	}
	@RequestMapping(value="/deleteRecognizee.do",produces="application/json;charset=utf-8")
	@ResponseBody
	public String deleteRecognizee(Integer recognizeeId) {
		APIRequest<Recognizee> api=service.deleteRecognizee(recognizeeId);
		return api.toString();
	}
}
