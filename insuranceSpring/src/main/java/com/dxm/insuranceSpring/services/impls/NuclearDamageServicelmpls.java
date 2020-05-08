package com.dxm.insuranceSpring.services.impls;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.swing.plaf.synth.SynthSplitPaneUI;

import org.apache.catalina.servlet4preview.http.HttpServletRequest;
import org.springframework.stereotype.Service;

import com.dxm.insuranceSpring.aspectj.Logaspect;

import com.dxm.insuranceSpring.aspectj.Logaspect;



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
import com.dxm.insuranceSpring.services.INuclearDamageServices;
import com.dxm.insuranceSpring.utils.APIRequest;

@Service("nuclearDamageServicelmpls")
public class NuclearDamageServicelmpls implements INuclearDamageServices{

	@Resource 
	NuclearDamageDao dao;
	@Resource
	AssessmentDao adao;
	@Resource
	CaseDao cdao;
	@Resource 
	ReportDao rdao;
	
	
	
	@Override







	@Logaspect(operationName="添加核损信息")

	public APIRequest addNuclearDamage(NuclearDamage ncd) {
		// TODO Auto-generated method stub
		APIRequest  api=new APIRequest();
		if(dao.addNuclearDamage(ncd)>0) {
			api.setResult(true);
		}else {
			api.setResult(false);
			api.setMessage("添加失败");
		}
		return api;
	}

	@Override



	@Logaspect(operationName="查询理赔")

	public APIRequest queryNuclearDamage(Integer UserId) {
		// TODO Auto-generated method stub
		APIRequest api=new APIRequest();
		
		List<NuclearDamage> datas=dao.queryNuclearDamage(UserId);
		System.out.println("userid:"+UserId);
		System.out.println("user:"+datas.size());
		if(datas.size()>0) {
			
			api.setResult(true);
			api.setDatas(datas);
		}else {
			api.setResult(false);
			api.setMessage("查询失败");
		}
		return api;
		
	}

	




	@Logaspect(operationName="查询理赔状态")

	public APIRequest queryNuclearDamageByStatus(String nuclearDamageStatus) {
		// TODO Auto-generated method stub
				APIRequest<NuclearDamage> api=new APIRequest<NuclearDamage>();
				List<NuclearDamage> datas=new ArrayList();
				 datas=dao.queryNuclearDamageByStatus(nuclearDamageStatus);
				if(datas.size()>0) {
					api.setResult(true);
					api.setDatas(datas);			
				}else {
					api.setResult(false);
					api.setMessage("信息不存在");
				}
				return api;
	}

	



	@Logaspect(operationName="更新理赔")
	public APIRequest updateNuclearDamage(Integer NuclearDamageid) {
		// TODO Auto-generated method stub
		APIRequest api=new APIRequest();
		//System.out.println("servicelmps="+NuclearDamageid);
		//System.out.println("servicelmps="+dao.updateNuclearDamageStatus(NuclearDamageid));
		
		if(dao.updateNuclearDamageStatus(NuclearDamageid)>0) {
			api.setResult(true);
			}else {
				api.setResult(false);
				api.setMessage("核损失败");
			}
				//System.out.println("api="+api);
		return api;
	}

	@Override


	@Logaspect(operationName="删除核损")
	public APIRequest deleteNuclearDamage(Integer nuclearDamageId) {
		// TODO Auto-generated method stub
		APIRequest api=new APIRequest();	
		if(dao.deleteNuclearDamageBycaseId(nuclearDamageId)>0) {
	
			api.setResult(true);
					
		}else {
			api.setResult(false);
			api.setMessage("删除失败");
		}
		return api;
	}

	@Override
	@Logaspect(operationName="查询核损通过Id")
	public void queryNuclearDamageByNuclearDamageId(HttpServletRequest request, Integer nuclearDamageId) {
		// TODO Auto-generated method stub
	List<NuclearDamage> NuclearDamageList=dao.queryNuclearDamageByNuclearDamageId(nuclearDamageId);
	if(NuclearDamageList.size()>0){
              request.setAttribute("NuclearDamageInfo",NuclearDamageList.get(0));
	 }
    System.out.println("nuclear"+NuclearDamageList.get(0)); 
	
    List<Assessment> AssessmentList= adao.queryAssessmentById(NuclearDamageList.get(0).getAssessmentId());
    if(AssessmentList.size()>0) {
              request.setAttribute("AssessmentInfo",AssessmentList.get(0));
	  }
    System.out.println("Assessment"+AssessmentList.get(0)); 
    
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

	@Override
	@Logaspect(operationName="查询核损通过Id")
	public APIRequest queryNuclearDamageByNuclearId(Integer nuclearDamageId) {
		// TODO Auto-generated method stub
		return null;
	}


	


	

}
