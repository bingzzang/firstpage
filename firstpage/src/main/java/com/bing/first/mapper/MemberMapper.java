package com.bing.first.mapper;

import com.bing.first.model.MemberVo;

public interface MemberMapper {

	public void insert(MemberVo vo); 	//회원 가입
	
	public int checkId(String userId);	//아이디 중복 체크
}
