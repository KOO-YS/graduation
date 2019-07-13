package com.spring.heritage.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.heritage.dao.AdminDao;

@Service
public class AdminService {
	@Autowired
	AdminDao adminDao;
}
