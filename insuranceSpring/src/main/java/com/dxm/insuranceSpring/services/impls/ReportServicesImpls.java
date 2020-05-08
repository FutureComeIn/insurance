package com.dxm.insuranceSpring.services.impls;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.RowBounds;
import org.springframework.stereotype.Service;

import com.dxm.insuranceSpring.aspectj.Logaspect;
import com.dxm.insuranceSpring.dao.ReportDao;
import com.dxm.insuranceSpring.dao.UserDao;
import com.dxm.insuranceSpring.pojo.Report;
import com.dxm.insuranceSpring.pojo.User;
import com.dxm.insuranceSpring.pojo.Warranty;
import com.dxm.insuranceSpring.services.IReportServices;
import com.dxm.insuranceSpring.utils.APIRequest;
import com.dxm.insuranceSpring.utils.Pages;
/**
 * 实现报案信息Services
 * @author 熊珍
 *
 */
@Service("reportServicesImpls")
public class ReportServicesImpls implements IReportServices{
	@Resource
	private ReportDao dao;
	@Resource
	UserDao userDao;
	@Override
	@Logaspect(operationName="查询保单信息")
	public APIRequest<Warranty> queryWarranty(Warranty warranty,Integer indexPage) {
		// 查询保单信息
		if(indexPage==null) {
			indexPage=1;
		}
		int rowcount  = dao.countWarranty(warranty);
		Pages page = new Pages(rowcount);
		page.setIndexPage(indexPage);
		page.setPageSize(5);
		//System.out.println(page.getBeginRow()+":"+page.getEndRow());
		RowBounds rb = new RowBounds(page.getBeginRow(),page.getPageSize());
		List<Warranty> data = dao.queryWarranty(warranty, rb);
		APIRequest<Warranty> api = new APIRequest<>();
		
		if(data.size()>0) {
			api.setResult(true);
			api.setDatas(data);
			api.setSingerData(page);
		}else {
			api.setResult(false);
			api.setMessage("对不起，当前没有数据！");
		}
		return api;
	}

	@Override
	@Logaspect(operationName="添加报案信息")
	public APIRequest addReport(Report report) {
		// TODO 添加报案信息
		int count=dao.addReport(report);
		APIRequest api=new APIRequest();
		if(count>0) {
			api.setResult(true);
			api.setSingerData(count);
		}else {
			api.setResult(false);
			api.setMessage("添加失败");
		}
		return api;
	}

	@Override
	@Logaspect(operationName="查询所有的报案信息")
	public APIRequest<Report> queryAllReport(Report report,Integer indexPage) {
		// TODO 查询所有的报案信息
		if(indexPage==null) {
			indexPage=1;
		}
		int rowcount  = dao.countReport(report);
		Pages page = new Pages(rowcount);
		page.setIndexPage(indexPage);
		page.setPageSize(5);
//		System.out.println(page.getPageCount());
		RowBounds rb = new RowBounds(page.getBeginRow(),page.getPageSize());
		List<Report> data = dao.queryAllReport(report, rb);
//		System.out.println(data);
		
		APIRequest<Report> api = new APIRequest<Report>();
		
		if(data.size()>0) {
			api.setResult(true);
			api.setDatas(data);
			api.setSingerData(page);
		}else {
			api.setResult(false);
			api.setMessage("对不起，当前没有数据！");
		}
		return api;
	}

	@Override
	@Logaspect(operationName="修改报案信息")
	public APIRequest updateReport(Report report) {
		// TODO 修改报案信息
		int count = dao.updateReport(report);
		APIRequest api=new APIRequest();
		if(count>0) {
			api.setResult(true);
			api.setMessage("更新成功");
			api.setSingerData(count);
		}else {
			api.setResult(false);
			api.setMessage("更新失败");
		}
		return api;
	}

	@Override
	@Logaspect(operationName="修改报案信息中的案件状态")
	public APIRequest updateReportStatus(Integer reportId) {
		// TODO 修改报案信息中的案件状态
		int ct=dao.updateReportStatus(reportId);
		APIRequest api=new APIRequest();
		if(ct>0) {
			api.setResult(true);
			api.setSingerData(ct);
		}else {
			api.setResult(false);
			api.setMessage("更新失败");
		}
		return api;
	}

	@Override
	@Logaspect(operationName="未勘察案件查询")
	public APIRequest<Report> queryHandleReport(Report report,Integer indexPage) {
		// TODO 未勘察案件查询
		if(indexPage==null) {
			indexPage=1;
		}
		int rowcount  = dao.countHandleReport(report);
		Pages page = new Pages(rowcount);
		page.setIndexPage(indexPage);
		page.setPageSize(5);
//		System.out.println(page.getPageCount());
		RowBounds rb = new RowBounds(page.getBeginRow(),page.getPageSize());
		List<Report> data = dao.queryHandleReport(report, rb);
		
		APIRequest<Report> api = new APIRequest<>();
		
		if(data.size()>0) {
			api.setResult(true);
			api.setDatas(data);
			api.setSingerData(page);
		}else {
			api.setResult(false);
			api.setMessage("对不起，当前没有数据！");
		}
		return api;
	}

	@Override
	@Logaspect(operationName="根据案件编号修改案件状态,1表示未勘察")
	public APIRequest updateReportStatusByReportId(Integer reportId) {
		// TODO 根据案件编号修改案件状态,1表示未勘察
		APIRequest api=new APIRequest();
		if(dao.updateReportStatusByReportId(reportId)>0) {
			api.setResult(true);
		}else {
			api.setResult(false);
			api.setMessage("更新失败");
		}
		return api;
	}

	@Override
	@Logaspect(operationName="查询报案信息详情")
	public APIRequest<Report> queryAllReportDetils(Integer reportId) {
		// TODO 查询报案信息详情
		List<Report> data = dao.queryAllReportDetils(reportId);
		APIRequest<Report> api = new APIRequest<>();
		if(data.size()>0) {
			api.setResult(true);
			api.setDatas(data);
			api.setSingerData(data.get(0));
		}else {
			api.setResult(false);
			api.setMessage("对不起，当前没有数据！");
		}
		return api;
	}

	@Override
	@Logaspect(operationName="未指派案件查询")
	public APIRequest<Report> queryUnHandleReport(Report report,Integer indexPage) {
		// TODO 未指派案件查询
		if(indexPage==null) {
			indexPage=1;
		}
		int rowcount  = dao.countUnHandleReport(report);
		Pages page = new Pages(rowcount);
		page.setIndexPage(indexPage);
		page.setPageSize(5);
		RowBounds rb = new RowBounds(page.getBeginRow(),page.getPageSize());
		List<Report> data = dao.queryUnHandleReport(report, rb);
		
		APIRequest<Report> api = new APIRequest<>();
		
		if(data.size()>0) {
			api.setResult(true);
			api.setDatas(data);
			api.setSingerData(page);
		}else {
			api.setResult(false);
			api.setMessage("对不起，当前没有数据！");
		}
		return api;
	}

	@Override
	@Logaspect(operationName="处理的案件查询查看详情")
	public APIRequest<Report> queryHandleReportDetails(Integer reportId) {
		// TODO 处理的案件查询查看详情
		List<Report> data = dao.queryHandleReportDetails(reportId);
		APIRequest<Report> api = new APIRequest<>();
		if(data.size()>0) {
			api.setResult(true);
			api.setDatas(data);
			api.setSingerData(data.get(0));
		}else {
			api.setResult(false);
			api.setMessage("对不起，当前没有数据！");
		}
		return api;
	}


	@Override
	@Logaspect(operationName="根据保单编号查询保单信息详情")
	public APIRequest<Warranty> queryWarrantyDetilsById(Integer warrantyId) {
		// TODO 根据保单编号查询保单信息详情
		List<Warranty> data = dao.queryWarrantyDetilsById(warrantyId);
		APIRequest<Warranty> api = new APIRequest<>();
		if(data.size()>0) {
			api.setResult(true);
			api.setDatas(data);
			api.setSingerData(data.get(0));
		}else {
			api.setResult(false);
			api.setMessage("对不起，当前没有数据！");
		}
		return api;
	}


//	@Override
//	@Logaspect(operationName="查询用户")
//	public APIRequest queryUserByRoleName(String roleName) {
//		// TODO Auto-generated method stub
//		List<User> data = userDao.queryUserByRoleName(roleName);
//		APIRequest<User> api = new APIRequest<User>();
//		if(data.size()>0) {
//			api.setResult(true);
//			api.setDatas(data);
//		}else {
//			api.setResult(false);
//			api.setMessage("对不起，当前没有数据!");
//		}
//		return api;
//	}
	@Override
	@Logaspect(operationName="查询用户")
	public APIRequest queryUserByRoleName(String roleName) {
		// TODO Auto-generated method stub
		List<User> data = userDao.queryUserByRoleName(roleName);
		APIRequest<User> api = new APIRequest<User>();
		if(data.size()>0) {
			api.setResult(true);
			api.setDatas(data);
		}else {
			api.setResult(false);
			api.setMessage("对不起，当前没有数据!");
		}
		return api;
	}

}
