package com.dxm.insuranceSpring.services.impls;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.dxm.insuranceSpring.aspectj.Logaspect;
import com.dxm.insuranceSpring.dao.UserDao;
import com.dxm.insuranceSpring.pojo.Role;
import com.dxm.insuranceSpring.pojo.User;
import com.dxm.insuranceSpring.services.IUserServices;
import com.dxm.insuranceSpring.utils.APIRequest;
import com.dxm.insuranceSpring.utils.Pages;
import com.dxm.insuranceSpring.utils.PathUtils;


@Service("iUserServicesImpls")
public class IUserServicesImpls implements IUserServices {
	
	@Autowired
	UserDao udao;
	APIRequest<User> api=new APIRequest<User>();

	@Override
	@Logaspect(operationName="遍历员工")
	public HashMap<String,Object> queryUsers(User user, Integer indexPage) {
		// TODO 带条件查询所有在职或离职员工
		if(indexPage==null) {
			indexPage=1;
		}
		Integer rowCount=udao.selectCountUser(user);
		Pages page=new Pages(rowCount);
		page.setIndexPage(indexPage);
		page.setPageSize(3);
		RowBounds rb=new RowBounds(page.getBeginRow(),page.getPageSize());
		List<User> ulist=udao.queryUsers(user, rb);
		
		String rolenames="";
		//查询出每个用户拥有的角色
		for(User u : ulist) {
			List<Role> rlist=udao.queryHaveRole(u.getUserId());
			for(Role r : rlist) {
				rolenames+=r.getRoleName()+" ";
			}
			u.setRolenames(rolenames);
			rolenames="";
		}
		HashMap<String,Object> hm=new HashMap<String,Object>();
		hm.put("ulist",ulist);
		hm.put("page",page);
		return hm;
	}

	@Override
	@Logaspect(operationName="添加员工")
	public Integer insertUser(HttpServletRequest request, MultipartFile mpfile,User user,Integer roleid) {
		// TODO 添加员工
		//获得上传的图片，存储地方的绝对路径
		String path = PathUtils.getPath(request, "upload", mpfile.getOriginalFilename());
		try {
			mpfile.transferTo(new File(path));
			user.setImg(PathUtils.datapath); //赋的是--》文件夹+图片名
			SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			user.setWorkTime(sdf.format(new Date()));
			udao.insertUser(user);
			Integer userid=udao.selectUserIdBycardId(user.getCardId());
			//System.out.println("userid="+userid+"\troleid="+Integer.parseInt(roleid));
			if(userid!=null) {
				udao.insertUserRole(userid,roleid);
			}else {
				System.out.println("添加用户角色失败");
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
		return 1;
	}

	@Override
	@Logaspect(operationName="修改员工")
	public Integer updateByAdmin(User user) {
		// TODO 修改员工信息
		return udao.updateUser(user);
	}
	@Override
	@Logaspect(operationName="修改员工")
	public Integer updateByUser(HttpServletRequest request,MultipartFile mpfile,User user) {
		// TODO User修改个人信息
		//获得上传的图片 存储地方的绝对路径
		String path = PathUtils.getPath(request, "upload", mpfile.getOriginalFilename());
		try {
			mpfile.transferTo(new File(path));
			user.setImg(PathUtils.datapath); //赋的是--》文件夹+图片名
			return udao.updateUser(user);
		} catch (IOException e) {
			e.printStackTrace();
			return 0;
		}
	}

	@Override
	@Logaspect(operationName="设置员工离职或复职")
	public Integer updateLeaveState(Integer leaveStatus, Integer uid) {
		// TODO 员工离职或复职
		return udao.updateLeaveState(leaveStatus, uid);
	}

	@Override
	@Logaspect(operationName="根据id查询员工详情")
	public HashMap<String,Object> queryUserById(Integer uid) {
		// TODO 根据id查询员工
		User user=udao.queryUserById(uid);
		List<Role> roles=udao.queryHaveRole(uid);
		List<Role> unroles=udao.queryUnhaveRole(uid);
		HashMap<String,Object> hm=new HashMap<String,Object>();
		hm.put("user",user);
		hm.put("roles",roles);
		hm.put("unroles",unroles);
		return hm;
	}
	@Override
	@Logaspect(operationName="查询该用户拥有的角色")
	public Set<String> loadRolesData(Integer userid) {
		// TODO 查询该用户拥有的角色-- 然后只要角色名
		List<Role> data = udao.queryHaveRole(userid);
		Set<String> set = new HashSet<>();
		for (Role r : data) {
			set.add(r.getRoleName());
		}
		return set;
	}

	@Override
	@Logaspect(operationName="给员工添加角色")
	public APIRequest addRoleToUser(Integer userid, Integer... roleid) {
		// TODO 给员工添加一至多个角色
		int count=0;
		for(int i=0;i<roleid.length;i++) {
			udao.addRoleToUser(userid, roleid[i]);
			count++;
		}
		if(count>0) {
			api.setResult(true);
			api.setSingerData(count);
		}else {
			api.setResult(false);
		}
		return api;
	}

	@Override
	@Logaspect(operationName="给员工移除角色")
	public APIRequest removeRoleToUser(Integer userid,Integer... roleid) {
		// TODO 给员工移除一至多个角色
		StringBuffer bf=new StringBuffer();
		for(int i=0;i<roleid.length;i++) {
			bf.append(roleid[i]);
			if(i<roleid.length-1) {
				bf.append(",");
			}
		}
		Integer count=udao.removeRoleToUser(userid, bf.toString());
		if(count>0) {
			api.setResult(true);
			api.setSingerData(roleid.length);
		}else {
			api.setResult(false);
		}
		return api;
	}

	@Override
	@Logaspect(operationName="根据昵称和密码查询员工")
	public APIRequest<User> selectUserByAccount(String account, String password) {
		// TODO 根据昵称和密码查询员工
		User user=udao.selectUserByAccount(account, password);
		
		String rolenames="";
		//查询用户拥有的角色
		List<Role> rlist=udao.queryHaveRole(user.getUserId());
		for(Role r : rlist) {
			rolenames+=r.getRoleName()+" ";
		}
		user.setRolenames(rolenames);

		if(user!=null) {
			api.setMessage("登录专用");
			api.setResult(true);
			api.setSingerData(user);
		}else {
			api.setResult(false);
		}
		return api;
	}
	@Override
	@Logaspect(operationName="根据角色编号查找用户信息")
	public APIRequest<User> queryUserByRoleId() {
		// TODO 根据角色编号查找用户信息
		APIRequest<User> api=new APIRequest<User>();
		List<User> userlist=udao.queryUserByRoleName("核损员");
		//System.out.println("lmpl:"+roleid);
		//System.out.println("lmpl+userlist:"+userlist);
		if(userlist.size()>0) {
			api.setResult(true);
			api.setDatas(userlist);
		}else {
			api.setResult(false);
		}
		return api;
	}
	
	
}
