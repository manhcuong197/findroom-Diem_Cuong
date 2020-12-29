package com.findroom.service.impl;

import java.util.List;

import javax.inject.Inject;

import com.findroom.dao.IRoleDAO;
import com.findroom.dao.IUserDAO;
import com.findroom.model.RoleModel;
import com.findroom.model.UserModel;
import com.findroom.service.IUserService;

public class UserService implements IUserService {
	@Inject
	private IUserDAO userDao;
	@Inject
	private IRoleDAO roleDao;
	
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

	@Override
	public UserModel findOne(Long id) {
		UserModel userModel=userDao.findOne(id);
		RoleModel roleModel=roleDao.findOne(userModel.getId_rold());
		userModel.setRoleUser(roleModel.getRole_user());
		return userModel;
	}

	@Override
	public UserModel saveUser(UserModel userModel) {
		RoleModel roleModel=roleDao.findOneByRoleUser(userModel.getRoleUser());
		userModel.setId_rold(roleModel.getId());
		Long UserID=userDao.saveUser(userModel);
		return userDao.findOne(UserID);
	}

	@Override
	public UserModel updateUser(UserModel updateUser) {
		RoleModel roleModel=roleDao.findOneByRoleUser(updateUser.getRoleUser());
		updateUser.setId_rold(roleModel.getId());
		userDao.updateUser(updateUser);
		return userDao.findOne(updateUser.getId());
	}

}
