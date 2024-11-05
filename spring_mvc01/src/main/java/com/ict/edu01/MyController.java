package com.ict.edu01;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

///start5 6 7 다 여기다가 받는다
@Controller
public class MyController {
    
	@GetMapping("/start5")
	public ModelAndView test01() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("day01/result5");
		
		mv.addObject("msg", "Hello");
		return mv;
	}
	@GetMapping("/start6")
	public ModelAndView test02(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mv = new ModelAndView("day01/result5");
		
		mv.addObject("msg", "Hi`~~~");
		return mv;
	}
	@GetMapping("/start7")
	public ModelAndView test03(HttpServletRequest request) {
		request.setAttribute("msg", "안녕하세요");
		return new ModelAndView("day01/result5");
		
	}         
	//   순수  jsp로 배운방법
	@GetMapping("/start8")
	public ModelAndView test04(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("day01/result8");
		String username = request.getParameter("username");
		String userage = request.getParameter("userage");
		
		mv.addObject("username", username);
		mv.addObject("userage", userage);
		return mv;
		
	}
}
