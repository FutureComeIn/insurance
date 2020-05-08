package com.dxm.insuranceSpring.services;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;

import com.dxm.insuranceSpring.pojo.CarType;
import com.dxm.insuranceSpring.pojo.Data;
import com.dxm.insuranceSpring.utils.APIRequest;

public interface lisuanInfoServices {
	public APIRequest addLisuanInfo(HttpServletRequest request,String remark, MultipartFile file1,MultipartFile file2);
	public APIRequest updateLisuanInfo(HttpServletRequest request,Integer id,String remark, MultipartFile file1,MultipartFile file2);
	public APIRequest deleteLisuanInfo(Integer id);
	public APIRequest<Data> queryLisuanInfo(Integer indexPage);
	public APIRequest queryLisuanInfoById(Integer id);
	
}
