package com.zl.util;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.zl.entity.OderUser;


/**
 * 封装获取session,以及往HttpSession存放数据
 * @author suke
 *
 */
public class UserContext {
	private static String VERIFYCODE_IN_SESSION = "verifycodeInSession";
	private static String USER_IN_SESSION = "logininfo";
	private static String USER_IN_REQUEST = "default";
	/**
	 * 获取HttpSession的方法
	 */
	private  static HttpServletRequest  getRequest(){
		return (HttpServletRequest) ((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest();
	}
	
	public static  Object  getSessionCurrent(){
		return (Object) getRequest().getSession().getAttribute(USER_IN_SESSION);
	}
	
	public static void setSessionCurrent(Object info){
		getRequest().getSession().setAttribute(USER_IN_SESSION, info);
	}
	//设置logininfo和拿取
	public static  OderUser  getCurrent(){
		return (OderUser) getRequest().getSession().getAttribute(USER_IN_SESSION);
	}
	
	public static void setSessionCurrent(OderUser info){
		getRequest().getSession().setAttribute(USER_IN_SESSION, info);
	}
	
	public static  Object  getRequestCurrent(){
		return (Object) getRequest().getAttribute(USER_IN_REQUEST);
	}
	
	public static void setRequestCurrent(Object info){
		getRequest().setAttribute(USER_IN_REQUEST, info);
	}
	
	public static void clearSession(){
		getRequest().getSession().removeAttribute(USER_IN_SESSION);
	}
	
	public static void setRequestName(String name){
		USER_IN_REQUEST = name;
	}
	public static  void setSessionName(String name){
		USER_IN_SESSION = name;
	}

	/**
	 * 存放短信验证码
	 */


	
	
}
