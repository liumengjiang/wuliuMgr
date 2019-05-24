package com.zl.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zl.entity.OderUser;
import com.zl.mapper.OrderUserMapper;
import com.zl.service.IOrderUserService;
@Service
public class IOrderUserServiceImpl implements IOrderUserService{
@Autowired
private OrderUserMapper orderUserMapper;

	public OderUser login(String username, String password) {
		// TODO Auto-generated method stub
		OderUser current =orderUserMapper.queryByUsernameAndPassword(username,password);
		
		return current;
	}
	@Override
	public void register(OderUser orderUser) {
		// TODO Auto-generated method stub
		orderUserMapper.regist(orderUser.getUsername(),orderUser.getPassword(),orderUser.getName(),orderUser.getSex(),orderUser.getAge());
	}
	@Override
	public boolean checkUsername(String username) {
		// TODO Auto-generated method stub
		return orderUserMapper.queryUsername(username) == null;
	}

}
