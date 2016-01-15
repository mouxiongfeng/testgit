package com.mouxf.forum.index.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mouxf.entity.Post;
import com.mouxf.entity.Type;
import com.mouxf.forum.post.service.PostService;
import com.mouxf.forum.type.service.TypeService;

@Service
public class IndexService {

	@Autowired
	private TypeService typeService;
	@Autowired
	private PostService postService;
	
	public List<Type> getTypeList(){
		return typeService.getTypeList();
	}
	public List<Post> getPostList(int typeId){
		if(typeId==0){
			return postService.getPostList();
		}else{
			return postService.getPostByTypeId(typeId);
		}
		
	}
}
