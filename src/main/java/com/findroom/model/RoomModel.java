package com.findroom.model;

public class RoomModel extends AbstractModel<RoomModel> {
	private Long id_room_type;
	private Long id_address;
	private String description;
	private Long price;
	private Long area;
	private String bathroom;
	private String kitchen;
	private String air_conditioning;
	private String balcony;
	private Long electricity;
	private Long water;
	private String image;
	private String post_time;
	private String status;
	private String typeRoom;
	private String numberRoom;
	private String streetRoom;
	private String districtRoom;
	private String cityRoom;
	private String type;
	
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getTypeRoom() {
		return typeRoom;
	}
	public void setTypeRoom(String typeRoom) {
		this.typeRoom = typeRoom;
	}
	public String getNumberRoom() {
		return numberRoom;
	}
	public void setNumberRoom(String numberRoom) {
		this.numberRoom = numberRoom;
	}
	public String getStreetRoom() {
		return streetRoom;
	}
	public void setStreetRoom(String streetRoom) {
		this.streetRoom = streetRoom;
	}
	public String getDistrictRoom() {
		return districtRoom;
	}
	public void setDistrictRoom(String districtRoom) {
		this.districtRoom = districtRoom;
	}
	public String getCityRoom() {
		return cityRoom;
	}
	public void setCityRoom(String cityRoom) {
		this.cityRoom = cityRoom;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public Long getId_room_type() {
		return id_room_type;
	}
	public void setId_room_type(Long id_room_type) {
		this.id_room_type = id_room_type;
	}
	public Long getId_address() {
		return id_address;
	}
	public void setId_address(Long id_address) {
		this.id_address = id_address;
	}
	public Long getPrice() {
		return price;
	}
	public void setPrice(Long price) {
		this.price = price;
	}
	public Long getArea() {
		return area;
	}
	public void setArea(Long area) {
		this.area = area;
	}
	public String getBathroom() {
		return bathroom;
	}
	public void setBathroom(String bathroom) {
		this.bathroom = bathroom;
	}
	public String getKitchen() {
		return kitchen;
	}
	public void setKitchen(String kitchen) {
		this.kitchen = kitchen;
	}
	public String getAir_conditioning() {
		return air_conditioning;
	}
	public void setAir_conditioning(String air_conditioning) {
		this.air_conditioning = air_conditioning;
	}
	public String getBalcony() {
		return balcony;
	}
	public void setBalcony(String balcony) {
		this.balcony = balcony;
	}
	public Long getElectricity() {
		return electricity;
	}
	public void setElectricity(Long electricity) {
		this.electricity = electricity;
	}
	public Long getWater() {
		return water;
	}
	public void setWater(Long water) {
		this.water = water;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getPost_time() {
		return post_time;
	}
	public void setPost_time(String post_time) {
		this.post_time = post_time;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
}
