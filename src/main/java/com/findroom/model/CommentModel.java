package com.findroom.model;

public class CommentModel extends AbstractModel<CommentModel> {
	private Long id_post;
	private Long id_user;
	private String confirm_content;
	private String time;
	public Long getId_post() {
		return id_post;
	}
	public void setId_post(Long id_post) {
		this.id_post = id_post;
	}
	public Long getId_user() {
		return id_user;
	}
	public void setId_user(Long id_user) {
		this.id_user = id_user;
	}
	public String getConfirm_content() {
		return confirm_content;
	}
	public void setConfirm_content(String confirm_content) {
		this.confirm_content = confirm_content;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	
}
