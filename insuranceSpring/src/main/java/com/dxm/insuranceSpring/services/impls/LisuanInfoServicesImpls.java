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
import com.dxm.insuranceSpring.dao.DataDao;
import com.dxm.insuranceSpring.dao.UtilsDao;
import com.dxm.insuranceSpring.pojo.Data;
import com.dxm.insuranceSpring.services.lisuanInfoServices;
import com.dxm.insuranceSpring.utils.APIRequest;
import com.dxm.insuranceSpring.utils.Pages;
import com.dxm.insuranceSpring.utils.PathUtils;
import com.dxm.insuranceSpring.utils.PathUtils2;
@Service("lisuanInfoServicesImpls")
public class LisuanInfoServicesImpls implements lisuanInfoServices {
	@Resource
	UtilsDao utilsDao;
    @Resource 
    DataDao dao;
    @Logaspect(operationName="添加理赔资料")
    public APIRequest addLisuanInfo(HttpServletRequest request, String remark, MultipartFile file1,
			MultipartFile file2) {	// TODO Auto-generated method stub
				//System.out.println(checkId);
				//System.out.println(file.length);
			//	PathUtils p1 = new PathUtils();
		//		PathUtils p2 = new PathUtils();
					String path1 = PathUtils.getPath(request, "upload", file1.getOriginalFilename());
					String path2 = PathUtils2.getPath(request, "upload", file2.getOriginalFilename());
					//System.out.println(file[i].getOriginalFilename());
					try {
						file1.transferTo(new File(path1));
						file2.transferTo(new File(path2));
					} catch (IllegalStateException | IOException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
				}
				Data dt=new Data();
				dt.setRemark(remark);
				dt.setSpecificList(PathUtils.datapath);
				dt.setSpecificInvoice(PathUtils2.datapath);
				int count = dao.addData(dt);
				System.out.println(count);
				APIRequest api =new APIRequest<>();
				if(count>0) {
					api.setResult(true);
					api.setSingerData(count);
					
				}else {
					api.setResult(false);
					api.setMessage("理赔信息添加失败");
				}
				return api;
			}

	@Override
	  @Logaspect(operationName="更新理赔资料")
	public APIRequest updateLisuanInfo(HttpServletRequest request,Integer id, String remark, MultipartFile file1,
			MultipartFile file2) {	// TODO Auto-generated method stub
		
			String path1 = PathUtils.getPath(request, "upload", file1.getOriginalFilename());
			String path2 = PathUtils2.getPath(request, "upload", file2.getOriginalFilename());
			//System.out.println(file[i].getOriginalFilename());
			try {
				file1.transferTo(new File(path1));
				file2.transferTo(new File(path2));
			} catch (IllegalStateException | IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
		}
		Data dt=new Data();
		dt.setDataId(id);
		dt.setRemark(remark);
		dt.setSpecificList(PathUtils.datapath);
		dt.setSpecificInvoice(PathUtils2.datapath);
		int count = dao.updateData(dt);
		
		APIRequest api =new APIRequest<>();
		if(count>0) {
			api.setResult(true);
			api.setSingerData(count);
			
		}else {
			api.setResult(false);
			api.setMessage("理赔信息修改失败");
		}
		return api;
	
	}

	@Override
	  @Logaspect(operationName="删除理赔资料")
	public APIRequest deleteLisuanInfo(Integer id) {
		APIRequest api=new APIRequest();
		if(dao.deleteData(id)>0) {
			api.setResult(true);
		}else {
			api.setResult(false);
			api.setMessage("删除失败");
		}
		return api;
	}

	@Override
	  @Logaspect(operationName="查询理赔资料")
	public APIRequest<Data> queryLisuanInfo(Integer indexPage) {
		if(indexPage==null) {
			indexPage=1;
		}
		int rowcount  = dao.countLisuanInfo();
		Pages page = new Pages(rowcount);
		page.setIndexPage(indexPage);
		page.setPageSize(4);
		RowBounds rb = new RowBounds(page.getBeginRow(),page.getPageSize());
		
		
		List<Data> datas=dao.queryLisuanInfo(rb);
		APIRequest<Data> api=new APIRequest<Data>();
	
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
	  @Logaspect(operationName="查询理赔资料ById")
	public APIRequest queryLisuanInfoById(Integer id) {
		APIRequest api=new APIRequest();
		List<Data> data=dao.queryDataById(id);
		if(data.size()>0) {
			api.setResult(true);
			api.setSingerData(data.get(0));
		}else {
			api.setResult(false);
			api.setMessage("查找失败");
	}
		return api;
	}
	
}


