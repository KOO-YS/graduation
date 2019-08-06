package com.spring.heritage.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.spring.heritage.vo.NoticeImgVO;
import com.spring.heritage.vo.NoticeVO;

@Mapper
public interface AdminDao {

	int insertNotice(NoticeVO noticeVo);

	int insertNoticeImg(NoticeImgVO imgVo);

	List<NoticeVO> noticeList();

}
