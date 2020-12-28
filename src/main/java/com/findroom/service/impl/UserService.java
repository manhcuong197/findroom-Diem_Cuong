package com.findroom.service.impl;

import java.util.List;

import javax.inject.Inject;

import com.findroom.dao.IUserDAO;
import com.findroom.model.UserModel;
import com.findroom.service.IUserService;

public class UserService implements IUserService {
	@Inject
	private IUserDAO userDao;
	
	@Override
	public List<UserModel> findAll() {
		return userDao.findAll();
	}

	@Override
	public UserModel findByUserNameAndPassword(String username, String password) {
		return userDao.findByUserNameAndPassword(username, password);
	}

	@Override
	public UserModel save(UserModel userModel) {
		Long userId = userDao.save(userModel);
		return userDao.findOne(userId);
	}

	@Override
	public UserModel update(UserModel userModel) {
		userDao.update(userModel);
		return userDao.findOne(userModel.getId());
	}

	@Override
	public void delete(long[] ids) {
		for(long id: ids) {
			userDao.delete(id);
		}
	}

}
