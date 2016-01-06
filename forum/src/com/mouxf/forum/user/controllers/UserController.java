package com.mouxf.forum.user.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mouxf.entity.User;
import com.mouxf.forum.user.service.UserService;
@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	private UserService userService;
	
	@RequestMapping("/test")
	public String test(){
		return "user/index";
	}
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public String login(User user){
		System.out.println("ÓÃ»§µÄID"+user.getUserId());
		user=userService.login(user);
		System.out.println(user);
		if(user.getUserId()!=0){
			return "user/index";
		}else{
			return "error";
		}
	}
}
