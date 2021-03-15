package net.test.my;

import java.io.IOException;import java.text.DateFormat;import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.inject.Inject;
import javax.servlet.ServletContext;
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
import org.springframework.web.bind.annotation.ResponseBody;



/**
 * Handles requests for the application home page.
 */


@Controller
public class HomeController {
	
	@Inject
	@Autowired
	HomeDAO dao;
	
	@Autowired
	private ServletContext  application;
	
	
	
	@RequestMapping(value = "/main.do")
	public String main(Locale locale, Model model) {
	
		
		return "main";
	}
	//회원가입 가기
	@RequestMapping(value = "/join.do")
	
	public String insert() {
	
		return "join";
	}
	//회원가입 하기
	@RequestMapping(value = "/insertjoin.do")
	
	public String insertjoin(HomeDTO dto) {
		
		String phone=dto.getPhone1()+dto.getPhone2()+dto.getPhone3();
		dto.setPhone(phone);
		dao.Insertjoin(dto);
		return "redirect:/main.do";
	}
	
	@RequestMapping(value = "/login.do")
	
	public String login() {
		
		return "Login";
	}
	
	@RequestMapping("/loginprocess.do")
	public String Login(HomeDTO dto, HttpServletResponse response, HttpSession session) throws IOException {
		
		String result=dao.login(dto);
		if(result==null||result=="") {
			System.out.println("로그인실패");
			return "loginfailed";
		}
		else {
		
			session.setAttribute("id", result);
			session.setAttribute("name", dto.getName() );
			System.out.println(session.getAttribute("id")+" getsession");
			
		}
		return "redirect:/main.do";
	}
	
	@RequestMapping("/logout.do")
	public String Logout(HttpSession session,HttpServletResponse response) throws IOException {
		

		 session.invalidate();
		 return "redirect:/main.do";
	}
	
	@RequestMapping("/list.do")//
	public String list(Model model)  {
		
		
		List<HomeDTO> LG=dao.select();
		model.addAttribute("LG", LG);
		return "list";
	}
	
	@RequestMapping("/detail.do")//
	public String detail(@RequestParam("idx") String data, Model model)  {
		HomeDTO dto = dao.detail(data);
		
		model.addAttribute("dto", dto);
		
		return "detail";
	}
	@RequestMapping("/delete.do")//idx값을 id로 받아왔기 때문에 string으로 해야함 int로 했다 오류남
	public String delete(@RequestParam("idx") String data, Model model)  {
		dao.delete(data);

		return "redirect:/list.do";
	}
	
	@RequestMapping("/predit.do")//idx값을 id로 받아왔기 때문에 string으로 해야함 int로 했다 오류남
	public String predit(@RequestParam("idx") String data, Model model)  {
		
		HomeDTO dto =dao.detail(data);
		model.addAttribute("dto", dto);
		return "edit";
	}
	
	@RequestMapping("/edit.do")//idx값을 id로 받아왔기 때문에 string으로 해야함 int로 했다 오류남
	public String edit(HomeDTO dto)  {
		String phone=dto.getPhone1()+dto.getPhone2()+dto.getPhone3();
		dto.setPhone(phone);
		dao.edit(dto);
		return "redirect:/detail.do?idx="+ dto.getId() ;
	}
	
	
	@RequestMapping(value="/idcheckwindow.do", method=RequestMethod.GET)
	public String idCheckWindow(){		
		return "IdCheck";
	}
	
	@RequestMapping(value="/idcheck.do", method=RequestMethod.GET)
	public String idcheck(Model model, @RequestParam("cid") String cid){
		int flag = 0;
		int idCount = dao.idCheck(cid);
		if(idCount>0) {
			flag=0;
			System.out.println(cid+"는 중복");
		}else if(idCount==0) {
			flag = 1;
			System.out.println(cid+" 사용가능");
		}
		model.addAttribute("flag", flag);
		
		return "IdCheck";
	}



}
