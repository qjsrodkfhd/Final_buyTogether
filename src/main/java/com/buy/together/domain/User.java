package com.buy.together.domain;

import java.util.Date;

public class User {

	private int user_number;
	private String id;
	private String pW;
	private String name;
	private String email;
	private String phone_number;
	private Date birthday;
	private String sex;
	private String nickName;
	private String profile;
	private String eegion;
	private int eeputation;

	public User() {

	}

	public int getUser_number() {
		return user_number;
	}

	public void setUser_number(int user_number) {
		this.user_number = user_number;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getpW() {
		return pW;
	}

	public void setpW(String pW) {
		this.pW = pW;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone_number() {
		return phone_number;
	}

	public void setPhone_number(String phone_number) {
		this.phone_number = phone_number;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getNickName() {
		return nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	public String getProfile() {
		return profile;
	}

	public void setProfile(String profile) {
		this.profile = profile;
	}

	public String getEegion() {
		return eegion;
	}

	public void setEegion(String eegion) {
		this.eegion = eegion;
	}

	public int getEeputation() {
		return eeputation;
	}

	public void setEeputation(int eeputation) {
		this.eeputation = eeputation;
	}

}
