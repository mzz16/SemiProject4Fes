package com.yj.main;

import java.util.Date;

public class Board {

	private int no;
	private String cate;
	private String title;
	private String name;
	private String txt;
	private String fName;
	private Date date;

	public Board() {
		// TODO Auto-generated constructor stub
	}

	public Board(int no, String cate, String title, String name, String txt, String fName, Date date) {
		super();
		this.no = no;
		this.cate = cate;
		this.title = title;
		this.name = name;
		this.txt = txt;
		this.fName = fName;
		this.date = date;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getCate() {
		return cate;
	}

	public void setCate(String cate) {
		this.cate = cate;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTxt() {
		return txt;
	}

	public void setTxt(String txt) {
		this.txt = txt;
	}

	public String getfName() {
		return fName;
	}

	public void setfName(String fName) {
		this.fName = fName;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

}
