package com.cqut.li.eplay_ssm.entity;

import com.cqut.li.eplay_ssm.entity.base.Entity;

public class Sport extends Entity {
	private String sport_id;
	private String sport_name;
	private String price;
	private String introduce;

	
	public String getSport_id() {
		return sport_id;
	}
	public void setSport_id(String sport_id) {
		this.sport_id = sport_id;
	}
	public String getSport_name() {
		return sport_name;
	}
	public void setSport_name(String sport_name) {
		this.sport_name = sport_name;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getIntroduce() {
		return introduce;
	}
	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}


	@Override
	public String getTableName() {
		return "sport";
	}

	@Override
	public String getPrimaryKey() {
		return "sport_id";
	}
}
