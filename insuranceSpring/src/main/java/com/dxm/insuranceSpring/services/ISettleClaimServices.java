package com.dxm.insuranceSpring.services;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.coyote.http11.Http11AprProtocol;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.dxm.insuranceSpring.pojo.SettleClaim;
import com.dxm.insuranceSpring.utils.APIRequest;

public interface ISettleClaimServices {
	//添加理赔信息

		

		public APIRequest AddSettleClaim(SettleClaim sc);
		

		//修改理赔信息
		public APIRequest updateSettleClaim(Integer caseId);
		
		//查看理赔信息
		public APIRequest querySettleClaim();
		
		//根据理赔状态查看理赔信息
		public APIRequest querySettleClaimByStatus(Integer settleClaimstatus);
		
		//根据用户编号查看理赔信息
		public APIRequest  querySettleClaimById(Integer userId);
		
		//根据案件id删除理赔信息
		public APIRequest deleteSettleClaimBycaseId(Integer caesId);
		
		//根据案件id查询理赔信息
		public void querySettleClaimBycaseId(HttpServletRequest request,Integer caseId);
}
