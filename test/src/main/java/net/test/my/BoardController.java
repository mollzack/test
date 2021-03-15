package net.test.my;

import java.io.File;import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.DateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Locale;

import javax.inject.Inject;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import net.test.my.BoardDAO;
import net.test.my.BoardDTO;







/**
 * Handles requests for the application home page.
 */


@Controller
public class BoardController {
	
	@Inject
	@Autowired
	BoardDAO dao;
	
	@Autowired
	private ServletContext  application;
	
	
	
	@RequestMapping(value = "/board.do")
	public String board(Locale locale, Model model) {
	
		
		return "boardWrite";
	}
	
	@RequestMapping("/boardInsert.do")
	public String board_insert(BoardDTO dto) {  
	  String path=application.getRealPath("/resources/upload");
	  String img=dto.getUpload_f().getOriginalFilename();
	  File file = new File(path, img);
	  
	  try{ dto.getUpload_f().transferTo(file); }
	  catch(Exception ex){  }  
	  dto.setImg_file_name(img); 
	  dao.dbInsert(dto); 
	  System.out.println(path);
	  return "redirect:/boardList.do";
	  }
	
	
	@RequestMapping("/boardList.do")
		public String board_select(HttpServletRequest request, Model model) {
		   

			
			
			String pnum;
			int pageNUM, pagecount;
			int start, end;
			int startpage, endpage;
			int temp;
			String sqry = "";
			String skey = "", sval = "";
			String returnpage = "";
			
			pnum=request.getParameter("pageNum");
			if(pnum==""|| pnum==null) {
				pnum="1";
			}
			
			pageNUM=Integer.parseInt(pnum);
			
			skey=request.getParameter("keyfield"); 
			sval=request.getParameter("keyword"); 
				
			if(skey == null ||  skey == "" || sval==null || sval==""){
				skey=" title "; 
				sval="";
		}
		
		
		returnpage="&keyfield="+skey+"&keyword="+sval;
		
			int Atotal = dao.dbCount();
			int Gtotal = dao.dbCount1(skey,sval);
			start=(pageNUM-1)*10+1;
			end=pageNUM*10;
			
			//총페이지 pagecount
			if(Gtotal%10==0) {pagecount= Gtotal/10;}
			else {pagecount= (Gtotal/10)+1;}
			
			temp= (pageNUM-1)%10;
			startpage= pageNUM-temp;
			endpage= startpage+9;
			if(endpage>pagecount) {
				endpage=pagecount;
			}
			
			List<BoardDTO> LG=dao.dbSelect(start,end,skey,sval);
			
			model.addAttribute("Gtotal", Gtotal);
			model.addAttribute("Atotal", Atotal);
			model.addAttribute("returnpage", returnpage);
			model.addAttribute("startpage", startpage);
			model.addAttribute("endpage", endpage);
			model.addAttribute("pagecount", pagecount);
			model.addAttribute("pageNUM", pageNUM);
			model.addAttribute("skey", skey);
			model.addAttribute("sval", sval);
			model.addAttribute("LG", LG);
			
		    return "boardList"; 
		}//end
	
	@RequestMapping("/boardDetail.do")
	public String boardDetail(@RequestParam("idx") int data, Model model) {
		BoardDTO dto=dao.dbDetail(data);
		dao.dbhit(data);
		model.addAttribute("dto", dto);
		return "boardDetail";
	}
	
	@RequestMapping("/boardDelete.do")
	public String boardDelete(@RequestParam("idx") int data) {
		dao.dbdelete(data);
		
		return "redirect:/boardList.do";
	}
	
	@RequestMapping("/boardpreEdit.do")
	public String boardpreEdit(@RequestParam("idx") int data, Model model) {
		BoardDTO dto=dao.dbDetail(data);
		model.addAttribute("dto", dto);
		return "boardEdit";
	}
	
	@RequestMapping("/boardEdit.do")
	public String boardEdit(BoardDTO dto) {  
		
		  String path=application.getRealPath("/resources/upload"); 
		  String img=dto.getUpload_f().getOriginalFilename(); 
		  File file = new File(path, img);
		 
		  if(img==null || img=="") {
			  dto.setImg_file_name(dto.getoFile());
		  }else {
		 try{
		  dto.getUpload_f().transferTo(file);
		  }catch(Exception ex){ }
		  dto.setImg_file_name(img);
		  		  
		  }
		  dao.dbedit(dto);
		  return "redirect:/boardList.do";
	}
	//다운로드
	@RequestMapping("/bdownload.do")
	public String board_download(@RequestParam("bname") String fname,@RequestParam("idx") int idx, HttpServletResponse response ) {
		
		 String path=application.getRealPath("/resources/upload");
		
		  File file = new File(path, fname);;
		  response.setHeader("Content-Disposition","attachment;filename="+fname);
		  try{
			   Date dt = new Date( );
			   Calendar cc = new GregorianCalendar( );
			   //추상메소드가 있으면 추상클래스/인터페이스 
			   //File file = new File( path, data) ;
			   InputStream is = new FileInputStream(file) ;
			   OutputStream os = response.getOutputStream();
			   
			   //표준데이터타입=primitiveType  byte,int,double,boolean,char,long
			   byte[] bt = new byte[(int)file.length()] ; //byte타입은 1바이트타입
			   is.read(bt,0,bt.length);
			   os.write(bt); 
			   
			   is.close();
			   os.close();
			}catch(Exception e){ }
		  return "redirect:/boardDetail.do?idx="+idx;
	}
}
