package com.ict.sns.controller;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.ict.sns.vo.KakaoVO;


@Controller
public class SnSLoginController {

	@GetMapping("/sns_login")
	public ModelAndView getSpringSnsGo() {
		return new ModelAndView("sns/loginForm");
	}

	@RequestMapping("/kakaologin")
	public ModelAndView kakaologin(HttpServletRequest request) {
		// 1. 인가코드 받기
		String code = request.getParameter("code");
		System.out.println("code : " + code);

		// 2. 토큰받기(인가코드 필요)
		String reqURL = "https://kauth.kakao.com/oauth/token";
		try {
			URL url = new URL(reqURL);
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();

			// POST 요청
			conn.setRequestMethod("POST");
			conn.setDoOutput(true);

			// 헤더 요청
			conn.setRequestProperty("Content-type", "application/x-www-form-urlencoded;charset=utf-8");

			// 본문
			BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(conn.getOutputStream()));
			StringBuffer sb = new StringBuffer();
			sb.append("grant_type=authorization_code");
			sb.append("&client_id=46219c457fde92498ef0e8fd7557a02c");
			sb.append("&redirect_uri=http://localhost:8080/kakaologin");
			sb.append("&code=" + code);
			sb.append("&client_secret=cfI4MPpU8rQJhAFV4ZGQpMAZPauQkaRO");
			bw.write(sb.toString());
			bw.flush();

			// 결과 코드가 200이면 성공
			int responseCode = conn.getResponseCode();
			System.out.println("responseCode : " + responseCode);

			if (responseCode == HttpURLConnection.HTTP_OK) {
				// 토큰 요청 성공 후 결과 받기 (JSON 타입)
				BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
				String line = "";
				StringBuffer sb2 = new StringBuffer();
				while ((line = br.readLine()) != null) {
					sb2.append(line);
				}
				String result = sb2.toString();
				System.out.println(result);

				// 사용자 정보를 다른 컨트롤러에서 받기 위해 session에 저장
				Gson gson = new Gson();
				KakaoVO kavo = gson.fromJson(result, KakaoVO.class);

				System.out.println(kavo.getAccess_token());
				System.out.println(kavo.getRefresh_token());
				System.out.println(kavo.getScope());
				System.out.println(kavo.getToken_type());

				request.getSession().setAttribute("kavo", kavo);

				return new ModelAndView("sns/result01");
			} else {
				// 오류 메시지 출력
				BufferedReader br = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
				String line = "";
				StringBuffer sbError = new StringBuffer();
				while ((line = br.readLine()) != null) {
					sbError.append(line);
				}
				System.out.println("Error response: " + sbError.toString());
				return new ModelAndView("sns/error");
			}
		} catch (Exception e) {
			System.out.println(e);
			return new ModelAndView("sns/error");
		}

	}

	@GetMapping("/kakaologout")
	public ModelAndView kakaoLogout(HttpServletRequest request) {
		request.getSession().invalidate();
		return new ModelAndView("sns/loginForm");
	}


	@GetMapping("/daum_addr")
	public ModelAndView daumAddr() {
		return new ModelAndView("sns/loginForm");
	}
	
	@GetMapping("/daum_addr_Form")
	public ModelAndView daumAddrForm() {
		return new ModelAndView("sns/addrForm");
	}
	
	
	
	
	
}












