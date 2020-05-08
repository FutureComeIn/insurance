package com.dxm.insuranceSpring.services;
import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Param;
import org.springframework.web.multipart.MultipartFile;

import com.dxm.insuranceSpring.pojo.Check;
import com.dxm.insuranceSpring.pojo.CheckDetails;
import com.dxm.insuranceSpring.pojo.Report;
import com.dxm.insuranceSpring.utils.APIRequest;

/**
 *    勘察模块业务
 * @author Administrator
 *
 */
public interface ICheckServices {
	
	//勘察信息
	
	/**
	 * 添加勘察信息
	 * @param check
	 * @return
	 */
	public APIRequest addCheck(Check check); 
	
	/**
	 * 查询未勘察案件全部
	 * @param request
	 * @param indexPage
	 */
	public APIRequest<Report> queryByUnCheck(Report report, Integer indexPage);
	
	/**
	 * 查询未勘察案件根据Id
	 * @param request
	 * @param indexPage
	 */
	public APIRequest<Report> queryByUnCheckById(Integer reportId);
	
	/**
	 * 查询已勘察案件
	 * @param request
	 * @param indexPage
	 */
	public APIRequest<Check> queryByChecked(Check check,Integer indexPage);
	
	/**
	 * 根据报案编号，修改报案信息状态
	 * @param reportId
	 * @return
	 */
	public APIRequest updateReportCaseStatus(Integer reportId);
	
	/**
	 * 根据勘察信息对象,更新勘察信息
	 * @param check
	 * @return
	 */
	public APIRequest updateCheckByParam(Check check);
	
	
	//勘察明细信息
	
	/**
	 * 添加勘察明细信息
	 * @param cd
	 * @return
	 */
	public APIRequest addCheckDetails(HttpServletRequest request,String[] checkRemarks, MultipartFile... file);
	
	/**
	 * 根据勘察信息编号 也就是 checkId查询勘察明细信息
	 * @param request
	 * @param checkId
	 */
	//public APIRequest<CheckDetails> queryCdByCheckId(Integer checkId);
	
	/**
	 * 根据勘察明细信息编号,更新勘察明细备注信息
	 * @param checkRemark
	 * @param checkDetailsId
	 * @return
	 */
	public APIRequest updateCheckDetails(Integer[] checkDetailsIds,String[] checkRemarks);
	
	/**
	 * 根据报案编号查询报案信息 返回对象
	 * 根据勘察编号查询勘察信息  返回对象
	 * 根据勘察编号 查询勘察明细信息 返回集合
	 * @param request
	 * @param checkId
	 * @param reportId
	 * @return
	 */
	public APIRequest queryAllAboutCheck(HttpServletRequest request,Integer checkId,Integer reportId);
	
	public APIRequest queryUserByRoleName(String roleName);
	
	public APIRequest queryCheckByReportId(Integer reportId);
}
