package com.mouxf.forum.user.repository;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user")
public class UserRepository {

	@RequestMapping("/test")
	public String test(){
		return "index";
	}
}
