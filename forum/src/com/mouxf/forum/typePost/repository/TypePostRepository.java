package com.mouxf.forum.typePost.repository;

import org.apache.ibatis.annotations.Param;

public interface TypePostRepository {

	public int addTypePost(@Param("typeId")int typeId,@Param("postId")int postId);
}
