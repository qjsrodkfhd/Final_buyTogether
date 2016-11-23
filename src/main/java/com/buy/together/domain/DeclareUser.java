package com.buy.together.domain;

import java.util.Date;

public class DeclareUser {
	
	private int user_number;
	private int declare_count;
	private Date access_free;
	private int access_number;
	
	public DeclareUser() {
		
	}
	
	public int getUser_number() {
		return user_number;
	}
	
	public void setUser_number(int user_number) {
		this.user_number = user_number;
	}
	
	public int getDeclare_count() {
		return declare_count;
	}
	
	public void setDeclare_count(int declare_count) {
		this.declare_count = declare_count;
	}
	
	public Date getAccess_free() {
		return access_free;
	}
	
	public void setAccess_free(Date access_free) {
		this.access_free = access_free;
	}
	
	public int getAccess_number() {
		return access_number;
	}
	
	public void setAccess_number(int access_number) {
		this.access_number = access_number;
	}

	
	
}
