package com.mouxf.forum.index.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.mouxf.entity.Post;
import com.mouxf.entity.Type;
import com.mouxf.forum.post.service.PostService;
import com.mouxf.forum.type.service.TypeService;

@Controller
public class IndexController {
	@Autowired
	private TypeService typeService;
	@Autowired
	private PostService postService;
	@RequestMapping("/index")
	public ModelAndView index(ModelAndView mav){
		List<Type> typeList=typeService.getTypeList();
		List<Post> postList=postService.getPostList();
		mav.addObject("typeList", typeList);
		mav.addObject("postList", postList);
		mav.setViewName("all/index");
		return mav;
	}
}
