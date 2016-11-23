package com.buy.together.domain;

import java.util.Date;

public class Board {

	private int board_number;
	private String board_title;
	private String board_content;
	private Date board_writeDate;
	private Date board_updateDate;
	private int admin_number;
	private int board_type_number;

	public Board() {

	}

	public int getBoard_number() {
		return board_number;
	}

	public void setBoard_number(int board_number) {
		this.board_number = board_number;
	}

	public String getBoard_title() {
		return board_title;
	}

	public void setBoard_title(String board_title) {
		this.board_title = board_title;
	}

	public String getBoard_content() {
		return board_content;
	}

	public void setBoard_content(String board_content) {
		this.board_content = board_content;
	}

	public Date getBoard_writeDate() {
		return board_writeDate;
	}

	public void setBoard_writeDate(Date board_writeDate) {
		this.board_writeDate = board_writeDate;
	}

	public Date getBoard_updateDate() {
		return board_updateDate;
	}

	public void setBoard_updateDate(Date board_updateDate) {
		this.board_updateDate = board_updateDate;
	}

	public int getAdmin_number() {
		return admin_number;
	}

	public void setAdmin_number(int admin_number) {
		this.admin_number = admin_number;
	}

	public int getBoard_type_number() {
		return board_type_number;
	}

	public void setBoard_type_number(int board_type_number) {
		this.board_type_number = board_type_number;
	}

}
