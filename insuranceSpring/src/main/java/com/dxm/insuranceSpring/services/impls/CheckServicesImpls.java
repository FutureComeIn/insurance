package com.dxm.insuranceSpring.services.impls;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.RowBounds;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.dxm.insuranceSpring.aspectj.Logaspect;
import com.dxm.insuranceSpring.dao.CheckDao;
import com.dxm.insuranceSpring.dao.CheckDetailsDao;
import com.dxm.insuranceSpring.dao.ReportDao;
import com.dxm.insuranceSpring.dao.UserDao;
import com.dxm.insuranceSpring.dao.UtilsDao;
import com.dxm.insuranceSpring.pojo.Check;
import com.dxm.insuranceSpring.pojo.CheckDetails;
import com.dxm.insuranceSpring.pojo.Report;
import com.dxm.insuranceSpring.pojo.User;
import com.dxm.insuranceSpring.services.ICheckServices;
import com.dxm.insuranceSpring.utils.APIRequest;
import com.dxm.insuranceSpring.utils.Pages;
import com.dxm.insuranceSpring.utils.PathUtils;

/**
 * 勘察模块实现
 * @author Administrator
 *
 */
@Service("checkServicesImpls")
public class CheckServicesImpls implements ICheckServices{
	@Resource
	CheckDao checkDao;
	@Resource
	CheckDetailsDao cdDao;
	@Resource
	ReportDao reportDao;
	@Resource
	UtilsDao utilsDao;
	@Resource
	UserDao userDao;
	@Override
	@Logaspect(operationName="添加勘察信息")
	public APIRequest addCheck(Check check) {
		// TODO Auto-generated method stub
		//System.out.println(check.getCheckPersonId());
		int count = checkDao.addCheck(check);
		count = reportDao.updateReportStatusByReportId(check.getReportId());
		//System.out.println(count);
		APIRequest api =new APIRequest<>();
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
	@Logaspect(operationName="查询未勘察案件")
	public APIRequest<Report> queryByUnCheck(Report report,Integer indexPage) {
		// TODO Auto-generated method 
		if(indexPage == null) {
			indexPage = 1;
		}
		Integer count = reportDao.countHandleReport(report);
		Pages page = new Pages(count);
		page.setIndexPage(indexPage);
		page.setPageSize(8);
		RowBounds row = new RowBounds(page.getBeginRow(), page.getPageSize());
		List<Report> data = reportDao.queryHandleReport(report,row);
		
		APIRequest<Report> api = new APIRequest<Report>();
		if(data.size()>0) {
			api.setResult(true);
			api.setDatas(data);
			api.setSingerData(page);
		}else {
			api.setResult(false);
			api.setMessage("对不起，当前没有数据!");
		}
		return api;
	}
	
	@Override
	@Logaspect(operationName="查询已勘察案件")
	public APIRequest<Check> queryByChecked(Check check,Integer indexPage) {
		// TODO Auto-generated method stub
		if(indexPage == null) {
			indexPage = 1;
		}
		Integer count = checkDao.countChecked(check);
		Pages page = new Pages(count);
		page.setIndexPage(indexPage);
		page.setPageSize(8);
		RowBounds row = new RowBounds(page.getBeginRow(), page.getPageSize());
		List<Check> data = checkDao.queryChecked(check,row);
		APIRequest<Check> api = new APIRequest<Check>();
		if(data.size() > 0) {
			api.setResult(true);
			api.setDatas(data);
			api.setSingerData(page);
		}else {
			api.setResult(false);
			api.setMessage("对不起,当前没有数据");
		}
		return api;
	}
	
	@Override
	@Logaspect(operationName="更新未勘察案件的状态")
	public APIRequest updateReportCaseStatus(Integer reportId) {
		// TODO Auto-generated method stub
		int count = reportDao.updateReportStatusByReportId(reportId);
		APIRequest api =new APIRequest<>();
		if(count>0) {
			api.setResult(true);
			api.setSingerData(count);
		}else {
			api.setResult(false);
			api.setMessage("修改失败");
		}
		return api;
	}
	
	@Override
	@Logaspect(operationName="查询勘察案件根据条件")
	public APIRequest updateCheckByParam(Check check) {
		// TODO Auto-generated method stub
//		check = new Check();
//		check.setCheckId(1);
//		check.setCheckName("王威");
//		System.out.println(check.getCheckId());
		//System.out.println(checkDetailsIds.length);
		int count = checkDao.updateCheck(check);
//		System.out.println(count);
		APIRequest api =new APIRequest<>();
		if(count>0) {
			api.setResult(true);
			api.setSingerData(count);
		}else {
			api.setResult(false);
			api.setMessage("修改失败");
		}
		return api;
	}
	
	@Override
	@Logaspect(operationName="添加勘察详细信息")
	public APIRequest addCheckDetails(HttpServletRequest request,String[] checkRemarks, MultipartFile... file) {
		// TODO Auto-generated method stub
		int count = 0;
		Integer checkId = utilsDao.queryLastInertId();
		//System.out.println(checkId);
		//System.out.println(file.length);
		for (int i=0;i<file.length;i++) {
			String path = PathUtils.getPath(request, "upload", file[i].getOriginalFilename());
			//System.out.println(file[i].getOriginalFilename());
			try {
				file[i].transferTo(new File(path));
			} catch (IllegalStateException | IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			String checkRemark = checkRemarks[i];
			CheckDetails cd = new CheckDetails();
			cd.setCheckImg(PathUtils.datapath);
			cdDao.add(checkId,cd.getCheckImg(),checkRemark);
			//System.out.println(data);
			count++;
		}
		APIRequest api =new APIRequest<>();
		if(count>0) {
			api.setResult(true);
			api.setSingerData(count);
			
		}else {
			api.setResult(false);
			api.setMessage("勘察详情添加失败");
		}
		return api;
	}
	
//	@Override
//	public APIRequest<CheckDetails> queryCdByCheckId(Integer checkId) {
//		// TODO Auto-generated method stub
//		List<CheckDetails> data = cdDao.queryByCheckId(checkId);
//		APIRequest<CheckDetails> api = new APIRequest<CheckDetails>();
//		if(data.size() > 0) {
//			api.setResult(true);
//			api.setDatas(data);
//		}else {
//			api.setResult(false);
//			api.setMessage("对不起,当前没有数据");
//		}
//		return api;
//	}
	
	@Override
	@Logaspect(operationName="更新勘察明细案件")
	public APIRequest updateCheckDetails(Integer[] checkDetailsIds,String[] checkRemarks) {
		// TODO Auto-generated method stub
		int count = 0;
		//System.out.println(checkDetailsIds.length);
		//System.out.println(checkRemarks.length);
		//循环执行修改
		for(int i=0;i<checkDetailsIds.length;i++) {
			cdDao.updateCdRemark(checkDetailsIds[i],checkRemarks[i]);
			count++;
		}
		//System.out.println(count);
		APIRequest api =new APIRequest<>();
		if(count>0) {
			api.setResult(true);
			api.setSingerData(count);
		}else {
			api.setResult(false);
			api.setMessage("修改失败");
		}
		return api;
	}

	@Override
	@Logaspect(operationName="根据编号查询未勘察案件")
	public APIRequest<Report> queryByUnCheckById(Integer reportId) {
		// TODO Auto-generated method stub
		List<Report> data = reportDao.queryAllReportDetils(reportId);
		APIRequest<Report> api = new APIRequest<Report>();
		if(data.size()>0) {
			api.setResult(true);
			api.setDatas(data);
		}else {
			api.setResult(false);
			api.setMessage("对不起，当前没有数据!");
		}
		return api;
	}

	@Override
	@Logaspect(operationName="勘察详情")
	public APIRequest queryAllAboutCheck(HttpServletRequest request, Integer checkId, Integer reportId) {
		// TODO Auto-generated method stub
		//报案信息
		//System.out.println(reportDao.queryAllReportDetils(reportId).size());
		Report report = reportDao.queryAllReportDetils(reportId).get(0);
		//勘察信息
		Check check = checkDao.queryCheckById(checkId);
		//System.out.println(report);
		//System.out.println(check);
		//勘察明细信息
		List<CheckDetails> cdList = cdDao.queryByCheckId(checkId);
		//System.out.println(cdList.size());
		request.setAttribute("report",report);
		request.setAttribute("check",check);
		request.setAttribute("cdList", cdList);
		APIRequest api = new APIRequest<>();
		if(cdList.size()>0) {
			api.setResult(true);
		}else {
			api.setResult(false);
			api.setMessage("对不起，当前没有数据!");
		}
		return api;
	}

	@Override
	@Logaspect(operationName="根据角色查询用户")
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

	@Override
	@Logaspect(operationName="根据报案Id查询勘察信息")
	public APIRequest queryCheckByReportId(Integer reportId) {
		// TODO Auto-generated method stub
		Check data = checkDao.queryCheckByReportId(reportId);
		APIRequest api = new APIRequest<>();
		api.setResult(true);
		api.setSingerData(data);
		return api;
	}
}
