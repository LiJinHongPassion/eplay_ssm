package com.cqut.li.eplay_ssm.entity;

import com.cqut.li.eplay_ssm.entity.base.Entity;

public class Group extends Entity {
	private String group_id;
	private String group_name;
	private String group_userlist;
	private String sport_address;
	private String sport_time;
	
	public String getGroup_id() {
		return group_id;
	}
	public void setGroup_id(String group_id) {
		this.group_id = group_id;
	}
	public String getGroup_name() {
		return group_name;
	}
	public void setGroup_name(String group_name) {
		this.group_name = group_name;
	}
	public String getGroup_userlist() {
		return group_userlist;
	}
	public void setGroup_userlist(String group_userlist) {
		this.group_userlist = group_userlist;
	}
	public String getSport_address() {
		return sport_address;
	}
	public void setSport_address(String sport_address) {
		this.sport_address = sport_address;
	}
	public String getSport_time() {
		return sport_time;
	}
	public void setSport_time(String sport_time) {
		this.sport_time = sport_time;
	}

	@Override
	public String getTableName() {
		return "`group`";
	}

	@Override
	public String getPrimaryKey() {
		return "group_id";
	}
}
