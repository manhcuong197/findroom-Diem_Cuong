package com.findroom.dao.impl;

import java.util.List;

import javax.inject.Inject;

import com.findroom.dao.IAddressDAO;
import com.findroom.mapper.AddressMapper;
import com.findroom.model.AddressModel;


public class AddressDAO extends AbstractDAO<AddressModel> implements IAddressDAO {

	@Override
	public List<AddressModel> findAll() {
		String sql = "SELECT * FROM address";
		return query(sql, new AddressMapper());
	}
	@Override
	public AddressModel findOne(Long id) {
		String sql = "SELECT * FROM address WHERE id=?";
		List<AddressModel> addr = query(sql, new AddressMapper(), id);
		AddressModel addrModel = addr.get(0);
		return addrModel;
	}

	@Override
	public AddressModel findOneByStreet(String street) {
		String sql = "SELECT * FROM address WHERE street = ?";
		List<AddressModel> addrs = query(sql, new AddressMapper(), street);
		return addrs.isEmpty() ? null : addrs.get(0);
	}

}