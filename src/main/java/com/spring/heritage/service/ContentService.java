package com.spring.heritage.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.heritage.dao.ContentDao;
import com.spring.heritage.vo.GuidebookVO;
import com.spring.heritage.vo.NoticeVO;

@Service
public class ContentService {
	
	@Autowired
	ContentDao contentDao;

	public List<NoticeVO> getNotice() {
		return contentDao.getNotice();
	}

	public List<GuidebookVO> getBrochure() {
		return contentDao.getBrochure();
	}

	public GuidebookVO fileDown(int pk) {		
		return contentDao.fileDown(pk);
	}
	
	
}
