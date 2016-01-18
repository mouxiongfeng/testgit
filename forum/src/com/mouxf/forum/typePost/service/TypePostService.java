package com.mouxf.forum.typePost.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mouxf.entity.Post;
import com.mouxf.forum.typePost.repository.TypePostRepository;

@Service
public class TypePostService {
	
	@Autowired
	private TypePostRepository typePostMapper;
	
	public int addTypePost(int typeId,Post post){
		return typePostMapper.addTypePost(typeId, post.getPostId());
	}
}
