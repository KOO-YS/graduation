package com.spring.heritage.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.heritage.dao.AdminDao;
import com.spring.heritage.vo.CoordVO;
import com.spring.heritage.vo.GuidebookVO;
import com.spring.heritage.vo.NoticeImgVO;
import com.spring.heritage.vo.NoticeVO;

@Service
public class AdminService {
	@Autowired
	AdminDao adminDao;

	public String insertNotice(NoticeVO noticeVo) {
		int success = 0;
		String msg = "공지사항 추가 실패";
		success = adminDao.insertNotice(noticeVo);
		if(success>0) {
			msg = "공지사항 추가 성공";
		}
		return msg;
	}

	public String insertNoticeImg(NoticeImgVO imgVo) {
		int success = 0;
		String msg = "이미지 추가";
		success = adminDao.insertNoticeImg(imgVo);
		if(success>0) {
			msg = "공지사항 이미지 추가 성공";
		}
		return msg;
	}

	public List<NoticeVO> noticeList() {
		return adminDao.noticeList();
	}

	public String updateMap(CoordVO coordVo) {
		int success = 0;
		String msg ="좌표값 변경 실패";
		success = adminDao.updateMap(coordVo);
		if(success>0) {
			msg = "좌표값 변경";
		}
		return msg;
	}

	public CoordVO getCoord() {
		return adminDao.getCoord();
	}

	public String insertBrochure(GuidebookVO guideVo) {
		int success = 0;
		String msg = "브로셔 등록 실패";
		success = adminDao.insertBrochure(guideVo);
		if(success>0) {
			msg = "브로셔 등록 성공";
		}
		return msg;
	}

	public List<GuidebookVO> getBrochure() {
		return adminDao.getBrochure();
	}
}
