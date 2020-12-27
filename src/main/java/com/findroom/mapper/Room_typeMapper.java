package com.findroom.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.findroom.model.Room_typeModel;

public class Room_typeMapper implements RowMapper<Room_typeModel> {

	@Override
	public Room_typeModel mapRow(ResultSet resultSet) {
		try {
			Room_typeModel room_typeModel=new Room_typeModel();
			room_typeModel.setId(resultSet.getLong("id"));
			room_typeModel.setType_room(resultSet.getString("type_room"));
			return room_typeModel;
		} catch (SQLException e) {
			return null;
		}
		
	}

}
