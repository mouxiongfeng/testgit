package com.mouxf.forum.user.repository;

import java.util.List;

import com.mouxf.entity.User;

public interface UserRepository{
	public User login(User user);
	public void register(User user);
	public List<User> userList();
}

