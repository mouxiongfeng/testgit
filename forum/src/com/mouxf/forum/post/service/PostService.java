package com.mouxf.forum.post.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mouxf.entity.Post;
import com.mouxf.forum.post.repository.PostRepository;

@Service
public class PostService {
	@Autowired
	private PostRepository postMapper;
	
	public List<Post> getPostList(){
		return postMapper.getPostList();
	}
}
