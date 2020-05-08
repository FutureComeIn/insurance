package com.dxm.insuranceSpring.shiro;

import java.util.Set;

import javax.annotation.Resource;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.stereotype.Component;

import com.dxm.insuranceSpring.pojo.User;
import com.dxm.insuranceSpring.services.IUserServices;
import com.dxm.insuranceSpring.utils.APIRequest;


@Component
public class ShiroRealm extends AuthorizingRealm {
	@Resource(name="iUserServicesImpls")
	IUserServices service;
	
	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection pc) {
		System.out.println("权限记录....");
		Integer userid = (Integer) pc.iterator().next();
		System.out.println("------ShiroRealm---------id:"+userid);
		
		//登陆成功之后的第一次路径访问
		//容器，用来记录当前用户的权限
		SimpleAuthorizationInfo sai = new SimpleAuthorizationInfo();
		//加载用户角色
		Set<String> rolesData = service.loadRolesData(userid);
		//Set<String> permissionData = services.loadPermissionData(userid);
		System.out.println("---------------rolesData:"+rolesData);
		//System.out.println("---------------permissionData:"+permissionData);
		sai.setRoles(rolesData);
		sai.setStringPermissions(null);
		return sai;
	}
	
	/**
	 *Authentication：身份认证，即用户提供一些信息来证明自己的身份。如用户名和密码，licence等。 
	 *Principals ：主体的“标识属性”，可以是任意标识，例如用户名，身份证号码，手机号码等。Principals 
	 *可以有多个，但是必须有一个主要的Principal（Primary Principal），这个标识，必须是唯一的。 
	 *Credentials：凭据，即只有主体知道或具有的秘密值，例如密码或数字证书，或者某些生物特征，例如指纹，视网膜等。 
	 *Principals/ Credentials的配对，他最常见的例子是用户名/密码。 
	 */
	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
		System.out.println("登录记录....");
		//当前方法为:在进行登录调用时，去认证当前登录用户
		//其实是将以前自己的登陆认证的业务，放到这里来了
		//他的返回值，如果为空，是登陆失败，会报错org.apache.shiro.authc.UnknownAccountException:
		//要想登陆成功需要new一个AuthenticationInfo
		
		//收集用户提供的身份标识和凭据(UsernamePasswordToken，支持最常见的用户名/口令的认证方式。
		//它是org.apache.shiro.authc.AuthenticationToken接口的一个实现。)
		UsernamePasswordToken t = (UsernamePasswordToken) token;
		//System.out.println("ShiroRealm:"+t.getUsername()+"\t"+new String(t.getPassword()));
		APIRequest<User> api=service.selectUserByAccount(t.getUsername(),new String(t.getPassword()));
		if(api.isResult()&&((User) api.getSingerData()).getLeaveStatus()==0) {
			User user=(User) api.getSingerData();
			/*org.apache.shiro.authc.SimpleAuthenticationInfo.
			 * SimpleAuthenticationInfo(Object principal,Object credentials,String realmName)
			 * Realm实质上是一个安全相关的DAO
			*/
			return new SimpleAuthenticationInfo(user.getUserId(),user.getPassword(),getName());
		}else {
			return null;
		}
	}
}
