package com.findroom.dao.impl;

import java.util.List;

import com.findroom.dao.IRoomDAO;
import com.findroom.mapper.RoomMapper;
import com.findroom.model.RoomModel;

public  class RoomDAO extends AbstractDAO<RoomModel> implements IRoomDAO {

	@Override
	public List<RoomModel> findAll() {
		String sql = "SELECT * FROM room ";
		return query(sql, new RoomMapper());
	}

	@Override
	public Long save(RoomModel roomModel) {
		String sql = "INSERT INTO room (id_room_type,id_address, price, area, bathroom, kitchen, air_conditioning, bacony,electricity,water, image,post_time, status,description) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		return insert(sql, roomModel.getId_room_type(),roomModel.getId_address(),roomModel.getPrice(),roomModel.getArea(),roomModel.getBathroom(),
				roomModel.getKitchen(),roomModel.getAir_conditioning(),roomModel.getBalcony(),roomModel.getElectricity(),roomModel.getWater(),roomModel.getImage(),roomModel.getPost_time(),
				roomModel.getStatus(),roomModel.getDescription());
}
	
	@Override
	public List<RoomModel> findById_type(Long id_room_type ) {
		String sql = "SELECT * FROM room WHERE id_room_type = ?";
		return query(sql, new RoomMapper(), id_room_type);
	}
	@Override
	public RoomModel findOne(Long id) {
		String sql = "SELECT * FROM room WHERE id = ?";
		List<RoomModel> rooms = query(sql, new RoomMapper(), id);
		return rooms.isEmpty() ? null : rooms.get(0);
	}

	@Override
	public void update(RoomModel updateRoom) {
		String sql = "UPDATE room SET id_room_type=?,id_address=?, price=?, area=?, bathroom=?, kitchen=?, air_conditioning=?, bacony=?,electricity=?,water=?, image=?,post_time=?, status=?,description=? WHERE id=?";
		update(sql,updateRoom.getId_room_type(),updateRoom.getId_address(),updateRoom.getPrice(),updateRoom.getArea(),updateRoom.getBathroom(),
				updateRoom.getKitchen(),updateRoom.getAir_conditioning(),updateRoom.getBalcony(),updateRoom.getElectricity(),updateRoom.getWater(),updateRoom.getImage(),updateRoom.getPost_time(),
				updateRoom.getStatus(),updateRoom.getDescription(),updateRoom.getId());
	}

	@Override
	public void delete(long id) {
		String sql = "DELETE FROM room WHERE id = ?";
		update(sql, id);
		
	}

}
	
