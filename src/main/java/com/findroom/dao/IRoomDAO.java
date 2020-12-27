package com.findroom.dao;

import java.util.List;

import com.findroom.model.RoomModel;

public interface IRoomDAO {
	List<RoomModel> findById_type(Long id_room_type);
	List<RoomModel> findAll();
	Long save(RoomModel roomModel);
	RoomModel findOne(Long id);
}
