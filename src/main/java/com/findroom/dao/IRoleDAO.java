package com.findroom.dao;

import java.util.List;

import com.findroom.model.RoleModel;



public interface IRoleDAO extends GenericDao<RoleModel> {
	List<RoleModel> findAll();
	RoleModel findOne(long id);
	RoleModel findOneByRoleUser(String roleUser);
}
