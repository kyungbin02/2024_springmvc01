package com.ict.home;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

    // 홈 페이지로 이동
    @GetMapping("/home")
    public String home() {
        return "home";  // home.jsp로 이동
    }

    // 로그인 페이지로 이동
    @GetMapping("/login")
    public String LoginForm() {
        return "loginform2222";  
    }

    @GetMapping("/join")
    public String JoinForm() {
        return "joinform";  
    }
    
    @GetMapping("/m_page")
    public String MyPage() {
        return "mypage";  
    }
    
    // 아이디 찾기 페이지로 이동
    @GetMapping("/find_id")
    public String findIdForm() {
        return "loginf";  
    }

    // 비밀번호 찾기 페이지로 이동
    @GetMapping("/find_password")
    public String findPasswordForm() {
        return "joinf";  // find_password.jsp로 이동

    }
		/*
		 * @GetMapping("/aaa") 
		 * public String index1() { return "index1"; // find_id.jsp로
		 * 이동 }
		 */
    
    // boot 홈페이지
    @RequestMapping("/aaa")
    public String index1() {
    	return "index1" ;
    }
        
   
    
    
    
     // 사업자/ 개인
    @GetMapping("/mini")
    public String miNi() {
        return "mini";  // find_password.jsp로 이동

    }
    // 이용약관
    @GetMapping("/agree")
    public String agree() {
    	return "agree";
    }
    
    // 개인 이용약관
    @GetMapping("/agree2")
    public String agree2() {
    	return "agree2";
    }
    
    
    // 사업자회원가입
    @RequestMapping("/saup")
    public String saUp() {
    	return "saupjoin";
    }
    
    // 로그인 처리 후 리다이렉트
//    @PostMapping("/login")
//    public String login() {
//        // 로그인 처리 로직 (필요 시)
//        return "redirect:/home";  // 로그인 후 홈 페이지로 이동
//    }
    }
