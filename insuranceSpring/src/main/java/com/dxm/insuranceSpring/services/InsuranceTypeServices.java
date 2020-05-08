package com.dxm.insuranceSpring.services;

import com.dxm.insuranceSpring.pojo.CarType;
import com.dxm.insuranceSpring.pojo.InsuranceType;
import com.dxm.insuranceSpring.utils.APIRequest;

public interface InsuranceTypeServices {
  
	public APIRequest addInsuranceType(InsuranceType it);
	public APIRequest updateInsuranceType(InsuranceType it);
	public APIRequest deleteInsuranceType(Integer id);
	public APIRequest<InsuranceType> queryInsuranceType(Integer indexPage);
	public APIRequest queryInsuranceTypeById(Integer id);
	public APIRequest queryInsuranceByreportId(Integer reportId);
	public APIRequest<InsuranceType> queryInsuranceType();
}
