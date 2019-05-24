package com.zl.web;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;










import org.springframework.web.bind.annotation.SessionAttributes;

import com.zl.entity.OderUser;
import com.zl.service.IOrderUserService;
import com.zl.util.JsonResult;
import com.zl.util.UserContext;

@Controller
public class OrderUserController {
@Autowired
private IOrderUserService userService;
@PostMapping("/login.do")
//@RequestMapping(path = "/login.do", method = RequestMethod.POST)
@ResponseBody
public JsonResult login(String username,String password,HttpServletRequest req,HttpSession session){
	JsonResult json = new JsonResult();
	try {
		OderUser login = userService.login(username,password);
		if(login == null){
			json.setSuccess(false);
			json.setMsg("用户或密码错误");
		}
		session.setAttribute("user", login);
		System.out.println(login);
	} catch (Exception e) {
		// TODO Auto-generated catch block
		json.setSuccess(false);
		json.setMsg(e.getMessage());
	}
	return json;
}
@PostMapping("register.do")
@ResponseBody
public JsonResult register(OderUser orderUser) {
	JsonResult json = new JsonResult();
	try {
		userService.register(orderUser);
	} catch (Exception e) {
		e.printStackTrace();
		json.setSuccess(false);
	}
	return json;
}
@RequestMapping("/logout")
public String logout(){
	UserContext.clearSession();
	return "redirect:/login.html";
}
@RequestMapping(path = "/checkUsername.do", method = RequestMethod.POST)
@ResponseBody
public boolean checkUsername(String username) {
	return userService.checkUsername(username);
}
}
