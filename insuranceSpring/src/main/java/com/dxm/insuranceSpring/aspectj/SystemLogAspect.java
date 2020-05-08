package com.dxm.insuranceSpring.aspectj;

/**
 * Join Points(以后简称JPoints)AspectJ中最关键的一个概念。
 * JPoints:程序运行时的一些执行点。比如：
 * 				一个函数的调用可以是一个JPoint,而调用e的函数也可以认为是一个JPoint;
 *				设置一个变量，或者读取一个变量，也可以是一个JPoint;
 * 				for循环可以看做是JPoint;
 *  类型：
 * 		testMethod的call类型JPoint:对应的目标JPoint一定是某个函数
 *  	testMethod的execution类型JPonint
 *  	对异常捕获的Handler类型JPoint
 *  
 *  怎么从一堆一堆的JPoints中选择自己想要的JPoints呢？
 *  这就是Pointcuts的功能：提供一种方法使得开发者能够选择自己感兴趣的JoinPoints;
 * 	 例如：把Test.java中所有的Joinpoint选择出来：public pointcut testAll():within(Test)。
 *  
 *  @Before：前置通知，在方法执行之前执行
	@After：后置通知，在方法执行之后执行
	@AfterRunning：返回通知，在方法返回结果之后执行
	@AfterThrowing：异常通知，在方法抛出异常之后执行
	@Around：环绕通知，围绕着方法执行
 */

import java.lang.reflect.Method;
import java.text.SimpleDateFormat;

import javax.annotation.PostConstruct;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.dxm.insuranceSpring.dao.LogDao;
import com.dxm.insuranceSpring.pojo.Log;
import com.dxm.insuranceSpring.pojo.User;
import com.dxm.insuranceSpring.utils.APIRequest;

//@Component  == @Services ==@Controller
@Component
@Aspect
public class SystemLogAspect {
	
	@Resource(name ="iLogServicesImpls")
	ILogService services;
	
	
	private static SystemLogAspect  serverHandler ;
    @PostConstruct //通过@PostConstruct实现初始化bean之前进行的操作
    public void init() {  
        serverHandler = this;  
        serverHandler.services = this.services;        
        // 初使化时将已静态化的testService实例化
    }

	// 第一个“*”代表任意修饰符及任意返回值；第二个“*”代表任意方法；
	// “..”匹配任意数量、任意类型的参数；若目标类、接口与该切面类在同一个包中可以省略包名。
	@Pointcut("execution (* com.dxm.insuranceSpring.controls..*.*(..))")
	public void controllerAspect1() {
	}

	@Pointcut("execution (* com.dxm.insuranceSpring.services..*.*(..))")
	public void controllerAspect2() {
	}

	@Pointcut("execution (* com.dxm.insuranceSpring.dao..*.*(..))")
	public void controllerAspect3() {
	}

	// JPoint在执行前,执行后,都执行了一些我们设置的代码.
	// 在AspectJ中,这段代码叫advice。简单点说，advice就是一种Hook。
	@Before(value = "controllerAspect1()")
	public void before() {
		System.out.println("前置通知调用....");
	}
//	@After(value="controllerAspect2()")
//	public void after(){
//		System.out.println("后置通知调用....");
//	}

	@Around(value = "controllerAspect2()")
	public Object around(ProceedingJoinPoint pjd) throws Throwable {
		/*
		 * pjd为： execution(APIRequest
		 * com.dxm.insuranceSpring.services.impls.IUserServicesImpls.selectUserByAccount
		 * (String, String))
		 */
		System.out.println("==========开始执行controller环绕通知===============");
		Object obj = null;
		// 这里是拿到你操作的class路径名(com.dxm.insuranceSpring.services.impls.IUserServicesImpls)
		String targetName = pjd.getTarget().getClass().getName();
		// 这里是操作的方法名(queryUsers)
		String methodName = pjd.getSignature().getName();
		// 获得操作方法名的参数([Ljava.lang.Object;@3bd9c539)
		Object[] arguments = pjd.getArgs();

		// 反射拿到你调用的class
		Class targetClass = Class.forName(targetName);
		
		// 拿到该class下的所有方法
		Method[] methods = targetClass.getMethods();
		String ocontent = "";
		for (Method method : methods) {
			// 一般只要判断方法名相同就行了，因为框架不允许services里面有相同的方法名
			if (method.getName().equals(methodName)) {
				Class[] paramcls = method.getParameterTypes();
				if (paramcls.length == arguments.length) {
					// 获得注解类对象
					Logaspect logapt = method.getAnnotation(Logaspect.class);
					if (logapt.operationName() != null) {
						// 获得操作内容
						ocontent = logapt.operationName();
					}
					break;
				}
			}
		}

		long start = System.currentTimeMillis();
		SimpleDateFormat dateformat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.S ");
		String startdate = dateformat.format(start);
		try {
			String logName="***"; //操作人默认为 ***
			obj = pjd.proceed(); // 执行该services方法,将返回值赋给obj,是以json的格式
			// 接收到请求，记录请求内容
			ServletRequestAttributes attributes = (ServletRequestAttributes) RequestContextHolder.getRequestAttributes();
		    HttpServletRequest request = attributes.getRequest();
		    if("com.dxm.insuranceSpring.utils.APIRequest".equals(obj.getClass().getName())) {
		    	APIRequest api=(APIRequest)obj;
				if("登录专用".equals(api.getMessage())) {
					User user=(User) api.getSingerData();
					request.getSession().setAttribute("logName",user.getUserName());
				}
		    }
			logName=(String) request.getSession().getAttribute("logName");

			long end = System.currentTimeMillis();
			Log log = new Log(0,logName,ocontent,startdate,(end-start));
			System.out.println("log=" + log);
			// 添加日志
			/*
			 * System.out.println("services="+serverHandler.services);
			 *    com.dxm.insuranceSpring.aspectj.ILogServicesImpls@2db6ce9b
			 */
			serverHandler.services.addLog(log);

			System.out.println("==========结束执行controller环绕通知===============");
		} catch (Throwable e) {
			System.out.println("添加日志失败");
			e.printStackTrace();
		}
		return obj;
	}
}
