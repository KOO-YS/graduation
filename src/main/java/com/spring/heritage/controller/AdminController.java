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
	/* 위치 정보 페이지 */
	@RequestMapping("/admin/location")
	public String goTOLocation() {
		return "admin/location";
	}
	
	/*회원관리 페이지*/
	@RequestMapping("/admin/user")
	public String goToUser() {
		return "admin/user";
	}
	/* 예약관리 페이지 */
	@RequestMapping("/admin/reservation")
	public String goToReservation() {
		return "admin/reservation";
	}
	/* 간행물 업로드 -> 다운 */
	@RequestMapping("/admin/brochure")
	public String goToBrochure() {
		return "admin/brochure";
	}
}
