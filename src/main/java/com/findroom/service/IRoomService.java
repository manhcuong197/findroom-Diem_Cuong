package com.findroom.service;

import java.util.List;

import com.findroom.model.RoomModel;

public interface IRoomService {
	List<RoomModel> findAll();
	RoomModel findOne(Long id);
	RoomModel save(RoomModel roomModel);
}
