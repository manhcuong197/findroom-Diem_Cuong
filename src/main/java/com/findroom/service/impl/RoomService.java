package com.findroom.service.impl;



import java.util.List;

import javax.inject.Inject;

import com.findroom.service.IRoomService;
import com.findroom.model.AddressModel;
import com.findroom.model.Room_typeModel;
import com.findroom.model.UserModel;
import com.findroom.dao.IAddressDAO;
import com.findroom.dao.IRoomDAO;
import com.findroom.dao.IRoom_typeDAO;
import com.findroom.dao.IUserDAO;
import com.findroom.model.RoomModel;


public class RoomService implements IRoomService{
	
	@Inject
	private IRoomDAO roomDao;
	@Inject
	private IRoom_typeDAO typeDao;
	@Inject
	private IAddressDAO addressDao;
	@Inject IUserDAO userDao;
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
		UserModel userModel=userDao.findOne(roomModel.getId_user());
		roomModel.setAddressRoom(userModel.getAddress());
		roomModel.setUserNameRoom(userModel.getUsername());
		roomModel.setPasswordRoom(userModel.getPassword());
		roomModel.setPhoneRoom(userModel.getPhone());
		roomModel.setEmailRoom(userModel.getEmail());
		return roomModel;
	}
	@Override
	public RoomModel save(RoomModel roomModel) {
		Room_typeModel typeModel = typeDao.findOneByType_room(roomModel.getTypeRoom());
		roomModel.setId_room_type(typeModel.getId());
		AddressModel addrModel = addressDao.findOneByStreet(roomModel.getStreetRoom());
		roomModel.setId_address(addrModel.getId());
		UserModel userModel=userDao.findOneByUsername(roomModel.getUserNameRoom());
		roomModel.setId_user(userModel.getId());
		Long roomId = roomDao.save(roomModel);
		return roomDao.findOne(roomId);
	}
	@Override
	public void delete(long[] ids) {
		for(long id: ids) {
			roomDao.delete(id);
		}
	}
	@Override
	public RoomModel update(RoomModel updateRoom) {
		
		Room_typeModel typeModel = typeDao.findOneByType_room(updateRoom.getTypeRoom());
		updateRoom.setId_room_type(typeModel.getId());
		AddressModel addrModel = addressDao.findOneByStreet(updateRoom.getStreetRoom());
		updateRoom.setId_address(addrModel.getId());
		UserModel userModel=userDao.findOneByUsername(updateRoom.getUserNameRoom());
		updateRoom.setId_user(userModel.getId());
		roomDao.update(updateRoom);
		return roomDao.findOne(updateRoom.getId());
	}
	

}
