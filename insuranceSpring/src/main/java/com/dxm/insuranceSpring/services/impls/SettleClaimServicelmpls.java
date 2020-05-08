package com.dxm.insuranceSpring.services.impls;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.dxm.insuranceSpring.aspectj.Logaspect;
import com.dxm.insuranceSpring.dao.AssessmentDao;
import com.dxm.insuranceSpring.dao.CaseDao;
import com.dxm.insuranceSpring.dao.NuclearDamageDao;
import com.dxm.insuranceSpring.dao.ReportDao;
import com.dxm.insuranceSpring.dao.SettleClaimDao;
import com.dxm.insuranceSpring.pojo.Assessment;
import com.dxm.insuranceSpring.pojo.Case;
import com.dxm.insuranceSpring.pojo.NuclearDamage;
import com.dxm.insuranceSpring.pojo.Report;
import com.dxm.insuranceSpring.pojo.SettleClaim;
import com.dxm.insuranceSpring.services.ISettleClaimServices;
import com.dxm.insuranceSpring.utils.APIRequest;

@Service("settleClaimServicelmpls")
public class SettleClaimServicelmpls implements ISettleClaimServices{

	@Resource
	SettleClaimDao dao;
	@Resource 
	NuclearDamageDao ndao;
	@Resource
	AssessmentDao adao;
	@Resource
	CaseDao cdao;
	@Resource 
	ReportDao rdao;
	
	@Override
	@Logaspect(operationName="添加核损")
	public APIRequest AddSettleClaim(SettleClaim sc) {
		// TODO Auto-generated method stub
		APIRequest api=new APIRequest();
		if(dao.AddSettleClaim(sc)>0) {
			api.setResult(true);
		}else {
			api.setResult(false);
			api.setMessage("添加失败");
		}
		return api;
	}


	@Override
	@Logaspect(operationName="更新核损")
	public APIRequest updateSettleClaim(Integer caseId) {
		// TODO Auto-generated method stub
		APIRequest api=new APIRequest();
		if(dao.updateSettleClaim(caseId)>0) {
			api.setResult(true);
		}else {
			api.setResult(false);
			api.setMessage("理赔失败");
		}
		return api;
	}

	@Override
	@Logaspect(operationName="查询核损")
	public APIRequest querySettleClaim() {
		// TODO Auto-generated method stub
		APIRequest<SettleClaim> api=new APIRequest<SettleClaim>();
		List<SettleClaim> datas=dao.querySettleClaim();
		if(datas.size()>0) {
			api.setResult(true);
			api.setDatas(datas);
		}else {
			api.setResult(false);
			api.setMessage("查询失败");
		}
		return api;
	}

	@Override
	@Logaspect(operationName="查询核损通过状态")
	public APIRequest querySettleClaimByStatus(Integer settleClaimstatus) {
		// TODO Auto-generated method stub
		APIRequest<SettleClaim> api=new APIRequest<SettleClaim>();
		List<SettleClaim> datas=dao.querySettleClaimByStatus(settleClaimstatus);
		if(datas.size()>0) {
			api.setResult(true);
			api.setDatas(datas);
		}else {
			api.setResult(false);
			api.setMessage("查询失败");
		}
		return api;
	}

	@Override
	@Logaspect(operationName="查询核损")
	public APIRequest querySettleClaimById(Integer userId) {
		// TODO Auto-generated method stub
		APIRequest<SettleClaim> api=new APIRequest<SettleClaim>();
		//System.out.println("userId="+userId);
		List<SettleClaim> datas=dao.querySettleClaimById(userId);
		//System.out.println("datas="+datas);
		if(datas.size()>0) {
			api.setResult(true);
			api.setDatas(datas);
		}else {
			api.setResult(false);
			api.setMessage("查询失败");
		}
		
		return api;
	}

	@Override
	@Logaspect(operationName="根据案件Id删除核损")
	public APIRequest deleteSettleClaimBycaseId(Integer caesId) {
		// TODO Auto-generated method stub
		APIRequest api =new APIRequest();
		if(dao.daleteSettleClaimBycaseId(caesId)>0) {
			api.setResult(true);
		}else {
			api.setResult(false);
			api.setMessage("理赔失败");
		}
		return api;
	}

	@Override
	@Logaspect(operationName="根据案件Id查询核损")
	public void querySettleClaimBycaseId(HttpServletRequest request, Integer caseId) {
		// TODO Auto-generated method stub
		List<SettleClaim> SettleClaimList=dao.querySettleClaimBycaseId(caseId);
		if(SettleClaimList.size()>0){
			request.setAttribute("SettleClaimInfo",SettleClaimList.get(0));
			}


			System.out.println("集合="+SettleClaimList);
		    System.out.println("看看="+SettleClaimList.get(0));
		 List<NuclearDamage> NuclearDamageList=ndao.queryNuclearDamageByNuclearDamageId(SettleClaimList.get(0).getNuclearDamageId());
			if(NuclearDamageList.size()>0){
		              request.setAttribute("NuclearDamageInfo",NuclearDamageList.get(0));
			 }
		    System.out.println("nuclear:"+NuclearDamageList.get(0)); 
			
		 List<Assessment> AssessmentList= adao.queryAssessmentById(NuclearDamageList.get(0).getAssessmentId());
		    if(AssessmentList.size()>0) {
		              request.setAttribute("AssessmentInfo",AssessmentList.get(0));
			  }
		    System.out.println("Assessment:"+AssessmentList.get(0)); 
		    
		    Case ca = new Case();
		    ca.setCaseId(AssessmentList.get(0).getCaseId());
		    
		List<Case> casesList=cdao.queryByCaseInfoByTerm(ca);
		     if(casesList.size()>0) {
		              request.setAttribute("casesList",casesList.get(0));      
		         }
		        System.out.println("casesList:"+casesList.get(0)); 
		         System.out.println("reportId:"+casesList.get(0).getReportId()); 
		    List<Report> reportList=rdao.queryAllReportDetils(casesList.get(0).getReportId());
		       System.out.println("reportList:"+reportList.get(0));
		       if(reportList.size()>0) {
		        request.setAttribute("reportList",reportList.get(0));      
		       }
		         
		    
		    
		    
		    
			}


	

	}

	

	

 