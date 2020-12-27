package com.findroom.dao;

import java.util.List;

import com.findroom.model.Room_typeModel;

public interface IRoom_typeDAO extends GenericDao<Room_typeModel> {
	List<Room_typeModel> findAll();
	Room_typeModel findOne(long id);
	Room_typeModel findOneByType(String type);
}
