package com.spring.heritage.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.spring.heritage.vo.CoordVO;
import com.spring.heritage.vo.GuidebookVO;
import com.spring.heritage.vo.HistoryVO;
import com.spring.heritage.vo.NoticeImgVO;
import com.spring.heritage.vo.NoticeVO;

@Mapper
public interface ContentDao {

	List<NoticeVO> getNotice();

	List<GuidebookVO> getBrochure();

	GuidebookVO fileDown(int pk);

	NoticeVO getNoticeDetail(int pk);

	NoticeImgVO getNoticeImg(int pk);

	CoordVO getCoord();

	NoticeVO getSelected();

	NoticeImgVO getSelectedImg();

	List<HistoryVO> historyList();
}
