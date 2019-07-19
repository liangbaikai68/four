package com.cy.entity;

import java.util.Date;

import lombok.Data;

@Data
public class user {
	private String uid;
	private String name;
	private String password;
	private String sex;
	private String college;
	private String phone;
	private Date regist_time;
	private String avatarUrl;
	private String isdelete;

}
