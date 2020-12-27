package com.findroom.model;

public class PostModel extends AbstractModel<PostModel> {
	private Long id_room;
	private Long id_date;
	private String confirm;
	public Long getId_room() {
		return id_room;
	}
	public void setId_room(Long id_room) {
		this.id_room = id_room;
	}
	public Long getId_date() {
		return id_date;
	}
	public void setId_date(Long id_date) {
		this.id_date = id_date;
	}
	public String getConfirm() {
		return confirm;
	}
	public void setConfirm(String confirm) {
		this.confirm = confirm;
	}
	
}
