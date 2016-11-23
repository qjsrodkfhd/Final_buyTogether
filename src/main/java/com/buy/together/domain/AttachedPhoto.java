package com.buy.together.domain;

public class AttachedPhoto {

	private int photo_number;
	private String path;
	private int board_number;
	private int board_type_number;
	private int buyTogether_number;

	public AttachedPhoto() {

	}

	public int getPhoto_number() {
		return photo_number;
	}

	public void setPhoto_number(int photo_number) {
		this.photo_number = photo_number;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	public int getBoard_number() {
		return board_number;
	}

	public void setBoard_number(int board_number) {
		this.board_number = board_number;
	}

	public int getBoard_type_number() {
		return board_type_number;
	}

	public void setBoard_type_number(int board_type_number) {
		this.board_type_number = board_type_number;
	}

	public int getBuyTogether_number() {
		return buyTogether_number;
	}

	public void setBuyTogether_number(int buyTogether_number) {
		this.buyTogether_number = buyTogether_number;
	}

}
