package com.mouxf.forum.post.controllers;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.mouxf.entity.Post;
import com.mouxf.forum.post.service.PostService;

@Controller
@RequestMapping("post")
public class PostController {

	@Autowired
	private PostService postService;
	
	@RequestMapping(value="/getPostByTypeId",method=RequestMethod.GET)
	public ModelAndView getPostByTypeId(@Param(value = "typeId") int typeId){
		List<Post> postList=postService.getPostByTypeId(typeId);
		ModelAndView mav=new ModelAndView();
		mav.addObject("postList", postList);
		mav.setViewName("forward:/index.do");
		return mav;
	}
	@RequestMapping("/getPostList")
	public ModelAndView getPostList(ModelAndView mav){
		List<Post> postList=postService.getPostList();
		mav.addObject("postList", postList);
		mav.setViewName("forward:/index.do");
		return mav;
	}
}
