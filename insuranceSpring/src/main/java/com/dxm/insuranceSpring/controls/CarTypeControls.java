package com.dxm.insuranceSpring.controls;


import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dxm.insuranceSpring.pojo.CarType;
import com.dxm.insuranceSpring.services.ICarTypeServices;
import com.dxm.insuranceSpring.utils.APIRequest;


@Controller
public class CarTypeControls {
	
	@Resource(name="carTypeServicesImpls")
	ICarTypeServices service;
	@RequestMapping(value="/addCarType.do",produces="application/json;charset=utf-8")
	@ResponseBody
	public String addCarType(CarType ct) {
	
		APIRequest api=service.addCarType(ct);
		return api.toString();
	}
	@RequestMapping(value="/loadCarInfo.do",produces="application/json;charset=utf-8")
	@ResponseBody
	public String queryCarType(Integer indexPage) {
		APIRequest<CarType> api=service.queryCarType(indexPage);
		return api.toString();
	}
	@RequestMapping(value="/deleteCarInfo.do",produces="application/json;charset=utf-8")
	@ResponseBody
	public String deleteCarType(Integer id) {
		APIRequest api=service.deleteCarType(id);
		return api.toString();
	}
	@RequestMapping(value="/updateCarInfo.do",produces="application/json;charset=utf-8")
	public String updateCarTypeByid(CarType ct) {
		//System.out.println("ct="+ct);
		APIRequest api=service.updateCarTypeByid(ct);
	
		return "redirect:src/page/section_dwl/CarInfo.jsp";
	}
	
	@RequestMapping(value="/toupdateCarType.do")
	public String toupdateCarType(Integer id,HttpServletRequest request) {
		APIRequest api=service.queryCarTypeById(id);
		request.setAttribute("api", api);
		return "src/page/section_dwl/CarInfoUpdate";
	}
}
