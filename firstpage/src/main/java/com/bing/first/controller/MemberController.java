package com.bing.first.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
	public void checkId(String userId) {
		
		
	}
	
	@RequestMapping(value="/signIn.do", method=RequestMethod.GET)
	public String getSignIn() {
		
		List<MemberVo> list = new ArrayList<MemberVo>();
		return "member/signIn";
	}
}
