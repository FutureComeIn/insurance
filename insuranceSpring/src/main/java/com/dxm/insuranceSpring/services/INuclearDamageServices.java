package com.dxm.insuranceSpring.services;

import java.util.List;

import org.apache.catalina.servlet4preview.http.HttpServletRequest;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.dxm.insuranceSpring.pojo.Assessment;
import com.dxm.insuranceSpring.pojo.NuclearDamage;
import com.dxm.insuranceSpring.utils.APIRequest;

public interface INuclearDamageServices {
		//添加核损
			public APIRequest addNuclearDamage(NuclearDamage ncd);
			
		//查看核损案件
			public APIRequest queryNuclearDamage(Integer UserId);
			
		//根据核损状态查看已核损案件
			public APIRequest queryNuclearDamageByStatus(String nuclearDamageStatus);
		
			
		//修改核损信息
			public APIRequest updateNuclearDamage(Integer NuclearDamageid);
		
			//驳回   删除核损信息
			public APIRequest deleteNuclearDamage(Integer nuclearDamageId);
			
			//
			public void queryNuclearDamageByNuclearDamageId(HttpServletRequest request,Integer nuclearDamageId);

			//
			public APIRequest queryNuclearDamageByNuclearId(Integer nuclearDamageId);
}
