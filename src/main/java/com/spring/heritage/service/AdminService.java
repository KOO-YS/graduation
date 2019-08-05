package com.spring.heritage.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.heritage.dao.AdminDao;
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
}
