package com.findroom.model;

public class UserModel extends AbstractModel<UserModel> {
	private String username;
	private Long id_rold ;
	private String password;
	private String phone;
	private String email;
	private String address;
	public Long getId_rold() {
		return id_rold;
	}

	public void setId_rold(Long id_rold) {
		this.id_rold = id_rold;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

}
