package com.bean;

public class User {
	private String id;
	private String count;
	private String password;
	private String email;
	private String phone;
	private int level;
	public int getLevel() {
		return level;
	}
	public void setLevel(int level) {
		this.level = level;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getCount() {
		return count;
	}
	public void setCount(String count) {
		this.count = count;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public User(){}
	@Override
	public String toString() {
		return "User [id=" + id + ", count=" + count + ", password=" + password + ", email=" + email + ", phone="
				+ phone + ", level=" + level + "]";
	}
}
