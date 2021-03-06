package com.spring.heritage.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.spring.heritage.vo.CoordVO;
import com.spring.heritage.vo.GuidebookVO;
import com.spring.heritage.vo.HistoryVO;
import com.spring.heritage.vo.NoticeImgVO;
import com.spring.heritage.vo.NoticeVO;

@Mapper
public interface AdminDao {

	int insertNotice(NoticeVO noticeVo);

	int insertNoticeImg(NoticeImgVO imgVo);

	List<NoticeVO> noticeList();

	int updateMap(CoordVO coordVo);

	CoordVO getCoord();

	int insertBrochure(GuidebookVO guideVo);

	List<GuidebookVO> getBrochure();

	NoticeVO getNoticeDetail(int pk);

	NoticeImgVO getNoticeImg(int pk);

	int setAllNotice();

	void selectNotice(int pk);

	void insertHistory(HistoryVO historyVo);

	List<HistoryVO> historyList();

	void deleteHistory(int year);

}
