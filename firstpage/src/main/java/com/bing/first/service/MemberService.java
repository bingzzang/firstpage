package com.bing.first.service;

import org.springframework.stereotype.Service;

import com.bing.first.model.MemberVo;

@Service
public interface MemberService {

	public int checkId(String userId);			//중복아이디 체크
	
	public void registerMember(MemberVo vo);	//회원가입
	
	public int remove(int idx);					//탈퇴(멤버삭제)	
	
}
