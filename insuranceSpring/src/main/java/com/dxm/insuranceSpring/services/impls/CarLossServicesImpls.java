package com.dxm.insuranceSpring.services.impls;

import java.util.List;

import javax.annotation.Resource;

import org.apache.catalina.servlet4preview.http.HttpServletRequest;
import org.apache.ibatis.session.RowBounds;
import org.springframework.stereotype.Service;

import com.dxm.insuranceSpring.aspectj.Logaspect;
import com.dxm.insuranceSpring.dao.AdverseCarDamageDao;
import com.dxm.insuranceSpring.dao.AdverseCarDamageDetailsDao;
import com.dxm.insuranceSpring.dao.AssessmentDao;
import com.dxm.insuranceSpring.dao.CarTypeDao;
import com.dxm.insuranceSpring.dao.CaseDao;
import com.dxm.insuranceSpring.dao.InsuranceTypeDao;
import com.dxm.insuranceSpring.dao.MyCarDamageDao;
import com.dxm.insuranceSpring.dao.MyCarDamageDetailsDao;
import com.dxm.insuranceSpring.dao.UtilsDao;
import com.dxm.insuranceSpring.pojo.AdverseCarDamage;
import com.dxm.insuranceSpring.pojo.AdverseCarDamageDetails;
import com.dxm.insuranceSpring.pojo.Assessment;
import com.dxm.insuranceSpring.pojo.CarType;
import com.dxm.insuranceSpring.pojo.Case;
import com.dxm.insuranceSpring.pojo.InsuranceType;
import com.dxm.insuranceSpring.pojo.MyCarDamage;
import com.dxm.insuranceSpring.pojo.MyCarDamageDetails;
import com.dxm.insuranceSpring.services.ICarLossServices;
import com.dxm.insuranceSpring.utils.APIRequest;
import com.dxm.insuranceSpring.utils.Pages;

@Service("carLossServicesImpls")
public class CarLossServicesImpls implements ICarLossServices{
	@Resource
	CaseDao casedao;
	@Resource
	InsuranceTypeDao insurancedao;
	@Resource
	MyCarDamageDao mcddao;
	@Resource
	MyCarDamageDetailsDao mcdddao;
	@Resource
	AdverseCarDamageDao acddao;
	@Resource
	AdverseCarDamageDetailsDao acdddao;
	@Resource
	AssessmentDao assessmentdao;
	@Resource
	UtilsDao utilsdao;
	@Resource 
	CarTypeDao cartypedao;
	
	
	
	@Logaspect(operationName="查询我要定损的案件")
	public APIRequest<Case> queryCaseInfoByHandleAndCurrentPage(Case ca, Integer indexPage) {
		// TODO Auto-generated method stub
		APIRequest<Case> api=new APIRequest<Case>();
		Integer count=casedao.countCaseByTerm(ca);
		Pages page=new Pages(count);
		page.setIndexPage(indexPage);
		page.setPageSize(8);
		RowBounds row=new RowBounds(page.getBeginRow(),page.getPageSize());
		
		List<Case> caseList=casedao.queryByCaseInfoByTerm(ca,row);
		System.out.println(caseList.size());
		
		if(caseList.size()>0) {
			api.setResult(true);
			api.setDatas(caseList);
			api.setSingerData(page);
		}
		return api;
	}
	

	@Override
	@Logaspect(operationName="查询我要定损的案件")
	public APIRequest queryMyHandleCaseByCaseId(Case ca) {
		// TODO Auto-generated method stub
		APIRequest api=new APIRequest();
		List<Case> caselist=casedao.queryByCaseInfoByTerm(ca);
		if(caselist.size()>0) {
			api.setSingerData(caselist.get(0));
		}
		List<InsuranceType> insurancetypeList=insurancedao.queryInsuranceBycaseId(ca.getCaseId());
		api.setDatas(insurancetypeList);
		return api;
	}


	@Override
	@Logaspect(operationName="添加定损信息")
	public APIRequest addCarLossAllInfo(Assessment at) {
		// TODO Auto-generated method stub
		APIRequest api=new APIRequest();
		Integer flag=assessmentdao.addAssessment(at);
		Integer temp=utilsdao.queryLastInertId();
			if(flag>0) {
				api.setResult(true);
				api.setSingerData(temp);
			}else {
				api.setResult(false);
				api.setMessage("添加定损信息失败");
			}
		return api;
	}


	@Override
	@Logaspect(operationName="更新定损信息")
	public APIRequest updateAssessment(Assessment at) {
		// TODO Auto-generated method stub
		APIRequest api=new APIRequest();
		if(assessmentdao.updateAssessment(at)>0) {
			api.setResult(true);
		}else {
			api.setMessage("更新失败");
		}
		return api;
	}

	@Override
	@Logaspect(operationName="更新我方车损信息")
	public APIRequest updateMyCarDamage(MyCarDamage mcd) {
		// TODO Auto-generated method stub
		APIRequest api=new APIRequest();
		if(mcddao.updateMyCarDamagePrice(mcd)>0) {
			api.setResult(true);
		}else {
			api.setMessage("更新失败");
		}
		return api;
	}

	@Override
	@Logaspect(operationName="更新我方车损详情")
	public APIRequest updateMyCarDamageDetails(MyCarDamageDetails mcdd,Assessment at) {
		// TODO 更新我方车损详情
		APIRequest api=new APIRequest();
		MyCarDamage mcd=new MyCarDamage();
		mcd.setPrice(at.getTotalPrice());
		mcd.setMyCarDamageId(at.getMyCarDamageId());
		System.out.println(at.toString());
		System.out.println(mcdd.toString());
		if(mcdddao.updateMyCarDamageDetails(mcdd)>0&&mcddao.updateMyCarDamagePrice(mcd)>0&&assessmentdao.updateAssessment(at)>0) {
			api.setResult(true);
			api.setMessage("更新成功");
		}else {
			api.setResult(false);
			api.setMessage("更新失败");
		}
		return api;
	}

	@Override
	@Logaspect(operationName="删除我方车损详情")
	public APIRequest deleteMyCarDamageDetails(MyCarDamageDetails mcdd) {
		// TODO 删除我方车损详情
		APIRequest api=new APIRequest();
		MyCarDamage mcd=new MyCarDamage();
		mcd.setMyCarDamageId(mcdd.getMyCarDamageId());
		Assessment at=new Assessment();
		at.setMyCarDamageId(mcdd.getMyCarDamageId());
		mcd.setPrice(mcdd.getPrice());
		if(mcdddao.deleteMyCarDamageDetailsById(mcdd.getMyCarDamageDetailsId())>0
				&&mcddao.updateMyCarDamagePrice(mcd)>0
				&&assessmentdao.updateAssessment(at)>0) {
			api.setResult(true);
			api.setMessage("删除成功");
		}else {
			api.setResult(false);
			api.setMessage("删除失败");
		}
		return api;
	}

	@Override
	@Logaspect(operationName="更新对方车损信息")
	public APIRequest updateAdverseCarDamage(AdverseCarDamage acd) {
		// TODO Auto-generated method stub
		APIRequest api=new APIRequest();
		if(acddao.updateAdverseCarDamagePrice(acd)>0) {
			api.setResult(true);
		}else {
			api.setMessage("更新失败");
		}
		return api;
	}

	@Override
	@Logaspect(operationName="更新对方车损详情")
	public APIRequest updateAdverseCarDamageDetails(AdverseCarDamageDetails acdd,Assessment at) {
		// TODO 更新对方车损详情
		APIRequest api=new APIRequest();
		AdverseCarDamage acd=new AdverseCarDamage();
		acd.setprice(at.getTotalPrice());
		acd.setAdverseCarDamageId(at.getAdverseCarDamageId());
		if(acdddao.updateAdverseCarDamageDetails(acdd)>0&&acddao.updateAdverseCarDamagePrice(acd)>0&&assessmentdao.updateAssessment(at)>0) {
			api.setResult(true);
			api.setMessage("更新成功");
		}else {
			api.setResult(false);
			api.setMessage("更新失败");
		}
		return api;
	}

	@Override
	@Logaspect(operationName="删除我方车损详情")
	public APIRequest deleteAdverseCarDamageDetails(AdverseCarDamageDetails acdd) {
		// TODO 删除我方车损详情
		APIRequest api=new APIRequest();
		AdverseCarDamage acd=new AdverseCarDamage();
		acd.setAdverseCarDamageId(acdd.getAdverseCarDamageId());
		Assessment at=new Assessment();
		at.setAdverseCarDamageId(acdd.getAdverseCarDamageId());
		acd.setprice(acdd.getPrice());
		if(acdddao.deleteAdverseCarDamageDetailsById(acdd.getAdverseCarDamageDetailsId())>0
				&&acddao.updateAdverseCarDamagePrice(acd)>0
				&&assessmentdao.updateAssessment(at)>0) {
			api.setResult(true);
			api.setMessage("删除成功");
		}else {
			api.setResult(false);
			api.setMessage("删除失败");
		}
		return api;
	}

	@Override
	@Logaspect(operationName="根据车辆名模糊查询车辆信息")
	public APIRequest<CarType> queryCarTypeByCarName(String carName) {
		// TODO Auto-generated method stub
		APIRequest<CarType> api=new APIRequest<CarType>();
	List<CarType> cartypeList=cartypedao.queryCarInfoTypeByCarName(carName);
		if(cartypeList.size()>0) {
			api.setDatas(cartypeList);
			api.setResult(true);
		}else {
			api.setResult(false);
		}
		return api;
	}



	@Override
	@Logaspect(operationName="根据定损编号查找定损信息")
	public APIRequest<Assessment> queryAssessmentById(Integer id) {
		// TODO Auto-generated method stub
		APIRequest<Assessment> api=new APIRequest<Assessment>();
		List<Assessment> datas=assessmentdao.queryAssessmentById(id);
		if(datas.size()>0) {
			api.setResult(true);
			api.setDatas(datas);
		}
		return api;
	}

	@Override
	@Logaspect(operationName="根据条件查询定损信息")
	public APIRequest<Assessment> queryAssessmentByTerm(Assessment at,Integer indexPage) {
		// TODO 根据条件查询定损信息
		APIRequest<Assessment> api=new APIRequest<Assessment>();
		Integer count=assessmentdao.queryAssessmentCountByTerm(at);
		Pages page=new Pages(count);
		page.setIndexPage(indexPage);
		page.setPageSize(8);
		RowBounds row=new RowBounds(page.getBeginRow(),page.getPageSize());
		List<Assessment> datas=assessmentdao.queryAssessmentByTerm(at, row);
		System.out.println(datas.size());
		api.setDatas(datas);
		api.setSingerData(page);
		return api;
	}


	@Override
	@Logaspect(operationName="根据定损编号和案件编号查找案件信息和定损信息")
	public void queryAssessmentAllInfo(HttpServletRequest request, Assessment at) {
		// TODO Auto-generated method stub
		Case ca=new Case();
		if(at!=null&&at.getCaseId()>0) {
			ca.setCaseId(at.getCaseId());
		}
		List<Case> caselist=casedao.queryByCaseInfoByTerm(ca);
		if(caselist.size()>0) {
			request.setAttribute("caseinfo",caselist.get(0));
		}
		List<Assessment> assessmentList=assessmentdao.queryAssessmentById(at.getAssessmentId());
		if(assessmentList.size()>0) {
			request.setAttribute("assessmentinfo",assessmentList.get(0));
		}
	}


	@Override
	@Logaspect(operationName="更新定损状态")
	public APIRequest updateAssessmentStatus(Assessment at) {
		// TODO 更新定损状态
		APIRequest api=new APIRequest();
		if(assessmentdao.updateAssessmentStatus(at)>0) {
			api.setResult(true);
			api.setMessage("状态修改失败");
		}
		return api;
	}


	@Override
	@Logaspect(operationName="删除定损信息以及我/对方车损和详情")
	public boolean deleteAssessmentAndChild(Assessment at) {
		// TODO 删车损信息以及我/对方车损和详情
		Integer id=at.getAssessmentId();
		if(assessmentdao.deleteAssessment(at)>0) {
			mcddao.deleteMyCarDamageByAssessmentId(id);
			mcdddao.deleteMyCarDamageDetailsByAssessmentId(id);
			acddao.deleteAdverseCarDamageByAssessmentId(id);
			acdddao.deleteAdverseCarDamageDetailsByAssessmentId(id);
			return true;
		}else {
			return false;
		}
		
	}


	@Override
	@Logaspect(operationName="添加我方车损信息")
	public Integer addMyCarDamage(MyCarDamage mcd) {
		// TODO 添加我方车损信息
		Integer temp=mcddao.addMyCarDamage(mcd);
		if(temp>0) {
			temp=utilsdao.queryLastInertId();
		}
		return temp;
	}


	@Override
	@Logaspect(operationName="添加对方车损信息")
	public Integer addAdverseCarDamage(AdverseCarDamage acd) {
		Integer temp=acddao.addAdverseCarDamage(acd);
		if(temp>0) {
			temp=utilsdao.queryLastInertId();
		}
		return temp;
	}


	@Override
	@Logaspect(operationName="添加我方车损详情")
	public Integer addMyCarDamageDetails(MyCarDamageDetails mcdd) {
		// TODO 添加我方车损详情
		Integer temp=mcdddao.addMyCarDamageDetails(mcdd);
		return temp;
	}


	@Override
	@Logaspect(operationName="添加我方车损详情")
	public Integer addAdverseCarDamageDetails(AdverseCarDamageDetails acdd) {
		// TODO  添加对方车损详情
		Integer temp=acdddao.addAdverseCarDamageDetails(acdd);
		return temp;
	}


	@Override
	@Logaspect(operationName="根据案件编号查找定损信息")
	public APIRequest<Assessment> queryAllCarLossInfoByCaseId(Integer caseId) {
		// TODO Auto-generated method stub
		APIRequest<Assessment> api=new APIRequest<Assessment>();
		List<Assessment> datas=assessmentdao.queryAssessmentById(caseId);
		api.setDatas(datas);
		return api;
	}
	
	
}
