package com.findroom.model;

import java.util.ArrayList;
import java.util.List;

public class AbstractModel<T> {
	private List<T> listResult = new ArrayList<>();
	private Long id;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public List<T> getListResult() {
		return listResult;
	}

	public void setListResult(List<T> listResult) {
		this.listResult = listResult;
	}
	
}
