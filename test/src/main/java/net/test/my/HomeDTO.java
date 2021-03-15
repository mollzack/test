package net.test.my;

import java.text.SimpleDateFormat;

import org.springframework.web.multipart.MultipartFile;

public class HomeDTO {
	private String id,pass,pass2,name,gender;
	
	private MultipartFile upload_f;
	private String wdate1;
	private String wdate2;
	private java.util.Date wdate;
	private String phone;
	private String phone1, phone2, phone3;
	private int rn;
	public int getStartPage() {
		return startPage;
	}
	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}
	public int getEndPage() {
		return endPage;
	}
	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}
	public int getStart() {
		return start;
	}
	public void setStart(int start) {
		this.start = start;
	}
	public int getEnd() {
		return end;
	}
	public void setEnd(int end) {
		this.end = end;
	}
	public String getSkey() {
		return skey;
	}
	public void setSkey(String skey) {
		this.skey = skey;
	}
	public String getSval() {
		return sval;
	}
	public void setSval(String sval) {
		this.sval = sval;
	}
	public String getSqry() {
		return sqry;
	}
	public void setSqry(String sqry) {
		this.sqry = sqry;
	}
	private int startPage, endPage, start, end;
	private String skey, sval, sqry;
	
	SimpleDateFormat sdf = new SimpleDateFormat("MM/dd");
	public int getRn() {
		return rn;
	}
	public void setRn(int rn) {
		this.rn = rn;
	}
	SimpleDateFormat sdf2 = new SimpleDateFormat("YYYY/MM/dd");
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getPass2() {
		return pass2;
	}
	public void setPass2(String pass2) {
		this.pass2 = pass2;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getWdate1() {
		this.wdate1 = sdf.format(getWdate());
		return wdate1;
	}
	public void setWdate1(String wdate1) {
		this.wdate1 = wdate1;
	}
	public String getWdate2() {
		return wdate2;
	}
	public void setWdate2(String wdate2) {
		this.wdate2 = wdate2;
	}
	public java.util.Date getWdate() {
		return wdate;
	}
	public void setWdate(java.util.Date wdate) {
		this.wdate = wdate;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getPhone1() {
		return phone1;
	}
	public void setPhone1(String phone1) {
		this.phone1 = phone1;
	}
	public String getPhone2() {
		return phone2;
	}
	public void setPhone2(String phone2) {
		this.phone2 = phone2;
	}
	public String getPhone3() {
		return phone3;
	}
	public void setPhone3(String phone3) {
		this.phone3 = phone3;
	}
	

	

	
	
}//class END
