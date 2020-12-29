package com.findroom.dao;

import java.util.List;

import com.findroom.model.UserModel;

public interface IUserDAO extends GenericDao<UserModel>{
	List<UserModel> findAll();
	UserModel findByUserNameAndPassword(String userName, String password);
	Long save(UserModel userModel);
	Long saveUser(UserModel userModel);
	void update(UserModel userModel);
	void updateUser(UserModel userModel);
	void delete(long id);
	UserModel findOne(Long id);
	UserModel findOneByUsername(String username);
}
