package com.bing.first.model;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class MemberVo {

	private Integer idx;
	private String userid;
	private String userpwd;
	private String username;
	private String birthday;
	private String gender;
	private String email;
	private String phone;
	private Integer grade;
	private Integer point;
	private String profileMsg;
	private String profilePhoto;

}
