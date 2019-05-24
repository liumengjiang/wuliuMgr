package com.zl.mapper;



import org.apache.ibatis.annotations.Param;

import com.zl.entity.OderUser;

public interface OrderUserMapper {

	OderUser queryByUsernameAndPassword(@Param("username")String username,@Param("password")String password);

	void regist(@Param("username")String username,@Param("password") String password,@Param("name") String name,@Param("sex") Integer sex,
			@Param("age") Integer age);

	OderUser queryUsername(@Param("username") String username);



}
