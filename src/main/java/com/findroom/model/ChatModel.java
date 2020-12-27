package com.findroom.model;

public class ChatModel extends AbstractModel<ChatModel> {
	private Long id_admin;
	private Long id_owner;
	private String content;
	private String time;
	public Long getId_admin() {
		return id_admin;
	}
	public void setId_admin(Long id_admin) {
		this.id_admin = id_admin;
	}
	public Long getId_owner() {
		return id_owner;
	}
	public void setId_owner(Long id_owner) {
		this.id_owner = id_owner;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	
}
