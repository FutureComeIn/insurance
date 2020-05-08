package com.dxm.insuranceSpring.services.impls;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.RowBounds;
import org.springframework.stereotype.Service;

import com.dxm.insuranceSpring.aspectj.Logaspect;
import com.dxm.insuranceSpring.dao.InsuranceTypeDao;
import com.dxm.insuranceSpring.pojo.CarType;
import com.dxm.insuranceSpring.pojo.Data;
import com.dxm.insuranceSpring.pojo.InsuranceType;
import com.dxm.insuranceSpring.services.InsuranceTypeServices;
import com.dxm.insuranceSpring.utils.APIRequest;
import com.dxm.insuranceSpring.utils.Pages;
@Service("insuranceTypeServicesImpls")
public class InsuranceTypeServicesImpls implements InsuranceTypeServices {
@Resource
InsuranceTypeDao  dao;
	@Override
	@Logaspect(operationName="添加险种")
	public APIRequest addInsuranceType(InsuranceType it) {
		APIRequest api=new APIRequest();
		if(dao.addInsuranceType(it)>0) {
			api.setResult(true);
			api.setMessage("添加成功");
		}else {
			api.setResult(false);
			api.setMessage("添加失败");
		}
		return api;
	}

	@Override
	@Logaspect(operationName="更新险种")
	public APIRequest updateInsuranceType(InsuranceType it) {
		APIRequest api=new APIRequest();
		if(dao.updateInsuranceType(it)>0) {
			api.setResult(true);
			api.setMessage("更新成功");
			
			
		}else {
			api.setResult(false);
			api.setMessage("更新失败");
		}
		return api;
	}

	@Override
	@Logaspect(operationName="删除险种")
	public APIRequest deleteInsuranceType(Integer id) {
		APIRequest api=new APIRequest();
		if(dao.deleteInsuranceType(id)>0) {
			api.setResult(true);
		}else {
			api.setResult(false);
			api.setMessage("删除失败");
		}
		return api;
	}
//分页查询
	@Override
	@Logaspect(operationName="查询险种")
	public APIRequest<InsuranceType> queryInsuranceType(Integer indexPage) {
		if(indexPage==null) {
			indexPage=1;
		}
		int rowcount  = dao.countInsuranceType();
		Pages page = new Pages(rowcount);
		page.setIndexPage(indexPage);
		page.setPageSize(4);
		RowBounds rb = new RowBounds(page.getBeginRow(),page.getPageSize());
		
		List<InsuranceType> datas=dao.queryAllInsuranceType(rb);
		APIRequest<InsuranceType> api=new APIRequest<InsuranceType>();
		
		if(datas.size()>0) {
			api.setResult(true);
			api.setDatas(datas);
			api.setSingerData(page);
		}else {
			api.setResult(false);
			api.setMessage("查询失败");
		}
		return api;
	
	}

	@Override
	@Logaspect(operationName="查询某个险种Byid")
	public APIRequest queryInsuranceTypeById(Integer id) {
		APIRequest api=new APIRequest();
		List<InsuranceType> InsuranceInfo=dao.queryInsuranceTypeById(id);
		if(InsuranceInfo.size()>0) {
			api.setResult(true);
			api.setSingerData(InsuranceInfo.get(0));
		}else {
			api.setResult(false);
			api.setMessage("查找失败");
		}
		return api; 
	}

	@Override
	@Logaspect(operationName="查询险种ByreportId")
	public APIRequest queryInsuranceByreportId(Integer caseId) {
		APIRequest api=new APIRequest();
		List<InsuranceType> cartype=dao.queryInsuranceBycaseId(caseId);
		if(cartype.size()>0) {
			api.setResult(true);  
			api.setSingerData(cartype.get(0));
		}else {    
			api.setResult(false);
			api.setMessage("查找失败");
		}
		return api; 
	}

	@Override
	@Logaspect(operationName="查询险种")
	public APIRequest<InsuranceType> queryInsuranceType() {
		// TODO Auto-generated method stub
		List<InsuranceType> datas = dao.queryInsuranceType();
		APIRequest<InsuranceType> api=new APIRequest<InsuranceType>();
		if(datas.size()>0) {
			api.setResult(true);
			api.setDatas(datas);
		}else {
			api.setResult(false);
			api.setMessage("查询失败");
		}
		return api;
	}

}
