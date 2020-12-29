package com.findroom.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;


import com.findroom.model.CommentModel;

public class CommentMapper implements RowMapper<CommentModel> {

	@Override
	public CommentModel mapRow(ResultSet resultSet) {
		CommentModel commentModel = new CommentModel();
		try {
			commentModel.setId(resultSet.getLong("id"));
			commentModel.setId_user(resultSet.getLong("id_user"));
			commentModel.setTime(resultSet.getTimestamp("time"));
			commentModel.setConfirm_comment(resultSet.getString("confirm_comment"));
			commentModel.setId_room(resultSet.getLong("id_room"));
			commentModel.setUserComment(resultSet.getString("userComment"));
			return commentModel;
		} catch (SQLException e) {
			return null;
		}
	}
	
}
