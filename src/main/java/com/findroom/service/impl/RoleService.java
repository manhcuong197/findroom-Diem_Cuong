package com.findroom.service.impl;

import java.util.List;

import javax.inject.Inject;

import com.findroom.dao.impl.RoleDAO;
import com.findroom.model.RoleModel;
import com.findroom.service.IRoleService;

public class RoleService implements IRoleService {
	@Inject
	private RoleDAO roleDao;
 
	@Override
	public List<RoleModel> findAll() {
		return roleDao.findAll();
	}

}
