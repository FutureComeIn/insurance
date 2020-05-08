package com.dxm.insuranceSpring.aspectj;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dxm.insuranceSpring.pojo.Log;

@Controller
public class ILogControls {
	@Resource(name="iLogServicesImpls")
	ILogService service;
	
	@RequestMapping("/queryLog.do")
	public String queryLog(HttpServletRequest request,Integer indexPage,Log log) {
		if(indexPage==null) {
			indexPage=1;
		}
		if(!"".equals(log.getLogName())&&null!=log.getLogName()) {
			log.setLogName("%"+log.getLogName()+"%");
		}
		if(!"".equals(log.getLogTime())&&null!=log.getLogTime()) {
			log.setLogTime("%"+log.getLogTime()+"%");
		}
		
		HashMap<String,Object> hm=service.queryLog(indexPage,log);
		if(!"".equals(log.getLogName())&&null!=log.getLogName()) {
			log.setLogName(log.getLogName().substring(1,log.getLogName().length()-1));
		}
		if(!"".equals(log.getLogTime())&&null!=log.getLogTime()) {
			log.setLogTime(log.getLogTime().substring(1,log.getLogTime().length()-1));
		}
		request.setAttribute("loglist",hm.get("loglist"));
		request.setAttribute("page",hm.get("page"));
		request.setAttribute("searchLog",log);
		return "src/page/prospect_lyt/log_query";
	}
	
	@RequestMapping("/deleteLog.do")
	@ResponseBody
	public String deleteLog(@RequestParam("logids[]")Integer[] logids) {
		return service.deleteLog(logids).toString();
	}
}
