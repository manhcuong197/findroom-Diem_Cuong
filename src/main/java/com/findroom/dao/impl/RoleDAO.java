package com.findroom.dao.impl;

import java.util.List;

import com.findroom.dao.IRoleDAO;
import com.findroom.mapper.RoleMapper;
import com.findroom.mapper.Room_typeMapper;
import com.findroom.model.RoleModel;
import com.findroom.model.Room_typeModel;


public class RoleDAO extends AbstractDAO<RoleModel> implements IRoleDAO {

	@Override
	public List<RoleModel> findAll() {
		String sql = "SELECT * FROM role";
		return query(sql, new RoleMapper() );
	}

	@Override
	public RoleModel findOne(long id) {
		String sql = "SELECT * FROM role WHERE id=?";
		List<RoleModel> roleModels = query(sql, new RoleMapper(), id);
		return roleModels.isEmpty() ? null : roleModels.get(0);
	}

	@Override
	public RoleModel findOneByRoleUser(String roleUser) {
		String sql = "SELECT * FROM role WHERE role_user = ?";
		List<RoleModel> roleModels = query(sql, new RoleMapper(), roleUser);
		return roleModels.isEmpty() ? null : roleModels.get(0);
	}
	
}
