package com.mouxf.forum.index.controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.mouxf.entity.Post;
import com.mouxf.entity.Type;
import com.mouxf.forum.index.service.IndexService;

@Controller
public class IndexController {
	@Autowired
	private IndexService indexService;
	
	@RequestMapping("/index")
	public ModelAndView index(ModelAndView mav,HttpServletRequest request){
		List<Post> postList=indexService.getPostList(0);
		mav.addObject("postList", postList);
		List<Type> typeList=indexService.getTypeList();
		mav.addObject("typeList", typeList);
		mav.setViewName("all/index");
		return mav;
	}
}
