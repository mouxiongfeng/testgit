package com.mouxf.forum.user.controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.mouxf.entity.User;
import com.mouxf.forum.user.service.UserService;
@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	private UserService userService;
	
	@RequestMapping("/index")
	public String test(){
		return "all/index";
	}
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public String login(User user,HttpSession session){
		ModelAndView mav=new ModelAndView();
		user=userService.login(user);
		System.out.println(user);
		if(user!=null){
			session.setAttribute("user", user);
			return "user/index";
		}else{
			mav.addObject("error", "登陆账号或密码错误");
			return "all/error";
		}
	}
	@RequestMapping("/goToRegister")
	public String goToRegister(){
		return "user/register";
	}
	
	@RequestMapping(value="/register",method=RequestMethod.POST)
	public String register(User user){
		System.out.println(user.getUserName()+user.getUserPassword());
		int conn=userService.register(user);
		System.out.println(conn);
		if(conn==0){
			return "all/error";
		}else{
			return "all/index";
		}
	}
	@RequestMapping("/userList")
	public String userList(HttpServletRequest request){
		List<User> users=userService.userList();
		System.out.println(users);
		request.setAttribute("list", users);
		return "user/users";
	}
}
