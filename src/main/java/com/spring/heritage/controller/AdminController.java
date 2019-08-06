package com.spring.heritage.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.spring.heritage.service.AdminService;
import com.spring.heritage.util.UploadFileUtil;
import com.spring.heritage.vo.NoticeImgVO;
import com.spring.heritage.vo.NoticeVO;

@Controller
public class AdminController {
	
	@Autowired
	AdminService adminService;
	
	
	/* 로컬 저장소 위치 */
	public static final String LOCAL_PATH = "C:/Users/구연수/Desktop/졸프/heratige/heratige/src/main";
	public static final String NOTICE_IMG_PATH = "/resources/static/upload/";
	
	/* 관리자 페이지 */
	@RequestMapping("/admin/index")
	public String adminPage() {
		return "admin/index";
	}

	/* 공지사항 페이지 */
	@RequestMapping("/admin/notice")
	public String goToNotice(Model model) {
		model.addAttribute("noticeList", adminService.noticeList());
		return "admin/notice/notice";
	}
	/* 공지사항 추가 폼*/
	@RequestMapping("/admin/notice/insert")
	public String goToInsertNotice(){
		return "admin/notice/insert";
	}
	/* 공지사항 추가 */
	@RequestMapping(value="/admin/insertNotice", method = RequestMethod.POST)
	@ResponseBody
	public String insertNotice(MultipartHttpServletRequest request) throws Exception {
		MultipartFile image = request.getFile("image");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String oriName = image.getOriginalFilename();
		System.out.println("title :"+title+"\ncontent :"+content+"\noriname:"+oriName);
		
		NoticeVO noticeVo = new NoticeVO();
		noticeVo.setTitle(title);
		noticeVo.setContent(content);
		String msg = adminService.insertNotice(noticeVo);
		System.out.println(msg);
		
		String saveName = UploadFileUtil.saveImageFile(LOCAL_PATH+NOTICE_IMG_PATH, image);
		NoticeImgVO imgVo = new NoticeImgVO();
		imgVo.setNoticePk(noticeVo.getPk());	// 저장된 공지글의 pk값 * selectKey 사용
		imgVo.setOriName(oriName);
		imgVo.setSaveName(saveName);
		imgVo.setImgPath(LOCAL_PATH+NOTICE_IMG_PATH);
		
		String msg2 = adminService.insertNoticeImg(imgVo);
		System.out.println(msg2);
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
		return "admin/brochure/brochure";
	}
	/* 간행물 업로드 폼 */
	@RequestMapping("/admin/brochure/insert")
	public String goToInsertBrochure() {
		return "admin/brochure/insert";
	}
}
