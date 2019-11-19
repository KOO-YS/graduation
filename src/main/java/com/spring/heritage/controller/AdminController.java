package com.spring.heritage.controller;

import java.math.BigDecimal;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.spring.heritage.service.AdminService;
import com.spring.heritage.util.UploadFileUtil;
import com.spring.heritage.vo.CoordVO;
import com.spring.heritage.vo.GuidebookVO;
import com.spring.heritage.vo.HistoryVO;
import com.spring.heritage.vo.NoticeImgVO;
import com.spring.heritage.vo.NoticeVO;

@Controller
public class AdminController {
	
	@Autowired
	AdminService adminService;
	
	
	/* 로컬 저장소 위치 */
	public static final String LOCAL_PATH = "C:/Users/구연수/Desktop/졸프/heratige/heratige/src/main";
	public static final String NOTICE_IMG_PATH = "/resources/static/upload/notice/";
	public static final String BROCHURE_PATH = "/resources/static/upload/brochure/";
	
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
		
		String saveName = UploadFileUtil.saveFile(LOCAL_PATH+NOTICE_IMG_PATH, image);
		NoticeImgVO imgVo = new NoticeImgVO();
		imgVo.setNoticePk(noticeVo.getPk());	// 저장된 공지글의 pk값 * selectKey 사용
		imgVo.setOriName(oriName);
		imgVo.setSaveName(saveName);
		imgVo.setImgPath(NOTICE_IMG_PATH);
		
		String msg2 = adminService.insertNoticeImg(imgVo);
		System.out.println(msg2);
		return "admin/notice";
	}
	/* 공지사항 상세 */
	@RequestMapping("/admin/notice/{pk}")
	public String goToNoticeDetail(@PathVariable int pk, Model model) {
		model.addAttribute("detail", adminService.getNoticeDetail(pk));
		model.addAttribute("img", adminService.getNoticeImg(pk));
		return "admin/notice/detail";
	}
	/* 공지사항 변경 */
	@RequestMapping(value="/admin/updateNotice", method = RequestMethod.POST)
	@ResponseBody
	public String updateNotice() {
		
		return "admin/notice/detail";
	}
	/* 공지사항 선택값 */
	@RequestMapping("/admin/selectNotice/{pk}")
	public String selectNotice(@PathVariable int pk) {
		adminService.selectNotice(pk);
		return "redirect:/admin/notice";
	}
	/* 위치 정보 페이지 */
	@RequestMapping("/admin/location")
	public String goToLocation(Model model) {
		model.addAttribute("getCoord", adminService.getCoord());
		return "admin/location";
	}
	@RequestMapping(value="/admin/updateMap", method = RequestMethod.POST)
	public String updateMap(HttpServletRequest request) {
		String xValue = request.getParameter("xValue");
		String yValue = request.getParameter("yValue");
		
		BigDecimal coordX = new BigDecimal(xValue);
		BigDecimal coordY = new BigDecimal(yValue);
		System.out.println("decimal X :::"+coordX+"\ndecimal Y :::"+coordY);
		
		CoordVO coordVo = new CoordVO();
		coordVo.setCoordX(coordX);
		coordVo.setCoordY(coordY);
		
		String msg = adminService.updateMap(coordVo);
		System.out.println(msg);
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
		return "admin/reservation/reservation";
	}
	/* 경회루 예약 페이지 */
	@RequestMapping("/admin/reservation/special")
	public String goToSpecial() {
		return "admin/reservation/special";
	}
	/* 한국어 단체 예약 페이지 */
	@RequestMapping("/admin/reservation/korean")
	public String goToKorean() {
		return "admin/reservation/korean";
	}
	/* 간행물 업로드 -> 다운 */
	@RequestMapping("/admin/brochure")
	public String goToBrochure(Model model) {
		model.addAttribute("brochure", adminService.getBrochure());
		return "admin/brochure/brochure";
	}
	/* 간행물 업로드 폼 */
	@RequestMapping("/admin/brochure/insert")
	public String goToInsertBrochure() {
		return "admin/brochure/insert";
	}
	/* 간행물 업로드 */
	@RequestMapping(value="/admin/insertBrochure", method = RequestMethod.POST)
	@ResponseBody
	public String insertBrochure(MultipartHttpServletRequest request) throws Exception{
		MultipartFile file = request.getFile("file");
		String title = request.getParameter("title");
		String language = request.getParameter("language");
		String oriName = file.getOriginalFilename();
		String saveName = UploadFileUtil.saveFile(LOCAL_PATH+BROCHURE_PATH, file);
		
		GuidebookVO guideVo = new GuidebookVO();
		
		guideVo.setTitle(title);
		guideVo.setLang(language);
		guideVo.setOriName(oriName);
		guideVo.setSaveName(saveName);
		guideVo.setFilePath(BROCHURE_PATH);
		
		String msg = adminService.insertBrochure(guideVo);
		return "admin/brochure";
	}
	/* 경복궁 역사 관리 페이지 */
	@RequestMapping(value="/admin/history")
	public String goToHistrory(Model model) {
		model.addAttribute("history", adminService.historyList());
		return "admin/history/history";
	}
	/* 경복궁 역사 추가 */
	@RequestMapping(value="/admin/insertHistory")
	public String insertHistory(HttpServletRequest request) {
		int year = Integer.parseInt(request.getParameter("year"));
		String title = request.getParameter("title");
		String detail = request.getParameter("detail");
		
		HistoryVO historyVo = new HistoryVO();
		
		historyVo.setYear(year);
		historyVo.setTitle(title);
		historyVo.setDetail(detail);
		
		adminService.insertHistory(historyVo);
		return "redirect:/admin/history";
	}
	/* 경복궁 역사 삭제 */
	@RequestMapping(value="/admin/deleteHistory/{year}")
	public String deleteHistory(@PathVariable int year) {
		adminService.deleteHistory(year);
		return "redirect:/admin/history";
	}
}
