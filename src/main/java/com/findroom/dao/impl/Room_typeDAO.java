package com.findroom.dao.impl;

import java.util.List;

import com.findroom.dao.IRoom_typeDAO;
import com.findroom.mapper.Room_typeMapper;
import com.findroom.model.RoomModel;
import com.findroom.model.Room_typeModel;

public class Room_typeDAO extends AbstractDAO<Room_typeModel> implements IRoom_typeDAO {

	@Override
	public List<Room_typeModel> findAll() {
		String sql = "SELECT * FROM room_type";
		return query(sql, new Room_typeMapper());
	}

	@Override
	public Room_typeModel findOne(long id) {
		String sql = "SELECT * FROM room_type WHERE id=?";
		List<Room_typeModel> type = query(sql, new Room_typeMapper(), id);
		return type.isEmpty() ? null : type.get(0);
	}

	@Override
	public Room_typeModel findOneByType(String type) {
		String sql = "SELECT * FROM room_type WHERE type_room = ?";
		List<Room_typeModel> types = query(sql, new Room_typeMapper(), type);
		return types.isEmpty() ? null : types.get(0);
	}

	@Override
	public Long save(Room_typeModel room_typeModel) {
		String sql = "INSERT INTO room_type (type_room) VALUES(?)";
		return insert(sql,room_typeModel.getType_room());
	}

}
