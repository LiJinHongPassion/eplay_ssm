package com.cqut.li.eplay_ssm.entity;

import com.cqut.li.eplay_ssm.entity.base.Entity;

import java.util.Date;

public class User extends Entity {

    private String user_id;
    private String user_name;
    private String password;
    private Date birthday;
    private String address;
    private String email;

    public User(){}

    public String getUser_id() {
        return user_id;
    }
    public void setUser_id(String user_id) {
        this.user_id = user_id;
    }
    public String getUser_name() {
        return user_name;
    }
    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }
    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }
    public Date getBirthday() {
        return birthday;
    }
    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }
    public String getAddress() {
        return address;
    }
    public void setAddress(String address) {
        this.address = address;
    }
    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }


    @Override
    public String getTableName() {
        return "user";
    }

    @Override
    public String getPrimaryKey() {
        return "user_id";
    }
}
