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
		Room_typeModel typeModel = typeDao.findOneByType(roomModel.getTypeRoom());
		roomModel.setId_room_type(typeModel.getId());
		AddressModel addrModel = addressDao.findOneByStreet(roomModel.getStreetRoom());
		roomModel.setId_address(addrModel.getId());
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
		RoomModel roomModel = roomDao.findOne(updateRoom.getId());
		Room_typeModel typeModel = typeDao.findOneByType(updateRoom.getTypeRoom());
		updateRoom.setId_room_type(typeModel.getId());
		AddressModel addrModel = addressDao.findOneByStreet(updateRoom.getStreetRoom());
		updateRoom.setId_address(addrModel.getId());
		roomDao.update(updateRoom);
		return roomDao.findOne(updateRoom.getId());
	}
	

}
