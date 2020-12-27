package com.findroom.dao;

import java.util.List;

import com.findroom.mapper.RowMapper;

public interface GenericDao<T> {
	<T> List<T> query(String sql, RowMapper<T> rowMapper, Object... parameters);
	void update(String sql, Object... parameters);
	//add
	Long insert(String sql, Object... parameters);
}
