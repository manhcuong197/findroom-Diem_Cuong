package com.findroom.model;

public class UserModel extends AbstractModel<UserModel> {
	private String username;
	private Long id_rold ;
	private String password;
	private String phone;
	private String email;
	private String address;
	private RoleModel roleModel=new RoleModel();
	private String type;
	private String roleUser;
	
	public String getRoleUser() {
		return roleUser;
	}

	public void setRoleUser(String roleUser) {
		this.roleUser = roleUser;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public RoleModel getRoleModel() {
		return roleModel;
	}

	public void setRoleModel(RoleModel roleModel) {
		this.roleModel = roleModel;
	}

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
