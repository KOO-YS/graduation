package com.spring.heritage.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.heritage.service.ContentService;

@Controller
public class ContentController {

	@Autowired
	ContentService contentService;

	/* 메인 페이지 */
	@RequestMapping("/main")
	public String goToMain() {
		return "main";
	}

	/* 임시 테스트 페이지 */
	@RequestMapping("/temp")
	public String temp() {
		return "temp";
	}

	/* 서브 메뉴 생성 */
	@RequestMapping("/subMenu")
	public String tempMenu() {
		return "contents/menu";
	}
	
	/***
	 * 
	 *  content/guide
	 *  
	 ***/
	
	/* 관람안내 */
	@RequestMapping("/guide/roles")
	public String goToRoles() {
		return "contents/guide/roles";
	}
	/* 관람코스 */
	@RequestMapping("/guide/course")
	public String goToCourse() {
		return "contents/guide/course";
	}
	/* 해설안내 */
	@RequestMapping("/guide/explain")
	public String goToExplain() {
		return "contents/guide/explain";
	}
	/* 오시는길 */
	@RequestMapping("/guide/location")
	public String goToLocation() {
		return "contents/guide/location";
	}
	/* 주변 둘러보기 */
	@RequestMapping("/guide/near")
	public String goToNear() {
		return "contents/guide/near";
	}
	/* 편의시설 */
	@RequestMapping("/guide/facility")
	public String goToFacility() {
		return "contents/guide/facility";
	}
	/***
	 * 
	 *  content/reservation
	 *  
	 ***/
	/* 경회루 & 한국어 투어 */
	@RequestMapping("/tour")
	public String goToTours() {
		return "contents/reservation/tour";
	}

	/* 자료마당 */
	@RequestMapping("/data")
	public String goToData() {
		return "contents/data/data";
	}

	/* 경복궁 관리소 */
	@RequestMapping("/about")
	public String goToAbout() {
		return "contents/about/about";
	}

	/*
	 * 관리자 페이지
	 * 
	 * @RequestMapping("/admin/index") public String adminPage() { return
	 * "admin/index"; }
	 */
}
