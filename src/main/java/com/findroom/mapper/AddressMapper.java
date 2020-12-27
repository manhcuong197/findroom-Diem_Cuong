package com.findroom.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.findroom.model.AddressModel;

public class AddressMapper implements RowMapper<AddressModel> {

	@Override
	public AddressModel mapRow(ResultSet resultSet) {
		AddressModel address = new AddressModel();
		try {
			address.setId(resultSet.getLong("id"));
			address.setDistrict(resultSet.getString("district"));
			address.setStreet(resultSet.getString("street"));
			address.setCity(resultSet.getString("city"));
			address.setNumber(resultSet.getString("number"));
			
			return address;
		} catch (SQLException e) {
			return null;
		}
	}
	
}
