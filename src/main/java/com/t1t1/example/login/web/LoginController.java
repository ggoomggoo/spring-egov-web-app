package com.t1t1.example.login.web;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.t1t1.example.login.service.LoginService;

@Controller
@RequestMapping("/login")
public class LoginController {
	
	private static final org.slf4j.Logger log = org.slf4j.LoggerFactory.getLogger(LoginController.class);
	
	@Resource(name = "loginService")
	private LoginService loginService;
	
	@RequestMapping(method = RequestMethod.GET)
	public String loginGet(HttpServletRequest req, HttpServletResponse resp, @RequestParam HashMap<String, Object> paramMap) throws Exception {
		return "/login/loginForm";
	}
	
	@RequestMapping(method = RequestMethod.POST)
	public String loginPost(HttpServletRequest req, HttpServletResponse resp, @RequestParam HashMap<String, Object> paramMap) throws Exception {
		Map<String, Object> user = loginService.loginUser(paramMap);
		if (user != null) {
			req.getSession().setAttribute("login", user);
		}
		// TODO redirect; 로그인 실패 시 메시지 어떻게 노출?
		return "redirect:/home";
	}
	
	// TODO URL 정리 필요; login/logout; 이상함;
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpServletRequest req, HttpServletResponse resp, @RequestParam HashMap<String, Object> paramMap) throws Exception {
		try {
			req.getSession().invalidate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:/home";
	}

}
