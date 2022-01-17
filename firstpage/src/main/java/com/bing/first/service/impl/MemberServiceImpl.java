package com.bing.first.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bing.first.mapper.MemberMapper;
import com.bing.first.model.MemberVo;
import com.bing.first.service.MemberService;

@Repository
public class MemberServiceImpl implements MemberService{

	@Autowired 
	private MemberMapper mapper;
	
	@Override
	public int checkId(String userId) {
		int cnt = mapper.checkId(userId);
		
		return cnt;
	}

	@Override
	public void registerMember(MemberVo vo) {
		mapper.insert(vo);
		
	}

//	@Override
//	public int remove(int idx) {
//		// TODO Auto-generated method stub
//		return 0;
//	}

	
}
