package com.findroom.service.impl;

import java.util.List;

import javax.inject.Inject;

import com.findroom.dao.IRoom_typeDAO;
import com.findroom.model.Room_typeModel;
import com.findroom.service.IRoom_typeService;


public class Room_typeService implements IRoom_typeService {

	@Inject
	private IRoom_typeDAO iRoom_typeDAO;
	
	@Override
	public List<Room_typeModel> findAll() {
		return iRoom_typeDAO.findAll();
	}

	@Override
	public Room_typeModel save(Room_typeModel room_typeModel) {
		Long roomID=iRoom_typeDAO.save(room_typeModel);
		System.out.print(roomID);
		return null;
	}

}
