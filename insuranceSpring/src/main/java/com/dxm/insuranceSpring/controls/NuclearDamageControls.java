 package com.dxm.insuranceSpring.controls;

import javax.annotation.Resource;

import org.apache.catalina.servlet4preview.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dxm.insuranceSpring.pojo.Assessment;
import com.dxm.insuranceSpring.pojo.Case;
import com.dxm.insuranceSpring.pojo.NuclearDamage;
import com.dxm.insuranceSpring.pojo.SettleClaim;
import com.dxm.insuranceSpring.services.ICarLossServices;
import com.dxm.insuranceSpring.services.ICaseServices;
import com.dxm.insuranceSpring.services.INuclearDamageServices;
import com.dxm.insuranceSpring.services.ISettleClaimServices;
import com.dxm.insuranceSpring.services.IWarrantyServices;
import com.dxm.insuranceSpring.services.impls.CheckServicesImpls;
import com.dxm.insuranceSpring.services.impls.IUserServicesImpls;
import com.dxm.insuranceSpring.utils.APIRequest;

@Controller
@RequestMapping("src/page/dinsun")
public class NuclearDamageControls {

	@Resource (name="nuclearDamageServicelmpls")
	INuclearDamageServices service;
	@Resource(name= "settleClaimServicelmpls")
	ISettleClaimServices scservice;
	@Resource(name="caseServicesImpls")
	ICaseServices caseservice;
	@Resource(name="iUserServicesImpls")
	IUserServicesImpls userservice;
	@Resource(name="carLossServicesImpls")
    ICarLossServices carlossservice;
	@Resource(name="warrantyServicesImpl")
    IWarrantyServices warrantyservices;
	@Resource(name="checkServicesImpls")
	CheckServicesImpls checkservices;
	//添加
	@RequestMapping(value="/addNuclearDamage.do " ,produces="application/json;charset=utf-8")
	@ResponseBody	
	public String addNuclearDamage(NuclearDamage ncd) {
		APIRequest api=service.addNuclearDamage(ncd);
		System.out.println(api.getDatas().size());
		return api.toString();		
	}
	//查询
	@RequestMapping(value="queryNuclearDamage.do",produces="application/json;charset=utf-8")
	@ResponseBody
	public String queryNuclearDamage(Integer UserId) {
		APIRequest<NuclearDamage> api=service.queryNuclearDamage(UserId);
		//System.out.println(UserId);
		//System.out.println(api.getDatas().size());
		return api.toString();		
	}
	//根据状态查询审核信息
	@RequestMapping(value="/queryNuclearDamageByStatus.do",produces="application/json;charset=utf-8")
	@ResponseBody
	public String queryNuclearDamageByStatus(String nuclearDamageStatus) {
		APIRequest<NuclearDamage> api=service.queryNuclearDamageByStatus(nuclearDamageStatus);
		System.out.println(api.getDatas().size());
		return api.toString();
	}
	
	//修改核损状态 并且添加理赔信息
	@RequestMapping(value="/updateNuclearDamage.do",produces="application/json;charset=utf-8")
	public String updateNuclearDamage(NuclearDamage ncd,SettleClaim sc) {
		System.out.println("NuclearDamage="+ncd.toString());
		System.out.println("SettleClaim="+sc.toString());
		System.out.println("NuclearDamageid="+ncd.getNuclearDamageId());
		  Case ca=new Case();
		  ca.setCaseId(sc.getCaseId());
		  ca.setSettlementId(sc.getUserId());
		  ca.setCaseStatus(4);
	   service.updateNuclearDamage(ncd.getNuclearDamageId());
	  // System.out.println("返回");
	//System.out.println(" api.toString="+ api.toString());
	   scservice.AddSettleClaim(sc);
	   caseservice.updateCase(ca);
	   return "src/page/hesun/hesun_info";
	  
	}
	//驳回 删除审核信息
	@RequestMapping(value="/deleteNuclearDamage.do",produces="application/json;charset=utf-8")
	@ResponseBody
	public String deleteNuclearDamage(NuclearDamage ncd,Assessment as,Case ca) {
		APIRequest api =new APIRequest();
		System.out.println("案件id="+as);
		System.out.println("案件id="+as.getCaseId());
		System.out.println(ca.getCaseId());
		System.out.println(ncd.getNuclearDamageId());
        as.setStatus(0);
		System.out.println(as);
		
		
		service.deleteNuclearDamage(ncd.getNuclearDamageId());
		
		return  "src/page/dinsun/hesun_info";	
	}

	
	@RequestMapping(value="/queryNuclearDamageById.do",produces="application/json;charset=utf-8")
	public String queryNuclearDamageByNuclearDamageId(HttpServletRequest request,Integer nuclearDamageId){
		service.queryNuclearDamageByNuclearDamageId(request, nuclearDamageId);
		
		System.out.println("NuclearDamageId="+nuclearDamageId);
		return "src/page/dinsun/hesunzhong";
	}
	
	@RequestMapping(value="/queryAll.do",produces="application/json;charset=utf-8")
	@ResponseBody
	public String queryAll(Assessment at) {
		System.out.println("ct="+at);
	APIRequest<Assessment> api=new APIRequest<Assessment>();
	//carlossservice.queryAssessmentByTerm(at,1);
	api=carlossservice.queryAssessmentByTerm(at,1);
	System.out.println("carlossAPI"+api.toString());
		
		return api.toString();
	}
	
	@RequestMapping(value="/queryWarrantyById.do",produces="application/json;charset=utf-8")
	@ResponseBody
	public String queryWarrantyDetilsById(Integer warrantyId) {
		APIRequest api=warrantyservices.queryWarrantyDetilsById(warrantyId);
		System.out.println("保单信息contorl:"+api.toString());
		return api.toString();	
	}
	
	@RequestMapping(value="/queryinsuranceType.do",produces="application/json;charset=utf-8")
	@ResponseBody
	public String queryinsuranceType(Case ca) {
		APIRequest api=carlossservice.queryMyHandleCaseByCaseId(ca);
		System.out.println(api.toString());
		return api.toString();
	}
	
	@RequestMapping(value="/queryUserByRoleId2.do",produces="application/json;charset=utf-8")
	@ResponseBody
	public String queryUserByRolename2() {
		APIRequest api=checkservices.queryUserByRoleName("理赔员");
		return api.toString();
	}
}
