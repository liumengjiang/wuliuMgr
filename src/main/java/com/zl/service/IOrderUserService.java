package com.zl.service;

import com.zl.entity.OderUser;

public interface IOrderUserService {

	OderUser login(String username, String password);

	void register(OderUser orderUser);

	boolean checkUsername(String username);

}
