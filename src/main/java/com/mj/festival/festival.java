package com.mj.festival;

public class festival {
	private String codeName;
	private String guName;
	private String title;
	private String date;
	private String place;
	private String orgLink;
	private String mainImg;
	private String useTarget;
	private String useFee;
	
	public festival() {
		// TODO Auto-generated constructor stub
	}

	public festival(String codeName, String guName, String title, String date, String place, String orgLink,
			String mainImg, String useTarget, String useFee) {
		super();
		this.codeName = codeName;
		this.guName = guName;
		this.title = title;
		this.date = date;
		this.place = place;
		this.orgLink = orgLink;
		this.mainImg = mainImg;
		this.useTarget = useTarget;
		this.useFee = useFee;
	}

	public String getCodeName() {
		return codeName;
	}

	public void setCodeName(String codeName) {
		this.codeName = codeName;
	}

	public String getGuName() {
		return guName;
	}

	public void setGuName(String guName) {
		this.guName = guName;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getPlace() {
		return place;
	}

	public void setPlace(String place) {
		this.place = place;
	}

	public String getOrgLink() {
		return orgLink;
	}

	public void setOrgLink(String orgLink) {
		this.orgLink = orgLink;
	}

	public String getMainImg() {
		return mainImg;
	}

	public void setMainImg(String mainImg) {
		this.mainImg = mainImg;
	}

	public String getUseTarget() {
		return useTarget;
	}

	public void setUseTarget(String useTarget) {
		this.useTarget = useTarget;
	}

	public String getUseFee() {
		return useFee;
	}

	public void setUseFee(String useFee) {
		this.useFee = useFee;
	}
	
	
	
}
