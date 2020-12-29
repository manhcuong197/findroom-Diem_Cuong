package com.findroom.service;

import java.util.List;

import com.findroom.model.RoomModel;
import com.findroom.model.UserModel;

public interface IUserService {
	List<UserModel> findAll();
	UserModel findOne(Long id);
	UserModel findByUserNameAndPassword(String userName, String password);
	UserModel save(UserModel userModel);
	UserModel update(UserModel userModel);
	UserModel saveUser(UserModel userModel);
	UserModel updateUser(UserModel userModel);
	void delete(long[] ids);
}
