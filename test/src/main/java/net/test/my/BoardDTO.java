package net.test.my;

import java.text.SimpleDateFormat;

import org.springframework.web.multipart.MultipartFile;

public class BoardDTO {
	private int bnum;
	private String id, title, content ;
	private String img_file_name,oFile;;
	private String wdate2;
	SimpleDateFormat sdf2 = new SimpleDateFormat("YYYY/MM/dd");
	public String getoFile() {
		return oFile;
	}

	public void setoFile(String oFile) {
		this.oFile = oFile;
	}
	public String getWdate2() {
		this.wdate2 = sdf2.format(this.getWdate());
		return wdate2;
	}
	private java.util.Date wdate;
	private int hit;
	private MultipartFile upload_f;
	private int rn, rcnt;
	private int startPage, endPage, start, end;
	private String skey, sval, sqry;
	SimpleDateFormat sdf = new SimpleDateFormat("MM/dd");
	private String wdate1;
	
	public String getWdate1() {
		this.wdate1 = sdf.format(this.getWdate());
		return wdate1;
	}

	public java.util.Date getWdate() {
		return wdate;
	}
	public int getBnum() {
		return bnum;
	}
	public void setBnum(int bnum) {
		this.bnum = bnum;
	}
	public void setWdate(java.util.Date wdate) {
		this.wdate = wdate;
	}

	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
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
	private String returnpage;
	  
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
	public String getReturnpage() {
		return returnpage;
	}
	public void setReturnpage(String returnpage) {
		this.returnpage = returnpage;
	}
	public MultipartFile getUpload_f() {return upload_f;}
	public void setUpload_f(MultipartFile upload_f) {	this.upload_f = upload_f;}
	
	
	public int getStartPage() {return startPage;}
	public void setStartPage(int startPage) {this.startPage = startPage;}
	public int getEndPage() {return endPage;}
	public void setEndPage(int endPage) {this.endPage = endPage;}
	
	public String getTitle() {return title;	}
	public void setTitle(String title) {this.title = title;	}
	public String getContent() {return content;	}
	public void setContent(String content) {this.content = content;	}
	
	public String getImg_file_name() {return img_file_name;	}
	public void setImg_file_name(String img_file_name) {this.img_file_name = img_file_name;	}
	public int getRn() {return rn;	}
	public void setRn(int rn) {	this.rn = rn;}
	public int getRcnt() {return rcnt;	}
	public void setRcnt(int rcnt) {this.rcnt = rcnt;} 
	
}//class END
