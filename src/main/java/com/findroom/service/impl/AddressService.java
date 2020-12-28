package com.findroom.service.impl;

import java.util.List;

import javax.inject.Inject;

import com.findroom.dao.IAddressDAO;
import com.findroom.model.AddressModel;
import com.findroom.service.IAddressService;

public class AddressService implements IAddressService {

	@Inject
	private IAddressDAO addressDAO;
	@Override
	public List<AddressModel> findAll() {
		return addressDAO.findAll();
	}

}
