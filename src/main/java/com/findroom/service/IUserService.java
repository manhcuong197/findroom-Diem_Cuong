package com.findroom.service;

import java.util.List;

import com.findroom.model.UserModel;

public interface IUserService {
	List<UserModel> findAll();
	UserModel findByUserNameAndPassword(String userName, String password);
	UserModel save(UserModel userModel);
	UserModel update(UserModel userModel);
	void delete(long[] ids);
}
