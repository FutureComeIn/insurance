package com.dxm.insuranceSpring.utils;

import org.apache.ibatis.jdbc.SQL;

import com.dxm.insuranceSpring.pojo.Log;
import com.dxm.insuranceSpring.pojo.User;

public class SqlUtils {
	
	public String selectCountLog(Log log) {
		return new SQL() {
			{
				SELECT("count(*)");
				FROM("t_log");
				if(log.getLogName()!=null&&!"".equals(log.getLogName())) {
					WHERE("logName like #{logName}");
				}
				if(log.getLogTime()!=null&&!"".equals(log.getLogTime())) {
					WHERE("logTime like #{logTime}");
				}
			}
		}.toString();
	}
	public String selectLog(Log log) {
		return new SQL() {
			{
				SELECT("*");
				FROM("t_log");
				if(log.getLogName()!=null&&!"".equals(log.getLogName())) {
					WHERE("logName like #{logName}");
				}
				if(log.getLogTime()!=null&&!"".equals(log.getLogTime())) {
					WHERE("logTime like #{logTime}");
				}
				ORDER_BY("logId desc");
			}
		}.toString();
	}
	
	 //方法中的关键字是区分大小写的  SQL SELECT WHERE
    //该方法会根据传递过来的map中的参数内容  动态构建sql语句
	 public String selectCountUser(User user) {
	        return new SQL() {
	            {
	                SELECT("count(*)");
	                FROM("T_USER");
	                if(user.getLeaveStatus()!=null) {
	                	 WHERE("leaveStatus=#{leaveStatus}");
	                }else {
	                	WHERE("leaveStatus=0");
	                }
	                if (user.getAge()!=null) {
	                    WHERE("age<#{age}");
	                }
	                if(user.getAccount()!= null&&!"".equals(user.getAccount())){
	                	WHERE("account like #{account}");
	                }
	            }
	            
	        }.toString();
	    }	
    public String selectWhitParamSql(User user) {
        return new SQL() {
            {
                SELECT("*");
                FROM("T_USER");
                if(user.getLeaveStatus()!=null) {
                	 WHERE("leaveStatus=#{leaveStatus}");
                }else {
                	WHERE("leaveStatus=0");
                }
                if (user.getAge()!=null) {
                    WHERE("age<#{age}");
                }
                if(user.getAccount()!= null&&!"".equals(user.getAccount())){
                	WHERE("account like #{account}");
                }
            }
            
        }.toString();
    }	
    
    public String updateUser(User user) {
        return new SQL() {
            {
            	UPDATE("t_user");
                if (user.getUserName()!=null&&!"".equals(user.getUserName())) {
                    SET("userName=#{userName}");
                }
                if (user.getCardId()!=null&&!"".equals(user.getCardId())) {
                    SET("cardId=#{cardId}");
                }
                if (user.getSex()!=null&&!"".equals(user.getSex())) {
                    SET("sex=#{sex}");
                }
                if (user.getAge()!=null) {
                    SET("age=#{age}");
                }
                if (user.getTel()!=null&&!"".equals(user.getTel())) {
                    SET("tel=#{tel}");
                }
                if (user.getEmail()!=null&&!"".equals(user.getEmail())) {
                    SET("email=#{email}");
                }
                if (user.getProvince()!=null&&!"".equals(user.getProvince())) {
                    SET("province=#{province}");
                }
                if (user.getCity()!=null&&!"".equals(user.getCity())) {
                    SET("city=#{city}");
                }
                //用户修改的部分字段
                if (user.getAccount()!=null&&!"".equals(user.getAccount())) {
                    SET("account=#{account}");
                }
                if (user.getPassword()!=null&&!"".equals(user.getPassword())) {
                    SET("password=#{password}");
                }
                if (user.getImg()!=null&&!"".equals(user.getImg())) {
                    SET("img=#{img}");
                }
                if (user.getPassword()!=null&&!"".equals(user.getPassword())) {
                    SET("password=#{password}");
                }
                WHERE("userId=#{userId}");
            }
            
        }.toString();
    }
   public static void main(String[] args) {
	   Log log=new Log();
	   System.out.println(new SqlUtils().selectCountLog(log));
   }
}
