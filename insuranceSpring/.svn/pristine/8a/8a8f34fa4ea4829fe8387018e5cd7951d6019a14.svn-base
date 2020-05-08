package com.dxm.insuranceSpring.services;

import javax.servlet.http.HttpServletRequest;

import com.dxm.insuranceSpring.pojo.Case;
import com.dxm.insuranceSpring.utils.APIRequest;

/**
 *    案件信息业务层接口
 * @author Administrator
 *
 */
public interface ICaseServices {
	/**
	 * 添加案件信息
	 * @param tcase
	 * @return
	 */
	public APIRequest addCase(Case tcase);
	
	/**
	 * 查询所有案件信息
	 * @param request
	 * @param indexPage
	 */
	public APIRequest<Case> queryByList(Case tacse,Integer indexPage);
	
	/**
	 * 动态查询案件信息
	 * @param request
	 * @param tcase
	 */
	public APIRequest<Case> queryByCaseByTerm(Case tcase,Integer indexPage);
	
	/**
	 * 动态更新案件信息
	 * @param tcase
	 * @return
	 */
	public APIRequest updateCase(Case tcase);
}
