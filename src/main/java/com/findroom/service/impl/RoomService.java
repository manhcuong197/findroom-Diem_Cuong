package com.findroom.service.impl;


import java.util.List;

import javax.inject.Inject;

import com.findroom.service.IRoomService;
import com.findroom.model.AddressModel;
import com.findroom.model.Room_typeModel;
import com.findroom.dao.IAddressDAO;
import com.findroom.dao.IRoomDAO;
import com.findroom.dao.IRoom_typeDAO;
import com.findroom.model.RoomModel;


public class RoomService implements IRoomService{
	
	@Inject
	private IRoomDAO roomDao;
	@Inject
	private IRoom_typeDAO typeDao;
	@Inject
	private IAddressDAO addressDao;
	@Override
	public List<RoomModel> findAll() {
		return roomDao.findAll();
	}
	@Override
	public RoomModel findOne(Long id) {
		RoomModel roomModel = roomDao.findOne(id);
		Room_typeModel typeModel = typeDao.findOne(roomModel.getId_room_type());
		roomModel.setTypeRoom(typeModel.getType_room());
		AddressModel addrModel = addressDao.findOne(roomModel.getId_address());
		roomModel.setDistrictRoom(addrModel.getDistrict());
		roomModel.setNumberRoom(addrModel.getNumber());
		roomModel.setStreetRoom(addrModel.getStreet());
		roomModel.setCityRoom(addrModel.getCity());
		return roomModel;
	}
	@Override
	public RoomModel save(RoomModel roomModel) {
		// TODO Auto-generated method stub
		return null;
	}
	

}
