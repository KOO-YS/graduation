package com.spring.heritage.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.io.OutputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.heritage.service.ContentService;
import com.spring.heritage.vo.GuidebookVO;

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
	/* 한국어 투어 */
	@RequestMapping("/reservation/korean")
	public String goToKorean() {
		return "contents/reservation/korean";
	}
	/* 경회루 투어 */
	@RequestMapping("/reservation/special")
	public String goToSpecial() {
		return "contents/reservation/special";
	}
	/***
	 * 
	 *  content/data
	 *  
	 ***/

	/* 자료마당 */
	@RequestMapping("/data")
	public String goToData() {
		return "contents/data/data";
	}
	/* 경복궁의 역사 */
	@RequestMapping("/data/history")
	public String goToHistory() {
		return "contents/data/history";
	}
	/* 간행물 */
	@RequestMapping("/data/brochure")
	public String goToBrochure(Model model) {
		model.addAttribute("brochure", contentService.getBrochure());
		return "contents/data/brochure";
	}
	/* 간행물 다운 */
	/*
	 * https://private.tistory.com/60?category=753861 참고
	 */
	@RequestMapping("/data/fileDown/{pk}")
	public void fileDown(@PathVariable int pk, HttpServletRequest request, HttpServletResponse response) throws Exception{
		request.setCharacterEncoding("UTF-8");
		GuidebookVO guideVo = contentService.fileDown(pk);
		//파일이 업로드된 경로
		try {
			String filePath = guideVo.getFilePath();
			filePath += "/";
			String savePath = filePath;
			String fileName = guideVo.getSaveName();
			
			//실제 내보낼 파일명
			String oriName = guideVo.getOriName();
			InputStream in = null;
			OutputStream out = null;
			File file = null;
			boolean skip = false;
			String client = "";
			
			//파일 읽어 스트림에 담기
			try {
				file = new File(savePath, fileName);
				in = new FileInputStream(file);
			} catch (FileNotFoundException fe) {
				skip = true;
			}
			client = request.getHeader("User-Agent");
			
			//파일 다운로드 헤더 지정
			response.reset();
			response.setContentType("application/octet-stream");
			response.setHeader("Content-Description", "JSP Generated Data");

			if(!skip) {
				if (client.indexOf("MSIE") != -1) {
                    response.setHeader("Content-Disposition", "attachment; filename=\""
                            + java.net.URLEncoder.encode(oriName, "UTF-8").replaceAll("\\+", "\\ ") + "\"");
                    // IE 11 이상.
                } else if (client.indexOf("Trident") != -1) {
                    response.setHeader("Content-Disposition", "attachment; filename=\""
                            + java.net.URLEncoder.encode(oriName, "UTF-8").replaceAll("\\+", "\\ ") + "\"");
                } else {
                    // 한글 파일명 처리
                    response.setHeader("Content-Disposition",
                            "attachment; filename=\"" + new String(oriName.getBytes("UTF-8"), "ISO8859_1") + "\"");
                    response.setHeader("Content-Type", "application/octet-stream; charset=utf-8");
                }
                response.setHeader("Content-Length", "" + file.length());
                out = response.getOutputStream();
                byte b[] = new byte[(int) file.length()];
                int leng = 0;
                while ((leng = in.read(b)) > 0) {
                    out.write(b, 0, leng);
                }
            } else {
                response.setContentType("text/html;charset=UTF-8");
                System.out.println("<script language='javascript'>alert('파일을 찾을 수 없습니다');history.back();</script>");
            }
			
		} catch (Exception e) {
			System.out.println("ERROR : "+e.getMessage());
		}
	}
	/***
	 * 
	 *  content/about
	 *  
	 ***/
	/* 인사말 */
	@RequestMapping("/about/about")
	public String goToAbout() {
		return "contents/about/about";
	}
	/* 공지사항 */
	@RequestMapping("/about/notice")
	public String goToNotice(Model model) {
		model.addAttribute("notice", contentService.getNotice());
		return "contents/about/notice";
	}

}
