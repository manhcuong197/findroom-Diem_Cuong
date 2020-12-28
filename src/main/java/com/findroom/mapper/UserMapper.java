package com.findroom.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.findroom.model.RoleModel;
import com.findroom.model.UserModel;

public class UserMapper implements RowMapper<UserModel> {
	@Override
	public UserModel mapRow(ResultSet resultSet) {
		UserModel userModel = new UserModel();
		try {
			userModel.setId(resultSet.getLong("id"));
			userModel.setUsername(resultSet.getString("username"));
			userModel.setPassword(resultSet.getString("password"));
			userModel.setPhone(resultSet.getString("phone"));
			userModel.setId_rold(resultSet.getLong("id_role"));
			userModel.setEmail(resultSet.getString("email"));
			userModel.setAddress(resultSet.getString("address"));
			try {
				RoleModel roleModel = new RoleModel();
				roleModel.setRole_user(resultSet.getString("role_user"));
				userModel.setRoleModel(roleModel);
			}catch(Exception e) {
				e.printStackTrace();
			}
			return userModel;
		} catch (SQLException e) {
			return null;
		}
	}

}
