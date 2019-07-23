package com.spring.heritage.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.heritage.service.AdminService;

@Controller
public class AdminController {
	
	@Autowired
	AdminService adminService;
	
	/* 관리자 페이지 */
	@RequestMapping("/admin/index")
	public String adminPage() {
		return "admin/index";
	}

	/* 공지사항 페이지 */
	@RequestMapping("/admin/notice")
	public String goToNotice() {
		return "admin/notice";
	}
	
	/*회원관리 페이지*/
	@RequestMapping("/admin/user")
	public String goToUser() {
		return "admin/user";
	}
}
