package com.mouxf.forum.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mouxf.entity.User;
import com.mouxf.forum.user.repository.UserRepository;

@Service
public class UserService {
	@Autowired
	private UserRepository userMapper;
	
	public User login(User user){
		return userMapper.login(user);
	}
	public void register(User user){
		userMapper.register(user);
	}
	public List<User> userList(){
		return userMapper.userList();
	}
}
