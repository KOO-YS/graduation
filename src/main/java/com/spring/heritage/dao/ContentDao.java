package com.spring.heritage.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.spring.heritage.vo.GuidebookVO;
import com.spring.heritage.vo.NoticeVO;

@Mapper
public interface ContentDao {

	List<NoticeVO> getNotice();

	List<GuidebookVO> getBrochure();

	GuidebookVO fileDown(int pk);
	
}
