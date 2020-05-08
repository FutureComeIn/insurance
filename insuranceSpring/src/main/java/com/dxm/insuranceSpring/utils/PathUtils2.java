package com.dxm.insuranceSpring.utils;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

public class PathUtils2 {

	public static String datapath; //文件夹名+图片名(存储在数据库的img字段)
	
	/**
	 * 参数解析：fileName是上传的图片的原始名称,作用是提供 后缀
	 * 		dirName:文件夹名(一般是传 upload 过来)
	 * 		request: request.getServletContext().getRealPath("/")->得到工程所在的绝对路径
	 *        		  F:\new_eclipsework_maven\springbootbbs2\src\main\webapp 
	 * @return 返回的是图片上传后存放的绝对路径
	 */
	public static String getPath(HttpServletRequest request,String dirName,String fileName) {
		String path = request.getServletContext().getRealPath("/")+dirName+"/";
		/*
		 * System.out.println("PathUtils="+path);
		   F:\new_eclipsework_maven\insuranceSpring\src\main\webapp upload/  
		*/
		
		File file = new File(path); //创建文件夹upload
		if(!file.exists()) {
			file.mkdir();
		}
		
		SimpleDateFormat sdf = new SimpleDateFormat("MMddHHmmssSSS");
		
		String datastr = sdf.format(new Date())+"S";
	    String fix = fileName.substring(fileName.lastIndexOf("."),fileName.length());
	    
	    String fname = datastr + fix; 		//图片名：时间戳+后缀
	    datapath = dirName+ "/" + fname; 	//数据库文件列的字段：文件夹名+图片名
		return path + fname;				//图片上传后存放的绝对路径
	}			
	
}


