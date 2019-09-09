package com.pixo.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.pixo.bean.User;
import com.pixo.dao.UserDAO;
import com.pixo.service.UserService;

@Controller
public class IndexController {
	
	@Autowired
	public UserService userService;
	
	@Autowired
	public UserDAO userDAO;
	

	static Logger logger=Logger.getLogger(IndexController.class);
	
	@RequestMapping(value="/")
	public String SignUpPage()
	{
		return "Login";
	}
	
	@RequestMapping(value="LoginPage")
	public String LoginPage()
	{
		return "Login";
	}
	
	@RequestMapping(value="SignUpPage")
	public String SignUpPage2()
	{
		return "SignUp";
	}
	
	
	
	
	
	@RequestMapping(value="myMedia")
	public String myMediaPage(){
		return "MyMedia";
	}
	
	@RequestMapping(value="followersfollowing")
	public String followersfollowingPage(){
		return "FollowersFollowing";
	}

	

	@RequestMapping(value="blockedAccounts")
	public String blockedAccountsPage(){
		return "BlockedAccounts";
	}
	
	
	
}
