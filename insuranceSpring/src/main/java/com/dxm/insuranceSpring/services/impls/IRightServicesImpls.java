package com.dxm.insuranceSpring.services.impls;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dxm.insuranceSpring.aspectj.Logaspect;
import com.dxm.insuranceSpring.dao.RightDao;
import com.dxm.insuranceSpring.pojo.Right;
import com.dxm.insuranceSpring.services.IRightServices;
import com.dxm.insuranceSpring.utils.APIRequest;
import com.dxm.insuranceSpring.utils.Pages;

@Service("iRightServicesImpls")
public class IRightServicesImpls implements IRightServices {
	
	@Autowired
	RightDao rdao;
	APIRequest<Right> api=new APIRequest<Right>();

	@Override
	@Logaspect(operationName="遍历权限")
	public HashMap<String, Object> queryRight(Integer indexPage) {
		// TODO 遍历权限
		Pages page=new Pages(rdao.queryCount());
		page.setIndexPage(indexPage);
		page.setPageSize(4);
		RowBounds rb=new RowBounds(page.getBeginRow(),page.getPageSize());
		List<Right> rlist=rdao.queryRights(rb);
		HashMap<String,Object> hm=new HashMap<String,Object>();
		hm.put("rlist", rlist);
		hm.put("page", page);
		return hm;
	}

	@Override
	@Logaspect(operationName="添加权限")
	public Integer insertRight(Right right) {
		// TODO 添加权限
		return rdao.insertRight(right);
	}

	@Override
	@Logaspect(operationName="删除权限")
	public Integer deleteRight(Integer rightid) {
		// TODO 删除权限
		return rdao.deleteRight(rightid);
	}

	@Override
	@Logaspect(operationName="修改权限")
	public Integer updateRight(Right right) {
		// TODO 修改权限
		return rdao.updateRight(right);
	}

	@Override
	@Logaspect(operationName="根据id查询权限详情")
	public APIRequest<Right> selectDetail(Integer rid) {
		// TODO 根据id查询详情
		Right right=rdao.selectDetail(rid);
		List<Right> rlist=rdao.selectRights();
		if(rlist.size()>0&&right!=null) {
			api.setDatas(rlist);
			api.setSingerData(right);
			api.setResult(true);
		}else {
			api.setResult(false);
		}
		return api;
	}

}
