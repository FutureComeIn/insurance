package com.dxm.insuranceSpring.controls;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dxm.insuranceSpring.pojo.Case;
import com.dxm.insuranceSpring.services.ICaseServices;
import com.dxm.insuranceSpring.utils.APIRequest;

@Controller
@RequestMapping("src/page/case")
public class CaseControls {
	@Resource(name="caseServicesImpls")
	ICaseServices services;
	
	@RequestMapping(value="/addCase.do",produces="application/json;charset=utf-8")
	@ResponseBody
	public String addCase(Case tcase) {
		APIRequest api = services.addCase(tcase);
		return api.toString();
	}
	
	@RequestMapping(value="/queryByList.do",produces="application/json;charset=utf-8")
	@ResponseBody
	public String queryByList(Case tcase, Integer indexPage) {
		APIRequest<Case> api = services.queryByList(tcase,indexPage);
		return api.toString();
	}
	
	@RequestMapping(value="/queryByCaseByTerm.do",produces="application/json;charset=utf-8")
	@ResponseBody
	public String queryByCaseByTerm(Case tcase,Integer indexPage) {
		APIRequest<Case> api = services.queryByCaseByTerm(tcase, indexPage);
		return api.toString();
	}
	
	@RequestMapping(value="/updateCase.do",produces="application/json;charset=utf-8")
	@ResponseBody
	public String updateCase(Case tcase) {
		APIRequest api = services.updateCase(tcase);
		return api.toString();
	}
}
