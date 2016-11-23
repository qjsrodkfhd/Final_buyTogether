package com.buy.together.domain;

import java.util.Date;

public class Comment {

	private int comment_number;
	private String comment_content;
	private Date comment_writeDate;
	private int buyTogether_number;
	private int user_number;
	private int comment_type_number;

	public Comment() {

	}

	public int getComment_number() {
		return comment_number;
	}

	public void setComment_number(int comment_number) {
		this.comment_number = comment_number;
	}

	public String getComment_content() {
		return comment_content;
	}

	public void setComment_content(String comment_content) {
		this.comment_content = comment_content;
	}

	public Date getComment_writeDate() {
		return comment_writeDate;
	}

	public void setComment_writeDate(Date comment_writeDate) {
		this.comment_writeDate = comment_writeDate;
	}

	public int getBuyTogether_number() {
		return buyTogether_number;
	}

	public void setBuyTogether_number(int buyTogether_number) {
		this.buyTogether_number = buyTogether_number;
	}

	public int getUser_number() {
		return user_number;
	}

	public void setUser_number(int user_number) {
		this.user_number = user_number;
	}

	public int getComment_type_number() {
		return comment_type_number;
	}

	public void setComment_type_number(int comment_type_number) {
		this.comment_type_number = comment_type_number;
	}

}
