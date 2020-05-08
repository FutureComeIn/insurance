package com.dxm.insuranceSpring.controls;

import java.awt.List;
import java.util.ArrayList;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dxm.insuranceSpring.pojo.CarType;
import com.dxm.insuranceSpring.pojo.Part;
import com.dxm.insuranceSpring.services.ICarTypeServices;
import com.dxm.insuranceSpring.services.IPartServices;
import com.dxm.insuranceSpring.utils.APIRequest;
 
@Controller
public class PartConrols {
	@Resource(name="PartServicesImpls")
	IPartServices service;
	@Resource(name="carTypeServicesImpls")
	ICarTypeServices service2;
	
	//添加零件信息
	@RequestMapping(value="/addPart.do",produces="application/json;charset=utf-8")
	       
	public String addCarType(Part ct) {
		APIRequest api=service.addPart(ct);
		return "redirect:src/page/section_dwl/part.jsp";
			
	}
	
	
	//查询所有零件信息
	@RequestMapping(value="/loadPartInfo.do",produces="application/json;charset=utf-8")
	@ResponseBody
	public String queryPart(Integer indexPage) {
		APIRequest<Part> api=service.queryPart(indexPage);
		return api.toString();
	}
	//删除零件信息
	@RequestMapping(value="/deletePartInfo.do",produces="application/json;charset=utf-8")
	@ResponseBody
	public String deleteCarType(Integer id) {
		APIRequest api=service.deletePart(id);
		return api.toString();
	}
	//更新零件信息
	@RequestMapping(value="/updatePartInfo.do",produces="application/json;charset=utf-8")
	
	public String updatePartType(Part ct) {
		APIRequest api=service.updatePart(ct); 
		return "redirect:src/page/section_dwl/part.jsp";
	}
	//更新某个零件的信息
	@RequestMapping(value="/toupdatePartType.do")
	
	public String toupdatePartType(Integer id,HttpServletRequest request) {
		APIRequest api=service.queryPartById(id);
		ArrayList<CarType> cList=service2.queryCarTypeForPart();
		// request.setAttribute("api2",service2.queryCarTypeForPart());
		request.setAttribute("api", api);
		request.setAttribute("cList",cList);
		return "src/page/section_dwl/partUpdate";
		
		
	}
	
	
	
		//添加零件的信息时先查询车辆种类
	     // 信息加载到下拉框
		@RequestMapping(value="/toAddPartType.do")
		public String toupAddPartType(HttpServletRequest request) {
			
			ArrayList<CarType> cList=service2.queryCarTypeForPart();
			// request.setAttribute("api2",service2.queryCarTypeForPart());
			request.setAttribute("cList",cList);
			return  "src/page/section_dwl/partAdd";
			
			
		}
	
}
