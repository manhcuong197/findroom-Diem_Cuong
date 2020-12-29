package com.findroom.model;

import java.sql.Timestamp;

public class CommentModel extends AbstractModel<CommentModel> {
	
	private Long id_user;
	private String confirm_comment;
	private Timestamp time;
	private String userComment;
	private Long  id_room;
	
	public Long getId_room() {
		return id_room;
	}
	public void setId_room(Long id_room) {
		this.id_room = id_room;
	}
	public String getUserComment() {
		return userComment;
	}
	public void setUserComment(String userComment) {
		this.userComment = userComment;
	}
	public Long getId_user() {
		return id_user;
	}
	public void setId_user(Long id_user) {
		this.id_user = id_user;
	}
	
	public String getConfirm_comment() {
		return confirm_comment;
	}
	public void setConfirm_comment(String confirm_comment) {
		this.confirm_comment = confirm_comment;
	}
	public Timestamp getTime() {
		return time;
	}
	public void setTime(Timestamp time) {
		this.time = time;
	}
	
	
}
