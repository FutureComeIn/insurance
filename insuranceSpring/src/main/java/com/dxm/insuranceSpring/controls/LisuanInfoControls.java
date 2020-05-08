package com.dxm.insuranceSpring.controls;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.dxm.insuranceSpring.pojo.CarType;
import com.dxm.insuranceSpring.pojo.Data;
import com.dxm.insuranceSpring.services.lisuanInfoServices;
import com.dxm.insuranceSpring.utils.APIRequest;
@Controller
public class LisuanInfoControls {
	
	@Resource(name="lisuanInfoServicesImpls")
	lisuanInfoServices service;
	@RequestMapping(value="/addData.do",produces="application/json;charset=utf-8")
	@ResponseBody
	public String addData(HttpServletRequest request,String remark, @RequestParam(value="specificList")MultipartFile file1,@RequestParam(value="specificInvoice")MultipartFile file2) {
		System.out.println(remark+ "/t"+file1+"/t"+file2);
		APIRequest api = service.addLisuanInfo(request, remark, file1, file2);
		
		return api.toString();
	}
	
		@RequestMapping(value="/loadLisuanInfo.do",produces="application/json;charset=utf-8")
		@ResponseBody
		public String queryLisuanInfo(Integer indexPage) {
			APIRequest<Data> api=service.queryLisuanInfo(indexPage);
			return api.toString();
		}
		
		@RequestMapping(value="/deleteLisuanInfo.do",produces="application/json;charset=utf-8")
		@ResponseBody
		public String deleteCarType(Integer id) {
			APIRequest api=service.deleteLisuanInfo(id);
			return api.toString();
		}
		//根据id查询（修改）
		@RequestMapping(value="/toupdateLisuanInfo.do")
		public String toupdateLisuanInfo(Integer id,HttpServletRequest request) {
			APIRequest api=service.queryLisuanInfoById(id);
			request.setAttribute("api", api);
			return "src/page/section_dwl/lisuanInfoUpdate";
		}
		//修改 updateLisuanInfo
		@RequestMapping(value="/updateLisuanInfo.do",produces="application/json;charset=utf-8")
		@ResponseBody
		public String updateCarTypeByid(HttpServletRequest request,@RequestParam(value="dataId")Integer id,String remark, @RequestParam(value="specificList")MultipartFile file1,@RequestParam(value="specificInvoice")MultipartFile file2) {
			APIRequest api=service.updateLisuanInfo(request, id,remark, file1, file2);
			return api.toString();
			//return "redirect:src/page/section_dwl/lisuanInfo.jsp";
		}
}
