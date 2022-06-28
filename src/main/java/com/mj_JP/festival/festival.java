package com.mj_JP.festival;

public class festival {
	private int no;
	private String codeName;
	private String guName;
	private String title;
	private String fdate;
	private String place;
	private String program;
	private String orgLink;
	private String mainImg;
	private String useTarget;
	private String useFee;
	
	public festival() {
		// TODO Auto-generated constructor stub
	}

	public festival(int no, String codeName, String guName, String title, String fdate, String place, String program,
			String orgLink, String mainImg, String useTarget, String useFee) {
		super();
		this.no = no;
		this.codeName = codeName;
		this.guName = guName;
		this.title = title;
		this.fdate = fdate;
		this.place = place;
		this.program = program;
		this.orgLink = orgLink;
		this.mainImg = mainImg;
		this.useTarget = useTarget;
		this.useFee = useFee;
	}
	
	public void showFestival()
	{
		System.out.println(no);
		System.out.println(codeName);
		System.out.println(guName);
		System.out.println(title);
		System.out.println(fdate);
		System.out.println();
		System.out.println();
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
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

	public String getFdate() {
		return fdate;
	}

	public void setFdate(String fdate) {
		this.fdate = fdate;
	}

	public String getPlace() {
		return place;
	}

	public void setPlace(String place) {
		this.place = place;
	}

	public String getProgram() {
		return program;
	}

	public void setProgram(String program) {
		this.program = program;
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
