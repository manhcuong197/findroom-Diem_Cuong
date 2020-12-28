package com.findroom.service;

import java.util.List;

import com.findroom.model.Room_typeModel;

public interface IRoom_typeService {
	List<Room_typeModel> findAll();
	Room_typeModel save(Room_typeModel room_typeModel);
}
