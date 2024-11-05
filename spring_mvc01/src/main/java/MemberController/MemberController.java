package MemberController;


import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.PostMapping;

import org.springframework.web.servlet.ModelAndView;

@Controller
public class MemberController {

		
		//회원가입 페이지 이동
		@PostMapping("/join")
		public ModelAndView joinGET() {
			return new ModelAndView("member/join");					
		}
		
		//로그인 페이지 이동
		@PostMapping("/login")
		public ModelAndView loginGET() {
			
			return new ModelAndView("/login");		
			
		}
		
	
}
