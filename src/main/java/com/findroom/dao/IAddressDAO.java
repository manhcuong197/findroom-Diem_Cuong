package com.findroom.dao;

import java.util.List;

import com.findroom.model.AddressModel;

public interface IAddressDAO extends GenericDao<AddressModel> {
	List<AddressModel> findAll();
	AddressModel findOne(Long id);
	
	AddressModel findOneByStreet(String street);
}
