package com.dxm.insuranceSpring.controls;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dxm.insuranceSpring.pojo.Case;
import com.dxm.insuranceSpring.pojo.SettleClaim;
import com.dxm.insuranceSpring.services.ICarLossServices;
import com.dxm.insuranceSpring.services.ICaseServices;
import com.dxm.insuranceSpring.services.ISettleClaimServices;
import com.dxm.insuranceSpring.utils.APIRequest;

@Controller
@RequestMapping("src/page/lipei")
public class SettleClaimControls {

	@Resource(name="settleClaimServicelmpls")
	ISettleClaimServices service;
	@Resource(name="caseServicesImpls")
	ICaseServices caseservice;
	@Resource(name="carLossServicesImpls")
	ICarLossServices carloss;
	/**
	 * 添加理赔信息
	 * @return
	 */
	@RequestMapping(value="/addSettleClaim.do",produces="application/json;charset=utf-8")
	@ResponseBody

	

	

	public String addSettleClaim(SettleClaim sc) {
		APIRequest api=service.AddSettleClaim(sc);
		System.out.println(api.getDatas().size());
		return api.toString();

	}
	/**
	 * 修改理赔状态
	 */
	@RequestMapping(value="/updateSettleClaim.do",produces="application/json;charset=utf-8")
	public String updateSettleClaim(Integer caseId) {
		Case ca=new Case();
		ca.setCaseId(caseId);
		ca.setCaseStatus(5);
		caseservice.updateCase(ca);
		service.updateSettleClaim(caseId);
		//System.out.println(api.getDatas().size());
		//System.out.println(api.toString());
		return "src/page/settle_lh/settle";
	}
	/**
	 * 查看理赔信息
	 */
	@RequestMapping(value="/querySettleClaim.do",produces="application/json;charset=utf-8")
	@ResponseBody
	public String querySettleClaim() {
		APIRequest<SettleClaim> api=service.querySettleClaim();
		System.out.println(api.getDatas().size());
		return api.toString();
	}
	
	/**
	 * 查看已理赔的信息
	 */
	@RequestMapping(value="/querySettleClaimByStatus.do",produces="application/json;charset=utf-8")
	@ResponseBody
	public String querySettleClaimByStatus(Integer settleClaimstatus) {
		APIRequest<SettleClaim> api=service.querySettleClaimByStatus(settleClaimstatus);
		System.out.println(api.getDatas().size());
		return api.toString();
	}
	
	//根据用户ID查询理赔信息
	@RequestMapping(value="/querySettleClaimById.do",produces="application/json;charset=utf-8")
	@ResponseBody
	public String querySettleClaimById(Integer userId) {
		APIRequest<SettleClaim> api=service.querySettleClaimById(userId);
		return api.toString();
	}
	//根据案件id查询理赔 信息
	@RequestMapping(value="/querySettleClaimBycaseId.do",produces="application/json;charset=utf-8")
	public String querySettleClaimBycaseId(HttpServletRequest request,Integer caseId) {
		service.querySettleClaimBycaseId(request, caseId);
		
		return "src/page/settle_lh/lipei";
		
	}
	//根据案件id删除理赔信息
	@RequestMapping(value="/deleteSettleClaimBycaseId.do",produces="application/json;charset=utf-8")
	@ResponseBody
	public String deleteSettleClaimBycaseId(Integer caseId) {
		APIRequest api=service.deleteSettleClaimBycaseId(caseId);
		return api.toString();
	}
	
	
}