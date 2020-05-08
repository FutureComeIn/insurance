package com.dxm.insuranceSpring.services;


import java.util.ArrayList;

import com.dxm.insuranceSpring.pojo.CarType;
import com.dxm.insuranceSpring.utils.APIRequest;

/**
 * 车辆类型业务接口
 * @author 王威
 *
 */
public interface ICarTypeServices {

	public APIRequest addCarType(CarType ct);
	public APIRequest updateCarTypeByid(CarType ct);
	public APIRequest deleteCarType(Integer id);
	public APIRequest<CarType> queryCarType(Integer indexPage);
	public APIRequest queryCarTypeById(Integer id);
	public ArrayList<CarType> queryCarTypeForPart();
	
	//根据车辆名称模糊查询车辆信息
	public APIRequest queryCarInfoTypeByCarName(String carName );
	
}
