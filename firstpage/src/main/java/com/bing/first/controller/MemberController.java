package com.bing.first.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bing.first.service.MemberService;

@Controller
@RequestMapping("/member")
public class MemberController {

	@Autowired
	private MemberService service;
	
	@RequestMapping(value="/signUp.do", method=RequestMethod.GET)
	public String getSignUp() {
		
		return "member/singUp";	//페이지 만들것
	}
	
	@RequestMapping(value="/signIn.do", method=RequestMethod.GET)
	public String getSignIn() {
		
		return "member/signIn";	//페이지 만들것
	}
}
