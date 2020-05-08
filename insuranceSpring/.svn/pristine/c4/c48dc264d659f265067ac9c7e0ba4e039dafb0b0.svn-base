package com.dxm.insuranceSpring.services.impls;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.RowBounds;
import org.springframework.stereotype.Service;

import com.dxm.insuranceSpring.aspectj.Logaspect;
import com.dxm.insuranceSpring.dao.CaseDao;
import com.dxm.insuranceSpring.pojo.Case;
import com.dxm.insuranceSpring.services.ICaseServices;
import com.dxm.insuranceSpring.utils.APIRequest;
import com.dxm.insuranceSpring.utils.Pages;

/**
 * 案件模块实现
 * @author Administrator
 *
 */
@Service("caseServicesImpls")
public class CaseServicesImpls implements ICaseServices{
	@Resource
	CaseDao caseDao;
	
	@Override
	@Logaspect(operationName="添加案件信息")
	public APIRequest addCase(Case tcase) {
		// TODO Auto-generated method stub
		int count = caseDao.addCase(tcase);
		APIRequest api =new APIRequest<>();
		if(count>0) {
			api.setResult(true);
			api.setSingerData(count);
		}else {
			api.setResult(false);
			api.setMessage("添加失败");
		}
		return api;
	}

	@Override
	@Logaspect(operationName="查询案件信息")
	public APIRequest<Case> queryByList(Case tcase,Integer indexPage) {
		// TODO Auto-generated method stub
		Integer count = caseDao.countCase(tcase);
		Pages page = new Pages(count);
		page.setIndexPage(indexPage);
		page.setPageSize(8);
		RowBounds row = new RowBounds(page.getBeginRow(),page.getPageSize());
		List<Case> data = caseDao.queryByList(tcase,row);
		
		APIRequest<Case> api = new APIRequest<Case>();
		if(data.size() > 0) {
			api.setResult(true);
			api.setDatas(data);
			api.setSingerData(page);
		}else {
			api.setResult(false);
			api.setMessage("对不起,当前没有数据");
		}
		return api;
	}

	@Override
	@Logaspect(operationName="查询案件信息,根据条件")
	public APIRequest<Case> queryByCaseByTerm(Case tcase,Integer indexPage) {
		// TODO Auto-generated method stub
		Integer count = caseDao.countCaseByTerm(tcase);
		Pages page = new Pages(count);
		page.setIndexPage(indexPage);
		page.setPageSize(8);
		RowBounds row = new RowBounds(page.getBeginRow(),page.getPageSize());
		
		List<Case> data = caseDao.queryByCaseInfoByTerm( tcase,row);
		APIRequest<Case> api = new APIRequest<Case>();
		if(data.size() > 0) {
			api.setResult(true);
			api.setDatas(data);
			api.setSingerData(page);
		}else {
			api.setResult(false);
			api.setMessage("对不起,当前没有数据");
		}
		return api;
	}

	@Override
	@Logaspect(operationName="动态更新案件信息")
	public APIRequest updateCase(Case tcase) {
		int count = caseDao.updateCase(tcase);
		APIRequest api =new APIRequest<>();
		if(count>0) {
			api.setResult(true);
			api.setSingerData(count);
			api.setMessage("成功结案！");
		}else {
			api.setResult(false);
			api.setMessage("修改失败!");
		}
		return api;
	}
}
