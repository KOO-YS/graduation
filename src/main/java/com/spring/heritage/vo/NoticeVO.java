package com.spring.heritage.vo;

public class NoticeVO {
	int pk;
	String title;
	String writer;
	String content;
	String regdate;
	int selected;
	
	public int getPk() {
		return pk;
	}
	public void setPk(int pk) {
		this.pk = pk;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	public int getSelected() {
		return selected;
	}
	public void setSelected(int selected) {
		this.selected = selected;
	}
	
	@Override
	public String toString() {
		return "NoticeVO [pk=" + pk + ", title=" + title + ", writer=" + writer + ", content=" + content + ", regdate="
				+ regdate + ", selected=" + selected + "]";
	}
	
	
}
