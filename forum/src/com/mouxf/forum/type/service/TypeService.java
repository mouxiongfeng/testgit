package com.mouxf.forum.type.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mouxf.entity.Type;
import com.mouxf.forum.type.repository.TypeRepository;

@Service
public class TypeService {
	@Autowired
	private TypeRepository typeMapper;
	
	public List<Type> getTypeList(){
		return typeMapper.getTypeList();
	}
}
