package com.findroom.dao.impl;

import java.util.List;

import com.findroom.mapper.UserMapper;
import com.findroom.dao.IUserDAO;
import com.findroom.model.UserModel;

public class UserDAO extends AbstractDAO<UserModel> implements IUserDAO {
	@Override
	public List<UserModel> findAll() {
		String sql = "SELECT * FROM user";
		return query(sql, new UserMapper());
	}

	@Override
	public UserModel findByUserNameAndPassword(String username, String password) {
		String sql = "SELECT * FROM user INNER JOIN role ON role.id = user.id_role  WHERE username=? AND password = ?";
		List<UserModel> users = query(sql, new UserMapper(), username, password);
		return users.isEmpty() ? null : users.get(0);
	}

	@Override
	public Long save(UserModel userModel) {
		String sql = "INSERT INTO user (id_role, username, password, phone, email, address) VALUES (?,?,?,?,?,?)";
		return insert(sql, 2, userModel.getUsername(), userModel.getPassword(),
				userModel.getPhone(), userModel.getEmail(), userModel.getAddress());
	}
	@Override
	public Long saveUser(UserModel userModel) {
		String sql = "INSERT INTO user (id_role, username, password, phone, email, address) VALUES (?,?,?,?,?,?)";
		return insert(sql, userModel.getId_rold(), userModel.getUsername(), userModel.getPassword(),
				userModel.getPhone(), userModel.getEmail(), userModel.getAddress());
	}

	@Override
	public void update(UserModel userModel) {
		String sql = "UPDATE user SET id_role = ?, username=?, password=?, phone=?, email=?, address=? WHERE id=?";
		update(sql, 2, userModel.getUsername(), userModel.getPassword(),
				userModel.getPhone(), userModel.getEmail(),userModel.getAddress(), userModel.getId());
	}
	@Override
	public void updateUser(UserModel userModel) {
		String sql = "UPDATE user SET id_role = ?, username=?, password=?, phone=?, email=?, address=? WHERE id=?";
		update(sql, userModel.getId_rold(), userModel.getUsername(), userModel.getPassword(),
				userModel.getPhone(), userModel.getEmail(),userModel.getAddress(), userModel.getId());
	}

	@Override
	public void delete(long id) {
		String sql = "DELETE FROM user WHERE id=?";
		update(sql, id);
	}

	@Override
	public UserModel findOne(Long id) {
		String sql = "SELECT * FROM user WHERE id = ?";
		List<UserModel> users = query(sql, new UserMapper(), id);
		return users.isEmpty() ? null : users.get(0);
	}
	@Override
	public UserModel findOneByUsername(String username) {
		String sql = "SELECT * FROM user WHERE username = ?";
		List<UserModel> users = query(sql, new UserMapper(), username);
		return users.isEmpty() ? null : users.get(0);
	}
	

}
