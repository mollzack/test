package net.test.my;

import java.io.File;
import java.io.FileInputStream;
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
public class ImageController {
	
	@Inject
	@Autowired
	ImageDAO dao;
	
	@Autowired
	private ServletContext  application;
	
	
	
	@RequestMapping(value = "/image.do")
	public String image(Locale locale, Model model) {
	
		
		return "imageWrite";
	}
	
	@RequestMapping(value = "/imageWrite.do")
	public String imageWrite(ImageDTO dto) {
		String path=application.getRealPath("/resources/upload");
		  String img=dto.getUpload_f().getOriginalFilename();
		  String img2=dto.getUpload_f2().getOriginalFilename();
		  String img3=dto.getUpload_f3().getOriginalFilename();
		  String img4=dto.getUpload_f4().getOriginalFilename();
		  
		  File file = new File(path, img);
		  File file2 = new File(path, img2);
		  File file3 = new File(path, img3);
		  File file4 = new File(path, img4);
		
		  
		  try{ dto.getUpload_f().transferTo(file); 
		  dto.getUpload_f2().transferTo(file2);
		  dto.getUpload_f3().transferTo(file3);
		  dto.getUpload_f4().transferTo(file4);
		  }
		  catch(Exception ex){  }  
		  dto.setImg_file_name(img); 
		  dto.setImg_file_name2(img2); 
		  dto.setImg_file_name3(img3); 
		  dto.setImg_file_name4(img4);
		  System.out.println(path);
		  dao.imageinsert(dto); 
		
		return "redirect:/main.do";
	}
	
	@RequestMapping("/imageList.do")
	public String imageList(HttpServletRequest request, Model model) {
	   

		
		
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
		
		List<ImageDTO> LG=dao.dbSelect(start,end,skey,sval);
		
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
		
	    return "imageList"; 
	}//end
	
	@RequestMapping(value = "/imageDetail.do")
	public String imageDetail(Model model, @RequestParam("idx") int data) {
		
		ImageDTO dto=dao.imagedetail(data);
		model.addAttribute("dto", dto);
		return "imageDetail";
	}
	
	@RequestMapping(value = "/imageDelete.do")
	public String imageDelete( @RequestParam("idx") int data) {
		
		dao.imagedelete(data);
	
		return "redirect:/imageList.do";
	}
	//다운로드
	
}
