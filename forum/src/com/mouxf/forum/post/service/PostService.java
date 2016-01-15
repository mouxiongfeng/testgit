package com.mouxf.forum.post.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mouxf.common.ConversionDateFormat;
import com.mouxf.entity.Post;
import com.mouxf.forum.post.repository.PostRepository;

@Service
public class PostService {
	@Autowired
	private PostRepository postMapper;
	
	public List<Post> getPostList(){
		return postMapper.getPostList();
	}
	public List<Post> getPostByTypeId(int typeId){
		
		return postMapper.getPostByTypeId(typeId);
	}
	
}
