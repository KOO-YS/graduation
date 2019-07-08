package com.spring.heritage.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.heritage.dao.ContentDao;

@Service
public class ContentService {
	
	@Autowired
	ContentDao contentDao;
	
	
}
