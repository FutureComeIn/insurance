package com.dxm.insuranceSpring.controls;

import java.io.File;
import java.io.IOException;
import java.util.Date;

import javax.annotation.Resource;

import org.apache.catalina.servlet4preview.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.dxm.insuranceSpring.pojo.AdverseCarDamage;
import com.dxm.insuranceSpring.pojo.AdverseCarDamageDetails;
import com.dxm.insuranceSpring.pojo.Assessment;
import com.dxm.insuranceSpring.pojo.CarType;
import com.dxm.insuranceSpring.pojo.Case;
import com.dxm.insuranceSpring.pojo.MyCarDamage;
import com.dxm.insuranceSpring.pojo.MyCarDamageDetails;
import com.dxm.insuranceSpring.pojo.NuclearDamage;
import com.dxm.insuranceSpring.pojo.User;
import com.dxm.insuranceSpring.services.ICarLossServices;
import com.dxm.insuranceSpring.services.ICaseServices;
import com.dxm.insuranceSpring.services.INuclearDamageServices;
import com.dxm.insuranceSpring.services.impls.IUserServicesImpls;
import com.dxm.insuranceSpring.utils.APIRequest;
import com.dxm.insuranceSpring.utils.PathUtils;

/**
 * 车损控制层
 * @author 王威
 *
 */
@Controller
@RequestMapping("src/page/dinsun")
public class CarlossControls {
	@Resource(name="carLossServicesImpls")
	ICarLossServices services;
	
	@Resource(name="caseServicesImpls")
	ICaseServices caseservice;
	
	@Resource(name="iUserServicesImpls")
	IUserServicesImpls userservice;
	
	@Resource(name="nuclearDamageServicelmpls")
	INuclearDamageServices nuclearservice;
	
	@RequestMapping(value="/queryAssessmentById.do",produces="application/json;charset=utf-8")
	@ResponseBody
	public String queryAssessmentById(Integer id) {
		APIRequest<Assessment> api = services.queryAssessmentById(id);
		return api.toString();
	}
	
	/**
	 * 根据查询条件（案件信息，当前页面）查询案件信息
	 * @param ca
	 * @param indexPage
	 * @return
	 */
	@RequestMapping(value="/queryCaseInfoByHandleAndCurrentPage.do",produces="application/json;charset=utf-8")
	@ResponseBody
	public String queryCaseInfoByHandleAndCurrentPage(Case ca,Integer indexPage) {
		if(indexPage==null) {
			indexPage=1;
		}
		APIRequest<Case> api =services.queryCaseInfoByHandleAndCurrentPage(ca, indexPage);
		return api.toString();
	}
	
	/**
	 * 根据案件编号查找定损的案件信息以及购买险种信息
	 * @param caseId
	 * @return
	 */
	@RequestMapping(value="/queryMyHandleCaseByCaseId.do",produces="application/json;charset=utf-8")
	public String queryMyHandleCaseByCaseId(HttpServletRequest request,Case ca) {
		APIRequest api=services.queryMyHandleCaseByCaseId(ca);
		request.setAttribute("api", api);
		return "src/page/dinsun/begindinsun";
	}
	
	
	/**
	 *根据案件编号 查询所有的定损信息以及详情
	 * @param id
	 * @return
	 */
	@RequestMapping(value="/queryAllCarLossInfoByCaseId.do",produces="application/json;charset=utf-8")
	@ResponseBody
	public String queryAllCarLossInfoByCaseId(Integer caseid) {
		APIRequest<Assessment> api=services.queryAllCarLossInfoByCaseId(caseid);
		return api.toString();
	} 

	

	
	/**
	 * 添加定损信息
	 * @param at
	 * @return
	 */
	@RequestMapping(value="/addCarLossAllInfo.do",produces="application/json;charset=utf-8")
	@ResponseBody
	public String addCarLossAllInfo(Assessment at) {
		APIRequest api=services.addCarLossAllInfo(at);
		return api.toString();
	}
	
	/**
	 * 更新定损信息
	 * @param at
	 * @return
	 */
	@RequestMapping(value="/updateAssessment.do",produces="application/json;charset=utf-8")
	@ResponseBody
	public String updateAssessment(Assessment at) {
		APIRequest api=services.updateAssessment(at);
		return api.toString();
	}
	
	/**
	 * 更新我方车损信息
	 * @param mcd
	 * @return
	 */
	@RequestMapping(value="/updateMyCarDamage.do",produces="application/json;charset=utf-8")
	@ResponseBody
	public String updateMyCarDamage(MyCarDamage mcd) {
		APIRequest api=services.updateMyCarDamage(mcd);
		return api.toString();
	}
	
	/**
	 * 更新我方车损详情
	 * @param mcdd
	 * @return
	 */
	@RequestMapping(value="/updateMyCarDamageDetails.do",produces="application/json;charset=utf-8")
	@ResponseBody
	public String updateMyCarDamageDetails(MyCarDamageDetails mcdd,Assessment at) {
		APIRequest api=services.updateMyCarDamageDetails(mcdd,at);
		return api.toString();
	}
	
	/**
	 * 删除我方车损详情
	 * @param id
	 * @return
	 */
	@RequestMapping(value="/deleteMyCarDamageDetails.do",produces="application/json;charset=utf-8")
	@ResponseBody
	public String deleteMyCarDamageDetails(MyCarDamageDetails mcdd ) {
		APIRequest api=services.deleteMyCarDamageDetails(mcdd);
		return api.toString();
	}
	
	/**
	 * 更新对方车损信息
	 * @param acd
	 * @return
	 */
	@RequestMapping(value="/updateAdverseCarDamage.do",produces="application/json;charset=utf-8")
	@ResponseBody
	public String updateAdverseCarDamage(AdverseCarDamage acd) {
		APIRequest api=services.updateAdverseCarDamage(acd);
		return api.toString();
	}
	
	/**
	 * 更新对方车损以及详情
	 * @param acdd
	 * @return
	 */
	@RequestMapping(value="/updateAdverseCarDamageDetails.do",produces="application/json;charset=utf-8")
	@ResponseBody
	public String updateAdverseCarDamageDetails(AdverseCarDamageDetails acdd,Assessment at) {
		
		APIRequest api=services.updateAdverseCarDamageDetails(acdd,at);
		return api.toString();
	}
	
	/**
	 * 删除对方车损详情
	 * @param id
	 * @return
	 */
	@RequestMapping(value="/deleteAdverseCarDamageDetails.do",produces="application/json;charset=utf-8")
	@ResponseBody
	public String deleteAdverseCarDamageDetails(AdverseCarDamageDetails acdd) {
		APIRequest api=services.deleteAdverseCarDamageDetails(acdd);
		return api.toString();
	}
	
	
	/**
	 * 根据车辆类型名模糊查询车辆信息
	 * @param carName
	 * @return
	 */
	@RequestMapping(value="/queryCarTypeByCarName.do",produces="application/json;charset=utf-8")
	@ResponseBody
	public String queryCarTypeByCarName(String carName){
		APIRequest<CarType> api=services.queryCarTypeByCarName(carName);
		return api.toString();
	}
	
	//public APIRequest
	
	/**
	 * 根据条件查找信息定损
	 * @param id
	 * @return
	 */
	@RequestMapping(value="/queryAssessmentByTerm.do",produces="application/json;charset=utf-8")
	@ResponseBody
	public String queryAssessmentByTerm(Assessment at,Integer indexPage){
		System.out.println(at.getUserId());
		if(indexPage==null) {
			indexPage=1;
		}
		APIRequest<Assessment> api=services.queryAssessmentByTerm(at, indexPage);
		return api.toString();
	}
	
	
	/**
	 * 查询定损信息和案件信息
	 * @param request
	 * @param at
	 * @return
	 */
	@RequestMapping(value="/queryAssessmentAllInfo.do",produces="application/json;charset=utf-8")
	public String queryAssessmentAllInfo(HttpServletRequest request,Assessment at){
		services.queryAssessmentAllInfo(request, at);
		return "src/page/dinsun/carlossdetail_info";
	}
	
	/**
	 * 查询定损信息和案件信息
	 * @param request
	 * @param at
	 * @return
	 */
	@RequestMapping(value="/queryToDinsunAllInfo.do",produces="application/json;charset=utf-8")
	public String queryToDinsunAllInfo(HttpServletRequest request,Assessment at){
		services.queryAssessmentAllInfo(request, at);
		return "src/page/dinsun/dinsuninfo";
	}
	
	@RequestMapping(value="/queryUserByRoleId.do",produces="application/json;charset=utf-8")
	@ResponseBody
	public String queryUserByRoleId(){
		APIRequest<User> api=userservice.queryUserByRoleId();
		return api.toString();
	}
	/**
	 * 通过定损
	 * @return
	 */
	@RequestMapping(value="/PassDinsun.do",produces="application/json;charset=utf-8")
	public String PassDinsun(NuclearDamage ncd,Assessment at) {
		Case ca=new Case();
		ca.setCaseId(at.getCaseId());
		ca.setCaseStatus(2);
		ca.setNuclearDamageId(ncd.getUserId());
		nuclearservice.addNuclearDamage(ncd);
		at.setStatus(2);
		at.setUserId(null);
		services.updateAssessmentStatus(at);
		caseservice.updateCase(ca);
		return "src/page/dinsun/loss_assessment";
	}
	/**
	 * 删除定损
	 * @return
	 */
	@RequestMapping(value="/DeleteAssessment.do",produces="application/json;charset=utf-8")
	@ResponseBody
	public String DeleteAssessment(Assessment at) {
		APIRequest api=new APIRequest();
		Case ca=new Case();
		ca.setCaseId(at.getCaseId());
		ca.setCaseStatus(3);
		caseservice.updateCase(ca);
		if(services.deleteAssessmentAndChild(at)) {
			api.setResult(true);
			api.setMessage("删除成功");
		}else {
			api.setResult(false);
			api.setMessage("删除失败");
		}
		return api.toString();
	}
	
	@RequestMapping(value="/addMyCarDamage.do",produces="application/json;charset=utf-8")
	@ResponseBody
	public String addMyCarLoss(MyCarDamage mcd) {
		System.out.println(mcd.toString());
		Integer temp=services.addMyCarDamage(mcd);
		APIRequest api=new APIRequest();
		api.setSingerData(temp);
		return api.toString();
	}
	
	@RequestMapping(value="/addAdverseCarDamage.do",produces="application/json;charset=utf-8")
	@ResponseBody
	public String addAdverseCarLoss(AdverseCarDamage acd) {
		Integer temp=services.addAdverseCarDamage(acd);
		APIRequest api=new APIRequest();
		api.setSingerData(temp);
		return api.toString();
	}
	
	@RequestMapping(value="/addMyCarDamageDetails.do",produces="application/json;charset=utf-8")
	@ResponseBody
	public String addMyCarDamageDetails(HttpServletRequest request,Integer myCarDamageId
			,@RequestParam(value="remark")String[] remark
			,@RequestParam(value="damagePartName")String[] damagePartName
			,@RequestParam(value="damagePartId")Integer[] damagePartId
			,@RequestParam(value="amount")Integer[] amount
			,@RequestParam(value="price")Integer[] price
			,@RequestParam(value="place")String[] place
			,@RequestParam(value="damageImg")MultipartFile... file) {
		Integer count=0;
		for (int i=0;i<file.length;i++) {
			String path = PathUtils.getPath(request, "upload", file[i].getOriginalFilename());
			//System.out.println(file[i].getOriginalFilename());
			try {
				file[i].transferTo(new File(path));
			} catch (IllegalStateException | IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			MyCarDamageDetails mcdd = new MyCarDamageDetails();
			mcdd.setDamageImg(PathUtils.datapath);
			mcdd.setAmount(amount[i]);
			mcdd.setDamagePartId(damagePartId[i]);
			mcdd.setDamagePartName(damagePartName[i]);
			mcdd.setMyCarDamageId(myCarDamageId);
			mcdd.setPlace(place[i]);
			mcdd.setPrice(price[i]);
			mcdd.setRemark(remark[i]);
			count+=services.addMyCarDamageDetails(mcdd);
			//System.out.println(mcdd.toString());
			
		}
		if(count==file.length) {
			return "true";
		}
		//Integer temp=services.addMyCarDamage(mcd);
		return "false";
	}
	
	@RequestMapping(value="/addAdverseCarDamageDetails.do",produces="application/json;charset=utf-8")
	@ResponseBody
	public String addAdverseCarDamageDetails(HttpServletRequest request,Integer adverseCarDamageId
			,@RequestParam(value="remark")String[] remark
			,@RequestParam(value="damagePartName")String[] damagePartName
			,@RequestParam(value="damagePartId")Integer[] damagePartId
			,@RequestParam(value="amount")Integer[] amount
			,@RequestParam(value="price")Integer[] price
			,@RequestParam(value="place")String[] place
			,@RequestParam(value="damageImg")MultipartFile... file) {
		Integer count=0;
		for (int i=0;i<file.length;i++) {
			String path = PathUtils.getPath(request, "upload", file[i].getOriginalFilename());
			//System.out.println(file[i].getOriginalFilename());
			try {
				file[i].transferTo(new File(path));
			} catch (IllegalStateException | IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			AdverseCarDamageDetails acdd = new AdverseCarDamageDetails();
			acdd.setDamageImg(PathUtils.datapath);
			acdd.setAmount(amount[i]);
			acdd.setDamagePartId(damagePartId[i]);
			acdd.setDamagePartName(damagePartName[i]);
			acdd.setAdverseCarDamageId(adverseCarDamageId);
			acdd.setPlace(place[i]);
			acdd.setPrice(price[i]);
			acdd.setRemark(remark[i]);
			count+=services.addAdverseCarDamageDetails(acdd);
			//System.out.println(mcdd.toString());
			
		}
		if(count==file.length) {
			return "true";
		}
		//Integer temp=services.addMyCarDamage(mcd);
		return "false";
	}
	
	@RequestMapping(value="/addAssessment.do",produces="application/json;charset=utf-8")
	@ResponseBody
	public String addAssessment(Assessment at) {
		System.out.println(at.toString());
		Case ca=new Case();
		//ca.setCaseId(at.getCaseId());
		ca.setCaseId(at.getCaseId());
		ca.setCaseStatus(1);
		at.setStatus(1);
		Date date=new Date();
		at.setAssessmentTime(date.toString());
		System.out.println(at.toString());
		APIRequest api=services.addCarLossAllInfo(at);
		if(api.isResult()&caseservice.updateCase(ca).isResult()) {
			return api.toString();
		}else {
			api.setResult(false);
			api.setMessage("提交失败");
			return api.toString();
		}
		
	}
}
