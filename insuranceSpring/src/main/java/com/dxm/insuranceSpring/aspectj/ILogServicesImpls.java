package com.dxm.insuranceSpring.aspectj;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dxm.insuranceSpring.dao.LogDao;
import com.dxm.insuranceSpring.pojo.Log;
import com.dxm.insuranceSpring.utils.APIRequest;
import com.dxm.insuranceSpring.utils.Pages;

@Service("iLogServicesImpls")
public class ILogServicesImpls implements ILogService {
	
	@Autowired
	LogDao ldao;

	@Override
	public Integer addLog(Log log) {
		// TODO 添加日志
		return ldao.insertLog(log);
	}

	@Override
	public HashMap<String, Object> queryLog(Integer indexPage,Log log) {
		// TODO 遍历日志
		Integer count=ldao.countLog(log);
		Pages page=new Pages(count);
		page.setIndexPage(indexPage);
		page.setPageSize(8);
		RowBounds rb=new RowBounds(page.getBeginRow(),page.getPageSize());
		System.out.println("page="+page);
		List<Log> loglist=ldao.selectLog(rb,log);
		HashMap<String,Object> hm=new HashMap<String,Object>();
		hm.put("loglist",loglist);
		hm.put("page",page);
		return hm;
	}

	@Override
	public APIRequest<Integer> deleteLog(Integer... logIds) {
		// TODO 删除日志
		StringBuffer bf=new StringBuffer();
		for(int i=0;i<logIds.length;i++) {
			bf.append(logIds[i]);
			if(i<logIds.length-1) {
				bf.append(",");
			}
		}
		Integer count=ldao.deleteLog(bf.toString());
		APIRequest<Integer> api=new APIRequest<Integer>();
		if(count>0) {
			api.setResult(true);
			api.setSingerData(count);
		}else {
			api.setResult(false);
		}
		return api;
	}

}
