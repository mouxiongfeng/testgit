package com.mouxf.forum.post.repository;

import java.util.List;

import com.mouxf.entity.Post;

public interface PostRepository {

	public List<Post> getPostList();
	public List<Post> getPostByTypeId(int typeId);
	public int addPost(Post post);
}
