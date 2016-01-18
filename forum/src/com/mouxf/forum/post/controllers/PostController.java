package com.mouxf.forum.post.controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.mouxf.common.PageInfo;
import com.mouxf.entity.Post;
import com.mouxf.entity.Type;
import com.mouxf.entity.User;
import com.mouxf.forum.post.service.PostService;
import com.mouxf.forum.type.service.TypeService;
import com.mouxf.forum.typePost.service.TypePostService;

@Controller
@RequestMapping("/post")
public class PostController {

	@Autowired
	private PostService postService;
	@Autowired
	private TypeService typeService;
	@Autowired
	private TypePostService typePostService;
	
	@RequestMapping(value="/getPostByTypeId",method=RequestMethod.GET)
	public ModelAndView getPostByTypeId(@Param(value = "typeId") int typeId,HttpServletRequest request){
		List<Post> postList=postService.getPostByTypeId(typeId);
		ModelAndView mav=new ModelAndView();
		mav.addObject("postList", postList);
		request.setAttribute("typeId", typeId);
		mav.setViewName(PageInfo.FORWARD_INDEX);
		return mav;
	}
	@RequestMapping("/getPostList")
	public ModelAndView getPostList(ModelAndView mav){
		List<Post> postList=postService.getPostList();
		mav.addObject("postList", postList);
		mav.setViewName(PageInfo.FORWARD_INDEX);
		return mav;
	}
	
	@RequestMapping(value="/releasePost")
	public ModelAndView releasePost(ModelAndView mav){
		List<Type> typeList=typeService.getTypeList();
		mav.addObject("typeList", typeList);
		mav.setViewName(PageInfo.POST_RELEASE);
		return mav;
	}
	@RequestMapping(value="/addPost")
	public ModelAndView addPost(Post post,@Param(value = "typeId") int typeId,HttpServletRequest request){
		ModelAndView mav=new ModelAndView();
		User user=(User) request.getSession().getAttribute("user");
		postService.addPost(user, post);
		typePostService.addTypePost(typeId, post);
		mav.setViewName(PageInfo.FORWARD_INDEX);
		return mav;
	}
}
