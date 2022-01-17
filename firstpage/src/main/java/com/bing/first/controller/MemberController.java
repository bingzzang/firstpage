package com.bing.first.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bing.first.model.MemberVo;
import com.bing.first.service.MemberService;

@Controller
@RequestMapping("/member")
public class MemberController {

	@Autowired
	private MemberService service;
	
	@RequestMapping(value="/signUp.do", method=RequestMethod.GET)
	public String getSignUp() {
		return "member/signUp";	
	}
	
	@RequestMapping(value="/checkId.do", method=RequestMethod.POST)
	@ResponseBody
	public int checkId(String userId) {
		int cnt = service.checkId(userId);
		return cnt;
	}
	
	@RequestMapping(value="/signIn.do", method=RequestMethod.GET)
	public String getSignIn() {
		
		List<MemberVo> list = new ArrayList<MemberVo>();
		return "member/signIn";
	}
}
