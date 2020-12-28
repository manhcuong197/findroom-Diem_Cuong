package com.findroom.model;

import java.util.ArrayList;
import java.util.List;

public class AbstractModel<T> {
	private List<T> listResult = new ArrayList<>();
	private Long id;
	private long[] ids;
	private Long searchType;
	private String searchStreet;
	private int searchPrice;
	private int searchArea;
	
	public long[] getIds() {
		return ids;
	}

	public void setIds(long[] ids) {
		this.ids = ids;
	}

	public Long getSearchType() {
		return searchType;
	}

	public void setSearchType(Long searchType) {
		this.searchType = searchType;
	}

	public String getSearchStreet() {
		return searchStreet;
	}

	public void setSearchStreet(String searchStreet) {
		this.searchStreet = searchStreet;
	}

	public int getSearchPrice() {
		return searchPrice;
	}

	public void setSearchPrice(int searchPrice) {
		this.searchPrice = searchPrice;
	}

	public int getSearchArea() {
		return searchArea;
	}

	public void setSearchArea(int searchArea) {
		this.searchArea = searchArea;
	}

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
