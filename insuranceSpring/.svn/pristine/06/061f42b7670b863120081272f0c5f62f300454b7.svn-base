package com.dxm.insuranceSpring.services.impls;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.RowBounds;
import org.springframework.stereotype.Service;

import com.dxm.insuranceSpring.aspectj.Logaspect;
import com.dxm.insuranceSpring.dao.PartDao;

import com.dxm.insuranceSpring.pojo.Part;
import com.dxm.insuranceSpring.services.IPartServices;
import com.dxm.insuranceSpring.utils.APIRequest;
import com.dxm.insuranceSpring.utils.Pages;
@Service("PartServicesImpls")
public class PartServicesImpls  implements IPartServices{
@Resource 
PartDao dao;
	@Override
	@Logaspect(operationName="添加零件种类")
	public APIRequest addPart(Part ct) {
		APIRequest api=new APIRequest();
		if(dao.addPart(ct)>0) {
			api.setResult(true);
		}else {
			api.setResult(false);
			api.setMessage("添加失败");
		}
		return api;
	}

	@Override
	@Logaspect(operationName="更新零件种类")
	public APIRequest updatePart(Part ct) {
		APIRequest api=new APIRequest();
		if(dao.updatePart(ct)>0) {
			api.setResult(true);
		}else {
			api.setResult(false);
			api.setMessage("更新失败");
		}
		return api;
	}

	@Override
	@Logaspect(operationName="删除零件种类")
	public APIRequest deletePart(Integer id) {
		APIRequest api=new APIRequest();
		if(dao.deletePart(id)>0) {
			api.setResult(true);
		}else {
			api.setResult(false);
			api.setMessage("删除失败");
		}
		return api;
	}

	@Override
	@Logaspect(operationName="分页查询零件种类")
	public APIRequest<Part> queryPart(Integer indexPage) {
		if(indexPage==null) {
			indexPage=1;
		}
		int rowcount  = dao.countCarType();
		Pages page = new Pages(rowcount);
		page.setIndexPage(indexPage);
		page.setPageSize(4);
		RowBounds rb = new RowBounds(page.getBeginRow(),page.getPageSize());
		APIRequest<Part> api=new APIRequest<Part>();
		List<Part> datas=dao.queryPart(rb);
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
	@Logaspect(operationName="添加零件种类ByID")
	public APIRequest queryPartById(Integer id) {
		APIRequest api=new APIRequest();
		List<Part> data=dao.queryPartById(id);
		if(data.size()>0) {
			api.setResult(true);
			api.setSingerData(data.get(0));
		}else {
			api.setResult(false);
			api.setMessage("查找失败");
		}
		return api; 
	}

}
