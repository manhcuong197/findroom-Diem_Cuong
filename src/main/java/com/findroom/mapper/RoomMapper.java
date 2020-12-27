package com.findroom.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.findroom.model.RoomModel;

public class RoomMapper implements RowMapper<RoomModel> {

	@Override
	public RoomModel mapRow(ResultSet resultSet) {
		try {
			RoomModel roomModel=new RoomModel();
			roomModel.setId(resultSet.getLong("id"));
			roomModel.setId_address(resultSet.getLong("id_address"));
			roomModel.setId_user(resultSet.getLong("id_user"));
			roomModel.setId_room_type(resultSet.getLong("id_room_type"));
			roomModel.setAir_conditioning(resultSet.getString("air_conditioning"));
			roomModel.setArea(resultSet.getLong("area"));
			roomModel.setBalcony(resultSet.getString("balcony"));
			roomModel.setBathroom(resultSet.getString("bathroom"));
			roomModel.setElectricity(resultSet.getLong("electricity"));
			roomModel.setWater(resultSet.getLong("water"));
			roomModel.setImage(resultSet.getString("image"));
			roomModel.setKitchen(resultSet.getString("kitchen"));
			roomModel.setPrice(resultSet.getLong("price"));
			roomModel.setPost_time(resultSet.getString("post_time"));
			roomModel.setStatus(resultSet.getString("status"));
			roomModel.setDescription(resultSet.getString("description"));
			return roomModel;
		} catch (SQLException e) {
			return null;
		}
	
}
}
