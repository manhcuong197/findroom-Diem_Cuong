package com.findroom.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.findroom.model.RoleModel;


public class RoleMapper implements RowMapper<RoleModel> {

	@Override
	public RoleModel mapRow(ResultSet resultSet) {
		try {
			RoleModel roleModel=new RoleModel();
			roleModel.setId(resultSet.getLong("id"));
			roleModel.setRole_user(resultSet.getString("role_user"));
			return roleModel;
		} catch (SQLException e) {
			return null;
		}
		
	}

}
