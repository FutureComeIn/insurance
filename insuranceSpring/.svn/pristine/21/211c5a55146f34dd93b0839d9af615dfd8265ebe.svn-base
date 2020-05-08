package com.dxm.insuranceSpring.services.impls;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.RowBounds;
import org.springframework.stereotype.Service;

import com.dxm.insuranceSpring.aspectj.Logaspect;
import com.dxm.insuranceSpring.dao.CarTypeDao;
import com.dxm.insuranceSpring.pojo.CarType;
import com.dxm.insuranceSpring.services.ICarTypeServices;
import com.dxm.insuranceSpring.utils.APIRequest;
import com.dxm.insuranceSpring.utils.Pages;
@Service("carTypeServicesImpls")


public class CarTypeServicesImpls implements ICarTypeServices{
	@Resource
	CarTypeDao dao;
	@Override
	@Logaspect(operationName="添加车辆类型")
	public APIRequest addCarType(CarType ct) {
		// TODO Auto-generated method stub
		APIRequest api=new APIRequest();
		if(dao.addCarType(ct)>0) {
			api.setResult(true);
		}else {
			api.setResult(false);
			api.setMessage("添加失败");
		}
		return api;
	}

	@Override
	@Logaspect(operationName="更新车辆类型ById")
	public APIRequest updateCarTypeByid(CarType ct) {
		// TODO Auto-generated method stub
		APIRequest api=new APIRequest();
		if(dao.updateCarTypeByid(ct)>0) {
			api.setResult(true);
		}else {
			api.setResult(false);
			api.setMessage("更新失败");
		}
		return api;
	}

	@Override
	@Logaspect(operationName="删除车辆类型ById")
	public APIRequest deleteCarType(Integer id) {
		// TODO Auto-generated method stub
		APIRequest api=new APIRequest();
		if(dao.deleteCarType(id)>0) {
			api.setResult(true);
		}else {
			api.setResult(false);
			api.setMessage("删除失败");
		}
		return api;
	}

	@Override
	@Logaspect(operationName="查询车辆类型")
	public APIRequest<CarType> queryCarType(Integer indexPage) {
		// TODO Auto-generated method stub
		if(indexPage==null) {
			indexPage=1;
		}
		int rowcount  = dao.countCarType();
		Pages page = new Pages(rowcount);
		page.setIndexPage(indexPage);
		page.setPageSize(4);
		RowBounds rb = new RowBounds(page.getBeginRow(),page.getPageSize());
		
		
		List<CarType> datas=dao.queryCarType(rb);
		APIRequest<CarType> api=new APIRequest<CarType>();
	
		if(datas.size()>0) {
			api.setResult(true);
			api.setDatas(datas);
			api.setSingerData(page);
		}else {
			api.setResult(false);
			api.setMessage("查询失败");
		}
		return api;
	}

	@Override
	@Logaspect(operationName="查询某个车辆类型ById")
	public APIRequest queryCarTypeById(Integer id) {
		// TODO Auto-generated method stub
		APIRequest api=new APIRequest();
		List<CarType> cartype=dao.queryCarTypeById(id);
		if(cartype.size()>0) {
			api.setResult(true);
			api.setSingerData(cartype.get(0));
		}else {
			api.setResult(false);
			api.setMessage("查找失败");
		}
		return api; 
	}

	@Override
	@Logaspect(operationName="查询车辆类型ByName")
	public APIRequest queryCarInfoTypeByCarName(String carName) {
		APIRequest api=new APIRequest();
		List<CarType> cartype=dao.queryCarInfoTypeByCarName(carName);
		if(cartype.size()>0) {
			api.setResult(true);
			api.setSingerData(cartype.get(0));
		}else {
			api.setResult(false);
			api.setMessage("查找失败");
		}
		return api; 
	}

	@Override
	@Logaspect(operationName="查询所有车辆类型（添加零件）")
	public ArrayList<CarType> queryCarTypeForPart() {
		ArrayList<CarType> cartype=dao.queryCarTypeFroPart();

		return cartype;
		

	}

	
}
